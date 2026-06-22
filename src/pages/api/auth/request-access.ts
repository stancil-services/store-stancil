import type { APIRoute } from 'astro';
import { sendEmail, type GraphEnv } from '../../../lib/email';

// Guests can't self-register anymore — they request access and HR creates the
// account via the Hub Add-Employee form. This endpoint emails that request to HR.
const HR_RECIPIENT = 'hr@stancilservices.com';
const ADD_EMPLOYEE_URL = 'https://thestancilway.com/hub/store/employees/new/';

const esc = (s: string) =>
  s.replace(/[&<>"]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c] as string));

export const POST: APIRoute = async ({ request, locals }) => {
  const env = locals.runtime.env as any;
  const db = env.STORE_DB;

  let body: { first_name?: string; last_name?: string; email?: string };
  try {
    body = (await request.json()) as typeof body;
  } catch {
    body = {};
  }

  const firstName = String(body.first_name || '').trim().slice(0, 200);
  const lastName = String(body.last_name || '').trim().slice(0, 200);
  const email = String(body.email || '').trim().toLowerCase().slice(0, 200);

  if (!firstName || !lastName || !email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    return new Response(JSON.stringify({ error: 'First name, last name, and a valid email are required.' }), {
      status: 400,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  // Already have an account? No request needed — tell the UI to send them back to sign in.
  const existing = await db.prepare('SELECT id FROM profiles WHERE LOWER(email) = ?').bind(email).first();
  if (existing) {
    return new Response(JSON.stringify({ success: true, alreadyExists: true }), {
      headers: { 'Content-Type': 'application/json' },
    });
  }

  const graphEnv = env as GraphEnv;
  if (!graphEnv.GRAPH_TENANT_ID || !graphEnv.GRAPH_CLIENT_ID || !graphEnv.GRAPH_CLIENT_SECRET) {
    return new Response(JSON.stringify({ error: 'Email is not configured. Please contact HR directly.' }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  const fullName = `${firstName} ${lastName}`;
  const html = `<!DOCTYPE html>
<html><body style="margin:0;padding:0;background:#f3f4f6;font-family:Arial,sans-serif;">
<table width="100%" cellpadding="0" cellspacing="0" style="background:#f3f4f6;padding:32px 16px;">
<tr><td align="center">
<table width="600" cellpadding="0" cellspacing="0" style="max-width:600px;width:100%;">
  <tr><td style="background:#0f2b5b;padding:24px 32px;border-radius:12px 12px 0 0;">
    <p style="margin:0;color:#fff;font-size:20px;font-weight:bold;">Stancil Services Store</p>
  </td></tr>
  <tr><td style="background:#fff;padding:32px;border-radius:0 0 12px 12px;">
    <h2 style="margin:0 0 8px;font-size:22px;color:#0f2b5b;">Store access request</h2>
    <p style="margin:0 0 20px;font-size:15px;color:#374151;">Someone requested a Stancil Store account. Review and, if approved, create it from the Add Employee page.</p>
    <table cellpadding="0" cellspacing="0" style="width:100%;font-size:15px;color:#111827;margin:0 0 24px;">
      <tr><td style="padding:6px 0;color:#6b7280;width:120px;">First name</td><td style="padding:6px 0;font-weight:600;">${esc(firstName)}</td></tr>
      <tr><td style="padding:6px 0;color:#6b7280;">Last name</td><td style="padding:6px 0;font-weight:600;">${esc(lastName)}</td></tr>
      <tr><td style="padding:6px 0;color:#6b7280;">Email</td><td style="padding:6px 0;font-weight:600;">${esc(email)}</td></tr>
    </table>
    <a href="${ADD_EMPLOYEE_URL}" style="display:inline-block;background:#2563eb;color:#fff;font-size:15px;font-weight:600;text-decoration:none;padding:12px 24px;border-radius:8px;">Add this employee</a>
    <p style="margin:20px 0 0;font-size:13px;color:#9ca3af;">New accounts start with $0 credit. Mark them credit-eligible only if appropriate.</p>
  </td></tr>
</table>
</td></tr></table>
</body></html>`;

  const result = await sendEmail(graphEnv, {
    to: HR_RECIPIENT,
    subject: `Store access request — ${fullName}`,
    html,
  });

  if (!result.success) {
    console.error('request-access email failed:', result.error);
    return new Response(JSON.stringify({ error: 'Could not send your request. Please contact HR directly.' }), {
      status: 502,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  return new Response(JSON.stringify({ success: true }), {
    headers: { 'Content-Type': 'application/json' },
  });
};
