-- Backfill manager_selected_email / manager_selected_name on October 2026 orders
-- that were saved with no manager.
--
-- Cause: /api/managers only read the Graph-synced `managers` table, which has no
-- rows for employees who sign in with a personal email, so checkout saved those
-- orders with a blank manager. Checkout now resolves the manager server-side
-- (src/lib/order-manager.ts); this applies the same rule to the orders already
-- written:
--   1. the `managers` row for the employee, else
--   2. the profile's manager_email / manager_name,
--   skipping a manager equal to the employee and leaving blanks blank.
--
-- Uses TODAY'S manager, not the manager on the order date.
-- Only touches rows whose manager is still blank, so re-running is a no-op.
-- Sends no email. Open orders will copy the manager on their next status change.
--
-- Previewed 2026-10-30: 24 orders filled; 459, 471, 472, 473 (no manager on file)
-- and 468 (profile manager is the employee's own address) are left for HR.
-- To cover earlier months, change the created_at bound.

UPDATE orders
SET manager_selected_email = r.mgr_email,
    manager_selected_name  = nullif(r.mgr_name, '')
FROM (
  SELECT o.id,
         lower(trim(o.employee_email)) AS emp,
         CASE WHEN nullif(trim(m.manager_email), '') IS NOT NULL
              THEN lower(trim(m.manager_email))
              ELSE lower(trim((SELECT p.manager_email FROM profiles p WHERE lower(p.email) = lower(trim(o.employee_email)) LIMIT 1)))
         END AS mgr_email,
         CASE WHEN nullif(trim(m.manager_email), '') IS NOT NULL
              THEN trim(m.manager_name)
              ELSE trim((SELECT p.manager_name FROM profiles p WHERE lower(p.email) = lower(trim(o.employee_email)) LIMIT 1))
         END AS mgr_name
  FROM orders o
  LEFT JOIN managers m ON m.employee_email = lower(trim(o.employee_email))
  WHERE o.created_at >= '2026-10-01'
    AND coalesce(trim(o.manager_selected_email), '') = ''
) AS r
WHERE orders.id = r.id
  AND coalesce(r.mgr_email, '') <> ''
  AND r.mgr_email <> r.emp;
