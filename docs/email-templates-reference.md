# Stancil Store — Email Templates Reference

Reference doc for porting the store's transactional emails into the HUB management app. Source of truth: `src/lib/email-templates.ts`.

## Overview

Five transactional templates, all rendered as inline-styled HTML (email clients hate external CSS). Each takes `(order, items, employee)` and returns a full HTML document.

| Template Function | Trigger | Recipients | Subject |
|---|---|---|---|
| `orderConfirmationEmail` | Employee submits order via `/api/cart/checkout` | Employee + manager + `STORE_ADMIN_EMAIL` (BCC) | `Stancil Store — Order #<id> Received` |
| `orderConfirmedEmail` | Admin sets status → `Confirmed` | Employee + manager | `Stancil Store — Order #<id> Confirmed` |
| `orderProcessingEmail` | Admin sets status → `Processing` | Employee + manager | `Stancil Store — Order #<id> Processing` |
| `orderFulfilledEmail` | Admin sets status → `Fulfilled` | Employee + manager | `Stancil Store — Order #<id> Fulfilled` |
| `orderCancelledEmail` | Admin sets status → `Cancelled` | Employee + manager | `Stancil Store — Order #<id> Cancelled` |

Status-change emails fire from `src/pages/api/orders/[id].ts` in the `PATCH` handler — it looks up the template by status, renders it, and sends via `sendEmail()` in `src/lib/email.ts` (Graph API through the hub shared mailbox).

## Constants

```ts
export const STORE_ADMIN_EMAIL = 'notifications@hub.thestancilway.com';
```

Brand colors referenced inline:
- Navy header: `#0f2b5b`
- Page background: `#f3f4f6`
- Body: `#ffffff`
- Success green: `#16a34a` / `#15803d` / `#bbf7d0` / `#f0fdf4`
- Warning amber: `#92400e` / `#fde68a` / `#fffbeb`
- Cancel red: `#dc2626` / `#991b1b` / `#fecaca` / `#fef2f2`
- Info blue: `#1e40af` / `#bfdbfe` / `#eff6ff`
- Processing purple: `#7c3aed` / `#e9d5ff` / `#faf5ff`

## Data Interfaces

```ts
interface OrderItem {
  product_name: string;
  product_size: string | null;
  color: string | null;
  quantity: number;
  price: number; // dollars (not cents)
}

interface OrderRecord {
  id: number;
  created_at: string;         // ISO date
  employee_email: string;
  total_amount: number;       // dollars
  credit_used: number;        // dollars
  out_of_pocket: number;      // dollars
  order_notes: string | null;
  location_selected: string | null;
  manager_selected_name: string | null;
  manager_selected_email: string | null;
}

interface EmployeeInfo {
  display_name?: string;
  first_name?: string;
  last_name?: string;
}
```

## Helpers

```ts
function fmt(amount: number): string {
  return '$' + (amount || 0).toFixed(2);
}

function formatDate(dateStr: string): string {
  return new Date(dateStr).toLocaleDateString('en-US', {
    weekday: 'long', month: 'long', day: 'numeric', year: 'numeric',
  });
}

function employeeName(info: EmployeeInfo, email: string): string {
  return info.display_name
    || [info.first_name, info.last_name].filter(Boolean).join(' ')
    || email;
}
```

## Shared Layout Wrapper

Every template is wrapped in the same chrome: navy header bar + white card + disclaimer footer. The footer links to `STORE_ADMIN_EMAIL` as the contact address.

```ts
function wrapInLayout(title: string, body: string): string {
  return `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>${title}</title>
