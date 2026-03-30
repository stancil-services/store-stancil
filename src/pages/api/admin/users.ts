import type { APIRoute } from 'astro';

export const GET: APIRoute = async ({ url, locals }) => {
  try {
    const db = locals.runtime.env.STORE_DB;
    const sanitizedEmail = locals.userEmail.toLowerCase().trim();

    const caller = await db.prepare('SELECT role FROM profiles WHERE email = ?').bind(sanitizedEmail).first() as { role: string } | null;
    if (!caller || caller.role !== 'admin') {
      return new Response(JSON.stringify({ error: 'Forbidden' }), { status: 403, headers: { 'Content-Type': 'application/json' } });
    }

    const search = url.searchParams.get('q') || '';
    let query: string;
    let params: string[];

    if (search) {
      query = `SELECT id, email, display_name, first_name, last_name, role, primary_location, yearly_credit
               FROM profiles
               WHERE email LIKE ? OR display_name LIKE ? OR first_name LIKE ? OR last_name LIKE ?
               ORDER BY display_name, email
               LIMIT 50`;
      const term = `%${search}%`;
      params = [term, term, term, term];
    } else {
      query = `SELECT id, email, display_name, first_name, last_name, role, primary_location, yearly_credit
               FROM profiles ORDER BY display_name, email LIMIT 50`;
      params = [];
    }

    const result = params.length
      ? await db.prepare(query).bind(...params).all()
      : await db.prepare(query).all();

    return new Response(JSON.stringify({ users: result.results }), {
      headers: { 'Content-Type': 'application/json' },
    });
  } catch (err) {
    console.error('Admin users error:', err);
    return new Response(JSON.stringify({ error: 'Internal server error' }), {
      status: 500, headers: { 'Content-Type': 'application/json' },
    });
  }
};

export const PATCH: APIRoute = async ({ request, locals }) => {
  try {
    const db = locals.runtime.env.STORE_DB;
    const sanitizedEmail = locals.userEmail.toLowerCase().trim();

    const caller = await db.prepare('SELECT role FROM profiles WHERE email = ?').bind(sanitizedEmail).first() as { role: string } | null;
    if (!caller || caller.role !== 'admin') {
      return new Response(JSON.stringify({ error: 'Forbidden' }), { status: 403, headers: { 'Content-Type': 'application/json' } });
    }

    const { userId, role } = (await request.json()) as { userId: string; role: string };
    const validRoles = ['employee', 'admin'];
    if (!validRoles.includes(role)) {
      return new Response(JSON.stringify({ error: `Invalid role. Must be: ${validRoles.join(', ')}` }), {
        status: 400, headers: { 'Content-Type': 'application/json' },
      });
    }

    await db.prepare('UPDATE profiles SET role = ? WHERE id = ?').bind(role, userId).run();
    const updated = await db.prepare('SELECT id, email, display_name, role FROM profiles WHERE id = ?').bind(userId).first();

    return new Response(JSON.stringify({ success: true, user: updated }), {
      headers: { 'Content-Type': 'application/json' },
    });
  } catch (err) {
    console.error('Admin users patch error:', err);
    return new Response(JSON.stringify({ error: 'Internal server error' }), {
      status: 500, headers: { 'Content-Type': 'application/json' },
    });
  }
};
