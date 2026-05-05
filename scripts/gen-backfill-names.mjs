// One-shot generator: reads ../../site-stancil-new/docs/Store/names.csv
// and emits migrations/0012_backfill_employee_names.sql with one UPDATE
// per email row. Uses LOWER(email) match and only fills NULL first/last.

import { readFileSync, writeFileSync } from 'node:fs';
import { resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const here = dirname(fileURLToPath(import.meta.url));
const csvPath = resolve(here, '../../../site-stancil-new/docs/Store/names.csv');
const outPath = resolve(here, '../migrations/0012_backfill_employee_names.sql');

const titleCase = (s) =>
  s
    .toLowerCase()
    .split(/(\s+|-)/)
    .map((part) => (/^\s+$/.test(part) || part === '-' ? part : part.charAt(0).toUpperCase() + part.slice(1)))
    .join('');

const sqlEscape = (s) => s.replace(/'/g, "''");

const raw = readFileSync(csvPath, 'utf8');
const lines = raw.split(/\r?\n/).filter((l) => l.trim().length > 0);
const header = lines.shift();
if (!/^Legal_Firstname,Legal_Lastname,Work_Email/i.test(header)) {
  throw new Error(`Unexpected header: ${header}`);
}

const rows = [];
const seen = new Set();
for (const line of lines) {
  const cols = line.split(',').map((c) => c.trim());
  if (cols.length < 3) continue;
  const [first, last, emailRaw] = cols;
  const email = emailRaw.toLowerCase();
  if (seen.has(email)) continue;
  seen.add(email);
  const firstTC = titleCase(first);
  const lastTC = titleCase(last);
  rows.push({ firstTC, lastTC, email });
}

const out = [];
out.push('-- One-time backfill of first_name/last_name/display_name for profiles');
out.push('-- where the names are still NULL. Source: HR roster CSV from Jenny');
out.push('-- (site-stancil-new/docs/Store/names.csv). Names Title-Cased from');
out.push('-- the all-caps source; emails matched case-insensitively.');
out.push('--');
out.push(`-- ${rows.length} rows generated.`);
out.push('');

for (const { firstTC, lastTC, email } of rows) {
  const display = `${firstTC} ${lastTC}`;
  out.push(
    `UPDATE profiles SET first_name = '${sqlEscape(firstTC)}', last_name = '${sqlEscape(lastTC)}', display_name = '${sqlEscape(display)}' WHERE LOWER(email) = '${sqlEscape(email)}' AND (first_name IS NULL OR last_name IS NULL);`
  );
}

writeFileSync(outPath, out.join('\n') + '\n', 'utf8');
console.log(`Wrote ${rows.length} updates to ${outPath}`);
