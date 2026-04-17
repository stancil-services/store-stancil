CREATE TABLE IF NOT EXISTS signature_requests (
  token          TEXT PRIMARY KEY,
  order_id       INTEGER NOT NULL,
  employee_email TEXT NOT NULL,
  employee_name  TEXT,
  manager_email  TEXT,
  status         TEXT NOT NULL DEFAULT 'pending',
  created_at     TEXT NOT NULL DEFAULT (datetime('now')),
  signed_at      TEXT,
  signed_pdf_r2_key TEXT
);

CREATE INDEX IF NOT EXISTS idx_sig_req_order ON signature_requests(order_id);
