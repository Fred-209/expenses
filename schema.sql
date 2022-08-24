-- Table: Expenses
-- Columns: id, amount, memo, created on

-- id: Identifying key
--   - primary key, unique, not null

-- amount: DOllar cost of expense
-- - numeric (6 precison, 2 scale), not null

-- created_on: date of when the expense happened
-- - date, not null

-- memo: notes about the expense
-- - text, can be empty

CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric(6, 2) NOT NULL,
  created_on date NOT NULL,
  memo text NOT NULL
);

ALTER TABLE expenses
ADD CONSTRAINT positive_amount CHECK (amount >= 0.01)

