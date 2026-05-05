-- Merge case-difference duplicate pairs in profiles.
--
-- Background: callback.ts looked up existing profiles with `WHERE email = ?`
-- (case-sensitive in SQLite). When a 365 user with a mixed-case email
-- (e.g. "Jenny.Burleson@...") had a canonical row from the Graph manager
-- sync, the lowercased login email did not match, so a second row with a
-- random UUID id was created. This consolidates those duplicates and locks
-- the column down so it can't happen again.
--
-- Winner per group is the canonical row: prefer the Azure AD object id
-- (format <uuid>.<tenant_uuid>); for Gmail users without one, pick the
-- oldest row.
--
-- Osvaldo Macedo / Osvaldo Soto pair (osvaldo.macedo@stancilservices.com)
-- is intentionally NOT merged here — the two rows have different last
-- names and need HR confirmation before merging.

-- ------------------------------------------------------------------
-- Bailey Jackson
-- ------------------------------------------------------------------
UPDATE orders SET user_id = '4b35ea9d-aa13-493e-b190-74a4ddb271c1.c29d02da-2be3-4e81-9617-8e877c6e385e'
WHERE user_id = 'e6a0c183-1313-4ff8-a74d-86e08ab9229c';

DELETE FROM profiles WHERE id = 'e6a0c183-1313-4ff8-a74d-86e08ab9229c';

-- ------------------------------------------------------------------
-- Doug LeRoux (3 rows: 1 Azure + 2 identical random regs)
-- The Azure winner has no primary_location; copy from a loser.
-- ------------------------------------------------------------------
UPDATE profiles SET
  primary_location = COALESCE(primary_location, 'Warehouse Gastonia')
WHERE id = 'e08eef6d-cf79-463e-843b-614d32138769.c29d02da-2be3-4e81-9617-8e877c6e385e';

UPDATE orders SET user_id = 'e08eef6d-cf79-463e-843b-614d32138769.c29d02da-2be3-4e81-9617-8e877c6e385e'
WHERE user_id IN (
  '062b713b-8b84-49c4-9a09-cb61fb63f367',
  '93244e63-31f4-49cf-b008-32a23d7f30cf'
);

DELETE FROM profiles WHERE id IN (
  '062b713b-8b84-49c4-9a09-cb61fb63f367',
  '93244e63-31f4-49cf-b008-32a23d7f30cf'
);

-- ------------------------------------------------------------------
-- Jenny Burleson — winner is admin row; merge loser fields if any are
-- richer (loser populated first/last name; winner already had them too).
-- ------------------------------------------------------------------
UPDATE profiles SET
  first_name       = COALESCE(first_name,       'Jenny'),
  last_name        = COALESCE(last_name,        'Burleson'),
  display_name     = COALESCE(display_name,     'Jenny Burleson'),
  primary_location = COALESCE(primary_location, 'Warehouse Concord'),
  manager_name     = COALESCE(manager_name,     'Anjie Hinson'),
  manager_email    = COALESCE(manager_email,    'Anjie.hinson@stancilservices.com')
WHERE id = 'eada2ab0-778a-484d-ab6c-75e9e28ff44b.c29d02da-2be3-4e81-9617-8e877c6e385e';

UPDATE orders SET user_id = 'eada2ab0-778a-484d-ab6c-75e9e28ff44b.c29d02da-2be3-4e81-9617-8e877c6e385e'
WHERE user_id = 'bc8dddcf-7c97-4920-b74f-7308b3956823';

DELETE FROM profiles WHERE id = 'bc8dddcf-7c97-4920-b74f-7308b3956823';

-- ------------------------------------------------------------------
-- Jesus Hernandez
-- ------------------------------------------------------------------
UPDATE orders SET user_id = '24fca6ac-40c1-4129-a94c-034b32a0e7d6.c29d02da-2be3-4e81-9617-8e877c6e385e'
WHERE user_id = 'b5317a20-7e77-40c4-a85b-c7bfe76e3ace';

DELETE FROM profiles WHERE id = 'b5317a20-7e77-40c4-a85b-c7bfe76e3ace';

-- ------------------------------------------------------------------
-- Kris Gunther — winner is admin row.
-- ------------------------------------------------------------------
UPDATE orders SET user_id = 'bca66d9a-6070-43d7-9443-ca51cda512ef.c29d02da-2be3-4e81-9617-8e877c6e385e'
WHERE user_id = 'b45bbe6d-3f78-43e5-b8d0-602c57a9045c';

DELETE FROM profiles WHERE id = 'b45bbe6d-3f78-43e5-b8d0-602c57a9045c';

-- ------------------------------------------------------------------
-- Micah Partlow — no orders, just delete the loser.
-- ------------------------------------------------------------------
DELETE FROM profiles WHERE id = 'c0e817b0-2a43-433f-b5eb-81bd12340cbc';

-- ------------------------------------------------------------------
-- Oscar Amezquita (Gmail user, no Azure row) — two near-identical
-- registrations 42s apart. Keep the older row.
-- ------------------------------------------------------------------
DELETE FROM profiles WHERE id = '710a9087-373a-4161-8131-7bb3f030e78d';

-- ------------------------------------------------------------------
-- Normalize every remaining email to lowercase so future LOWER(email)
-- lookups match the stored value exactly.
-- ------------------------------------------------------------------
UPDATE profiles SET email = LOWER(email) WHERE email <> LOWER(email);

-- ------------------------------------------------------------------
-- Replace the case-sensitive non-unique email index with a regular
-- index plus a partial unique expression index on LOWER(email).
-- The Osvaldo pair is excluded until HR confirms whether the two rows
-- are the same person; once resolved, a follow-up migration should
-- rebuild this index without the WHERE clause.
-- ------------------------------------------------------------------
DROP INDEX IF EXISTS idx_profiles_email;
CREATE INDEX idx_profiles_email ON profiles(email);
CREATE UNIQUE INDEX idx_profiles_email_lower ON profiles(LOWER(email))
  WHERE LOWER(email) <> 'osvaldo.macedo@stancilservices.com';
