-- Canonical managers table, synced nightly from Microsoft Graph.
-- Keyed by (azure_id, location) so one manager can appear across multiple locations.
CREATE TABLE IF NOT EXISTS managers (
  azure_id     TEXT NOT NULL,
  location     TEXT NOT NULL,
  manager_name TEXT NOT NULL,
  manager_email TEXT NOT NULL,
  updated_at   TEXT NOT NULL DEFAULT (datetime('now')),
  PRIMARY KEY (azure_id, location)
);

CREATE INDEX IF NOT EXISTS idx_managers_location ON managers(location);
