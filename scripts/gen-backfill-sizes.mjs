// Match D1 order_items missing size against Supabase order_items export
// (../../site-stancil-new/docs/StoreHub/order_items_rows (1).csv) by
// (order_id, product_id, quantity, color) and emit one UPDATE per D1
// row keyed on D1's autoincrement id (so every UPDATE hits exactly
// one row, regardless of natural-key collisions).

import { readFileSync, writeFileSync } from 'node:fs';
import { resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const here = dirname(fileURLToPath(import.meta.url));
const csvPath = resolve(here, '../../../site-stancil-new/docs/StoreHub/order_items_rows (1).csv');
const d1Path  = resolve(here, '../d1-missing-size.json');
const outPath = resolve(here, '../migrations/0013_backfill_legacy_order_item_sizes.sql');

const sqlEscape = (s) => String(s).replace(/'/g, "''");
const norm = (v) => (v === null || v === undefined ? '' : String(v).trim());
const isRealSize = (s) => {
  const v = norm(s).toUpperCase();
  return v && v !== 'N/A' && v !== 'NULL';
};

// Parse CSV (simple split — no embedded commas in this file)
const csvRaw = readFileSync(csvPath, 'utf8');
const csvLines = csvRaw.split(/\r?\n/).filter((l) => l.trim().length > 0);
const csvHeader = csvLines.shift().split(',');
const idx = (name) => csvHeader.indexOf(name);
const cIdx = {
  order_id: idx('order_id'),
  product_id: idx('product_id'),
  quantity: idx('quantity'),
  color: idx('color'),
  product_size: idx('product_size'),
};
for (const [k, v] of Object.entries(cIdx)) {
  if (v < 0) throw new Error(`Missing column ${k} in CSV`);
}

const supaIndex = new Map(); // key -> [size, ...]
for (const line of csvLines) {
  const cols = line.split(',');
  const key = [
    norm(cols[cIdx.order_id]),
    norm(cols[cIdx.product_id]),
    norm(cols[cIdx.quantity]),
    norm(cols[cIdx.color]).toLowerCase(),
  ].join('|');
  const size = norm(cols[cIdx.product_size]);
  if (!isRealSize(size)) continue;
  if (!supaIndex.has(key)) supaIndex.set(key, []);
  supaIndex.get(key).push(size);
}

const d1 = JSON.parse(readFileSync(d1Path, 'utf8'))[0].results;

const updates = [];
const unmatched = [];
const ambiguous = [];

for (const r of d1) {
  const key = [
    norm(r.order_id),
    norm(r.product_id),
    norm(r.quantity),
    norm(r.color).toLowerCase(),
  ].join('|');
  const hits = supaIndex.get(key);
  if (!hits || hits.length === 0) {
    unmatched.push(r);
    continue;
  }
  const distinct = [...new Set(hits)];
  if (distinct.length > 1) {
    ambiguous.push({ d1: r, sizes: distinct });
    continue;
  }
  updates.push({ id: r.id, size: distinct[0] });
}

const out = [];
out.push('-- One-time backfill of order_items.product_size for legacy rows.');
out.push('-- Source: Supabase order_items export at');
out.push("--   site-stancil-new/docs/StoreHub/order_items_rows (1).csv");
out.push('-- Matched on (order_id, product_id, quantity, color); UPDATE');
out.push('-- keyed on the D1 autoincrement id so each row is touched');
out.push('-- exactly once.');
out.push('--');
out.push(`-- D1 rows missing size : ${d1.length}`);
out.push(`-- Updates emitted     : ${updates.length}`);
out.push(`-- Unmatched (skipped) : ${unmatched.length}`);
out.push(`-- Ambiguous (skipped) : ${ambiguous.length}`);
out.push('');

for (const { id, size } of updates) {
  out.push(`UPDATE order_items SET product_size = '${sqlEscape(size)}' WHERE id = ${id} AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');`);
}

if (unmatched.length) {
  out.push('');
  out.push('-- Unmatched D1 rows (no matching Supabase key):');
  for (const r of unmatched) {
    out.push(`--   id=${r.id} order=${r.order_id} product=${r.product_id} qty=${r.quantity} color=${r.color}`);
  }
}
if (ambiguous.length) {
  out.push('');
  out.push('-- Ambiguous D1 rows (multiple Supabase sizes for the same natural key):');
  for (const { d1: r, sizes } of ambiguous) {
    out.push(`--   id=${r.id} order=${r.order_id} product=${r.product_id} qty=${r.quantity} color=${r.color} candidates=${sizes.join(',')}`);
  }
}

writeFileSync(outPath, out.join('\n') + '\n', 'utf8');
console.log(`Updates: ${updates.length}, unmatched: ${unmatched.length}, ambiguous: ${ambiguous.length}`);
console.log(`Wrote ${outPath}`);