</head>
<body style="margin:0;padding:0;background:#f3f4f6;font-family:Arial,sans-serif;">
<table width="100%" cellpadding="0" cellspacing="0" style="background:#f3f4f6;padding:32px 16px;">
  <tr><td align="center">
    <table width="600" cellpadding="0" cellspacing="0" style="max-width:600px;width:100%;">
      <tr>
        <td style="background:#0f2b5b;padding:24px 32px;border-radius:12px 12px 0 0;">
          <p style="margin:0;color:#ffffff;font-size:20px;font-weight:bold;letter-spacing:-0.3px;">
            Stancil Services Store
          </p>
        </td>
      </tr>
      <tr>
        <td style="background:#ffffff;padding:32px;border-radius:0 0 12px 12px;">
          ${body}
          <hr style="border:none;border-top:1px solid #e5e7eb;margin:32px 0;" />
          <p style="margin:0;font-size:12px;color:#9ca3af;line-height:1.6;">
            This is an automated message from the Stancil Employee Store.<br />
            Do not reply to this email — contact <a href="mailto:${STORE_ADMIN_EMAIL}" style="color:#2563eb;">${STORE_ADMIN_EMAIL}</a> with questions.
          </p>
        </td>
      </tr>
    </table>
  </td></tr>
</table>
</body>
</html>`;
}
```

## Shared Items Table

Every order email uses this line-items table in the body:

```ts
function itemsTable(items: OrderItem[]): string {
  const rows = items.map(item => `
    <tr>
      <td style="padding:10px 12px;border-bottom:1px solid #f3f4f6;font-size:14px;color:#111827;">
        ${item.product_name}
        ${[item.product_size, item.color].filter(Boolean).join(' / ')
          ? `<br /><span style="font-size:12px;color:#6b7280;">${[item.product_size, item.color].filter(Boolean).join(' / ')}</span>`
          : ''}
      </td>
      <td style="padding:10px 12px;border-bottom:1px solid #f3f4f6;font-size:14px;color:#374151;text-align:center;">${item.quantity}</td>
      <td style="padding:10px 12px;border-bottom:1px solid #f3f4f6;font-size:14px;color:#111827;text-align:right;font-weight:600;">${fmt(item.price * item.quantity)}</td>
    </tr>
  `).join('');

  return `
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #e5e7eb;border-radius:8px;overflow:hidden;margin:16px 0;">
      <thead>
        <tr style="background:#f9fafb;">
          <th style="padding:10px 12px;font-size:12px;color:#6b7280;text-align:left;font-weight:600;text-transform:uppercase;letter-spacing:0.05em;">Item</th>
          <th style="padding:10px 12px;font-size:12px;color:#6b7280;text-align:center;font-weight:600;text-transform:uppercase;letter-spacing:0.05em;">Qty</th>
          <th style="padding:10px 12px;font-size:12px;color:#6b7280;text-align:right;font-weight:600;text-transform:uppercase;letter-spacing:0.05em;">Total</th>
        </tr>
      </thead>
      <tbody>${rows}</tbody>
    </table>
  `;
}
```

## Template 1 — Order Received (Confirmation)

**Trigger:** Employee submits order at checkout.
**Purpose:** Acknowledge receipt. Shows order #, date, location, manager, items, totals, credit applied, out-of-pocket. Includes amber "coordinated by HR / payroll" banner if out-of-pocket > 0, and notes block if present.

