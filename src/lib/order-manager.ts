/**
 * Who is this employee's manager, for an order?
 *
 * The `managers` table is synced nightly from Microsoft Graph (the Hub's
 * sync-managers cron), so it only knows employees with an Entra account.
 * Employees who sign in with a personal email (gmail, icloud, ...) never get a
 * row there, but HR records their manager on the store profile. Before this
 * fallback those orders were saved with no manager, so the manager missed the
 * order and status emails and the signed payroll form.
 *
 * Order: Graph-synced `managers` row first (current Entra truth), then the
 * profile's manager_email / manager_name. A manager equal to the employee is
 * treated as missing (bad profile data, not a real manager).
 */

export interface OrderManager {
  name: string | null;
  email: string;
}

/** STORE_DB. Typed structurally because this repo declares no D1 types. */
type StoreDb = { prepare: (sql: string) => any };

const clean = (v: unknown): string => (typeof v === 'string' ? v.trim() : '');

export async function resolveOrderManager(db: StoreDb, employeeEmail: string): Promise<OrderManager | null> {
  const email = employeeEmail.toLowerCase().trim();
  if (!email) return null;

  const synced = await db
    .prepare('SELECT manager_name, manager_email FROM managers WHERE employee_email = ?')
    .bind(email)
    .first() as { manager_name: string | null; manager_email: string | null } | null;

  const profile = synced?.manager_email
    ? null
    : await db
        .prepare('SELECT manager_name, manager_email FROM profiles WHERE lower(email) = ? LIMIT 1')
        .bind(email)
        .first() as { manager_name: string | null; manager_email: string | null } | null;

  const row = synced?.manager_email ? synced : profile;
  const managerEmail = clean(row?.manager_email).toLowerCase().slice(0, 254);
  if (!managerEmail || managerEmail === email) return null;

  return { name: clean(row?.manager_name).slice(0, 200) || null, email: managerEmail };
}
