DROP TABLE IF EXISTS managers;

CREATE TABLE managers (
  employee_email TEXT PRIMARY KEY,
  employee_name  TEXT NOT NULL,
  manager_name   TEXT NOT NULL,
  manager_email  TEXT NOT NULL,
  updated_at     TEXT NOT NULL DEFAULT (datetime('now'))
);