```ts
export function orderConfirmationEmail(
  order: OrderRecord,
  items: OrderItem[],
  employee: EmployeeInfo
): string {
  const name = employeeName(employee, order.employee_email);

  const body = `
    <h2 style="margin:0 0 8px;font-size:22px;color:#0f2b5b;">Order Received</h2>
    <p style="margin:0 0 24px;font-size:15px;color:#374151;">Hi ${name}, your order has been submitted and is being processed.</p>

    <table width="100%" cellpadding="0" cellspacing="0" style="margin-bottom:24px;">
      <tr><td style="font-size:13px;color:#6b7280;">Order #</td>
          <td style="font-size:14px;color:#111827;font-weight:600;text-align:right;">#${order.id}</td></tr>
      <tr><td style="font-size:13px;color:#6b7280;padding-top:6px;">Date</td>
          <td style="font-size:14px;color:#111827;text-align:right;padding-top:6px;">${formatDate(order.created_at)}</td></tr>
      ${order.location_selected ? `
      <tr><td style="font-size:13px;color:#6b7280;padding-top:6px;">Location</td>
          <td style="font-size:14px;color:#111827;text-align:right;padding-top:6px;">${order.location_selected}</td></tr>` : ''}
      ${order.manager_selected_name ? `
      <tr><td style="font-size:13px;color:#6b7280;padding-top:6px;">Manager</td>
          <td style="font-size:14px;color:#111827;text-align:right;padding-top:6px;">${order.manager_selected_name}</td></tr>` : ''}
    </table>

    <h3 style="margin:0 0 4px;font-size:15px;color:#0f2b5b;">Items Ordered</h3>
    ${itemsTable(items)}

    <table width="100%" cellpadding="0" cellspacing="0" style="margin-top:16px;">
      <tr><td style="font-size:13px;color:#6b7280;">Order Total</td>
          <td style="font-size:14px;color:#111827;font-weight:600;text-align:right;">${fmt(order.total_amount)}</td></tr>
      <tr><td style="font-size:13px;color:#16a34a;padding-top:6px;">Credit Applied</td>
          <td style="font-size:14px;color:#16a34a;font-weight:600;text-align:right;padding-top:6px;">-${fmt(order.credit_used)}</td></tr>
      <tr><td style="font-size:15px;color:#0f2b5b;font-weight:700;padding-top:10px;border-top:2px solid #e5e7eb;">Out-of-Pocket</td>
          <td style="font-size:15px;color:#0f2b5b;font-weight:700;text-align:right;padding-top:10px;border-top:2px solid #e5e7eb;">${fmt(order.out_of_pocket)}</td></tr>
    </table>

    ${order.out_of_pocket > 0 ? `
    <div style="margin-top:20px;padding:14px 16px;background:#fffbeb;border:1px solid #fde68a;border-radius:8px;font-size:13px;color:#92400e;">
      <strong>Note:</strong> The out-of-pocket amount of ${fmt(order.out_of_pocket)} will be coordinated by HR / payroll.
    </div>` : ''}

    ${order.order_notes ? `
    <div style="margin-top:20px;">
      <p style="margin:0 0 4px;font-size:12px;color:#6b7280;text-transform:uppercase;letter-spacing:0.05em;font-weight:600;">Order Notes</p>
      <p style="margin:0;font-size:14px;color:#374151;">${order.order_notes}</p>
    </div>` : ''}
  `;

  return wrapInLayout(`Stancil Store — Order #${order.id} Received`, body);
}
```

## Template 2 — Order Confirmed

**Trigger:** Admin sets status to `Confirmed`.
**Purpose:** Tell employee the order passed admin review and is being prepared. Blue info banner at the bottom promising another update next step.

Structure is identical to Template 1, with these body differences:
- Heading: `Order Confirmed`
- Lead copy: `Hi ${name}, your order #${order.id} has been confirmed and is being prepared.`
- No manager row in the summary table (location only)
- Footer banner (replaces notes block position):
  ```html
  <div style="margin-top:24px;padding:16px;background:#eff6ff;border:1px solid #bfdbfe;border-radius:8px;font-size:14px;color:#1e40af;">
    Your order is being prepared. You will receive another email when it moves to the next step.
  </div>
  ```

## Template 3 — Order Processing

**Trigger:** Admin sets status to `Processing`.
**Purpose:** Tell employee HR is processing payroll deduction for the out-of-pocket portion. Purple info banner.

Body differences from Template 2:
- Heading: `Order Being Processed`
- Lead copy: `Hi ${name}, your order #${order.id} is now being processed by HR for billing.`
- **Amber banner is payroll-specific** when out-of-pocket > 0:
  ```html
  <div style="margin-top:20px;padding:14px 16px;background:#fffbeb;border:1px solid #fde68a;border-radius:8px;font-size:13px;color:#92400e;">
    <strong>Payroll Deduction:</strong> The out-of-pocket amount of ${fmt(order.out_of_pocket)} is being processed and will be deducted from your paycheck.
  </div>
  ```
- Purple footer banner:
  ```html
  <div style="margin-top:24px;padding:16px;background:#faf5ff;border:1px solid #e9d5ff;border-radius:8px;font-size:14px;color:#7c3aed;">
    HR is processing payment for your order. You will receive a final confirmation once your order is fulfilled.
  </div>
  ```

Note: the banner says "paycheck" (singular). Any rewrite in the HUB app must keep this singular — one-check deduction is a confirmed policy.

## Template 4 — Order Fulfilled

