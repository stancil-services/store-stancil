-- Resolve the Osvaldo Macedo / Osvaldo Soto duplicate and rebuild the
-- unique index on LOWER(email) without the partial WHERE clause.
--
-- Brian confirmed (2026-05-05) that the two rows are the same person.
-- The Azure-AD-sourced "Osvaldo Macedo" row is canonical (it matches
-- the 365 directory and the email address); the self-registered
-- "Osvaldo Soto" row had no orders.
--
-- Winner: 2ee6ddb3-30c3-45f7-9246-130fcdbf7e55.c29d02da-2be3-4e81-9617-8e877c6e385e
-- Loser : cb37e151-a48d-436c-9a62-e13270d8dbbb (Osvaldo Soto, 0 orders)

-- Loser had no orders, so nothing to repoint. Just delete.
DELETE FROM profiles WHERE id = 'cb37e151-a48d-436c-9a62-e13270d8dbbb';

-- Rebuild the unique index without the partial WHERE clause now that
-- there are no remaining case-or-content duplicates on LOWER(email).
DROP INDEX IF EXISTS idx_profiles_email_lower;
CREATE UNIQUE INDEX idx_profiles_email_lower ON profiles(LOWER(email));
