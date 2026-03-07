import type { APIRoute } from 'astro';

export const GET: APIRoute = async ({ locals }) => {
  try {
    const db = locals.runtime.env.STORE_DB;
    const sanitizedEmail = locals.userEmail.toLowerCase().trim();

    const result = await db
      .prepare('SELECT * FROM orders WHERE employee_email = ? ORDER BY created_at DESC')
      .bind(sanitizedEmail)
      .all();

    return new Response(JSON.stringify({ success: true, orders: result.results }), {
      headers: { 'Content-Type': 'application/json' },
    });
  } catch (err) {
    console.error('List orders error:', err);
    return new Response(JSON.stringify({ success: false, error: 'Internal server error' }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
};
