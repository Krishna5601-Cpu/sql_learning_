START TRANSACTION;

UPDATE
  accounts
SET
  balance = balance - 1000
WHERE
  account_id = 1;

UPDATE
  accounts
SET
  balance = balance + 1000
WHERE
  account_id = 2;

COMMIT;

START TRANSACTION;

UPDATE
  accounts
SET
  balance = balance - 1000
WHERE
  account_id = 1;

ROLLBACK;

CREATE TABLE accounts (
  account_id INT PRIMARY KEY,
  account_holder VARCHAR(100) NOT NULL,
  balance DECIMAL(12, 2) NOT NULL,
  CHECK (balance >= 0)
);

INSERT INTO
  accounts
VALUES
  (1, 'Krishna', 5000.00),
  (2, 'Rahul', 2000.00);

START TRANSACTION;

UPDATE
  accounts
SET
  balance = balance - 1000
WHERE
  account_id = 1
  AND balance >= 1000;

UPDATE
  accounts
SET
  balance = balance + 1000
WHERE
  account_id = 2;

COMMIT;