**Trigger:** Admin sets status to `Fulfilled`.
**Purpose:** Tell employee their order has been delivered/picked up. Green success banner. Shows "Original Order Date" label instead of "Order Date". Shows admin notes if present.

Body differences:
- Heading: `Order Fulfilled!`
- Lead copy: `Hi ${name}, great news — your order #${order.id} has been fulfilled.`
- Summary row label: `Original Order Date` instead of `Order Date`
- Optional "Notes from Admin" block (using `order.order_notes`):
  ```html
  <div style="margin-top:20px;">
    <p style="margin:0 0 4px;font-size:12px;color:#6b7280;text-transform:uppercase;letter-spacing:0.05em;font-weight:600;">Notes from Admin</p>
    <p style="margin:0;font-size:14px;color:#374151;">${order.order_notes}</p>
  </div>
  ```
- Green closing banner:
  ```html
  <div style="margin-top:24px;padding:16px;background:#f0fdf4;border:1px solid #bbf7d0;border-radius:8px;font-size:14px;color:#15803d;">
    If you have any questions about your order, contact <a href="mailto:${STORE_ADMIN_EMAIL}" style="color:#15803d;font-weight:600;">${STORE_ADMIN_EMAIL}</a>.
  </div>
  ```
- No totals table or out-of-pocket block — fulfilled emails focus on delivery, not billing.

## Template 5 — Order Cancelled

**Trigger:** Admin sets status to `Cancelled`.
**Purpose:** Tell employee the order was cancelled, credit will be refunded, contact admin if in error.

Body differences:
- Heading in red: `Order Cancelled` with `color:#dc2626`
- Lead copy: `Hi ${name}, your order #${order.id} has been cancelled.`
- Section heading: `Cancelled Items`
- Green credit refund banner when `credit_used > 0`:
  ```html
  <div style="margin-top:20px;padding:14px 16px;background:#f0fdf4;border:1px solid #bbf7d0;border-radius:8px;font-size:13px;color:#15803d;">
    <strong>Credit Refund:</strong> The ${fmt(order.credit_used)} in employee credit used for this order will be returned to your balance.
  </div>
  ```
- Optional notes block (using `order.order_notes`)
- Red closing banner:
  ```html
  <div style="margin-top:24px;padding:16px;background:#fef2f2;border:1px solid #fecaca;border-radius:8px;font-size:14px;color:#991b1b;">
    If you believe this was done in error, contact <a href="mailto:${STORE_ADMIN_EMAIL}" style="color:#991b1b;font-weight:600;">${STORE_ADMIN_EMAIL}</a>.
  </div>
  ```
- No totals table.

## Porting Notes for the HUB App

If you're rebuilding these as editable templates in the HUB admin UI:

1. **Variable placeholders** — the templates interpolate eight order fields (`id`, `created_at`, `employee_email`, `total_amount`, `credit_used`, `out_of_pocket`, `order_notes`, `location_selected`, `manager_selected_name`, `manager_selected_email`) plus three employee fields (`display_name`, `first_name`, `last_name`) and the joined `items[]` array. Use a token syntax like `{{order.id}}` and `{{employee.display_name}}` so admins can edit text without breaking data bindings.

2. **Conditional blocks** — banners and notes blocks are conditional on field presence (`order.out_of_pocket > 0`, `order.order_notes`, `order.manager_selected_name`, etc.). Your template editor needs to support conditional sections, or you need to make those blocks always render with conditional copy.

3. **Shared fragments** — `wrapInLayout` and `itemsTable` are shared across all 5 templates. Store those as reusable components rather than duplicating into each template record.

4. **Inline styles only** — no `<style>` blocks, no external CSS. Email clients (especially Outlook) will strip them.

5. **Table-based layout** — the nested `<table>` structure is intentional for email client compatibility. Don't "modernize" it to flexbox/grid.

6. **One-check deduction policy** — keep "paycheck" singular anywhere you mention payroll. Never say "paychecks" or "installments."

7. **Subject lines** — the subject is passed to `sendEmail()` separately from the body HTML; store both fields per template.

8. **Store admin email** — `notifications@hub.thestancilway.com` is hardcoded in the store. If you make it editable in the HUB, have the store fetch it from the HUB admin config or share a config table in D1.
