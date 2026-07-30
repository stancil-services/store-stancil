import type { APIRoute } from 'astro';
import { createSessionToken, setSessionCookieHeader } from '../../../lib/session';

export const POST: APIRoute = async ({ request, url, locals }) => {
  const env = locals.runtime.env as any;
  const db = env.STORE_DB;

  const { email, code, redirect } = (await request.json()) as { email: string; code: string; redirect?: string };
  const normalizedEmail = email.toLowerCase().trim();

  // Find valid code
  const match = await db.prepare(
    `SELECT id FROM otp_codes
     WHERE email = ? AND code = ? AND used = 0 AND expires_at > datetime('now')
     LIMIT 1`
  ).bind(normalizedEmail, code).first();

  if (!match) {
    return new Response(JSON.stringify({ error: 'Invalid or expired code' }), {
      status: 401,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  // Mark as used
  await db.prepare('UPDATE otp_codes SET used = 1 WHERE id = ?').bind(match.id).run();

  // Check if profile exists (case-insensitive, matching otp-send) and is active
  const profile = await db.prepare('SELECT id, archived FROM profiles WHERE LOWER(email) = ?').bind(normalizedEmail).first() as { id: string; archived: number } | null;

  if (profile && profile.archived) {
    return new Response(JSON.stringify({ error: 'This account has been deactivated. Contact HR if you believe this is an error.' }), {
      status: 403,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  if (profile) {
    // Existing user — create session
    const token = await createSessionToken(normalizedEmail, env.SESSION_SECRET);
    const isSecure = url.protocol === 'https:';
    const headers = new Headers({
      'Content-Type': 'application/json',
      'Set-Cookie': setSessionCookieHeader(token, isSecure),
    });
    return new Response(JSON.stringify({ success: true, redirect: redirect || '/' }), { headers });
  }

  // Guest self-registration is disabled — accounts are created by an admin only.
  // An OTP for an email with no profile must never mint an account; route them to
  // the request-access flow instead. (otp-send already blocks unknown emails; this
  // is defense-in-depth for any stale code.)
  return new Response(
    JSON.stringify({ error: 'No store account found for this email. Please request access.' }),
    { status: 403, headers: { 'Content-Type': 'application/json' } },
  );
};
