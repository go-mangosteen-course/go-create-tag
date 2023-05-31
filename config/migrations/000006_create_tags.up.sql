CREATE TABLE IF NOT EXISTS tags (
  id   SERIAL PRIMARY KEY,
  user_id   SERIAL NOT NULL,
  name VARCHAR(50) NOT NULL,
  sign VARCHAR(10) NOT NULL,
  kind kind NOT NULL,
  deleted_at TIMESTAMP,
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  updated_at TIMESTAMP NOT NULL DEFAULT now()
);
