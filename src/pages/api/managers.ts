import type { APIRoute } from 'astro';

export const GET: APIRoute = async ({ locals }) => {
  try {
    const db = locals.runtime.env.STORE_DB;
    const email = (locals as any).userEmail?.toLowerCase().trim();

    if (!email) {
      return new Response(JSON.stringify({ manager: null }), {
        status: 200,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    const row = await db
      .prepare('SELECT manager_name, manager_email FROM managers WHERE employee_email = ?')
      .bind(email)
      .first() as { manager_name: string; manager_email: string } | null;

    return new Response(JSON.stringify({ manager: row ?? null }), {
      status: 200,
      headers: { 'Content-Type': 'application/json' },
    });
  } catch (err) {
    console.error('GET /api/managers error:', err);
    return new Response(JSON.stringify({ manager: null }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
};
