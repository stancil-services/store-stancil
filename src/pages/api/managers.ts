import type { APIRoute } from 'astro';
import { resolveOrderManager } from '../../lib/order-manager';

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

    // Same lookup checkout uses, so the page shows the manager the order will get.
    const m = await resolveOrderManager(db, email);
    const manager = m ? { manager_name: m.name ?? m.email, manager_email: m.email } : null;

    return new Response(JSON.stringify({ manager }), {
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
