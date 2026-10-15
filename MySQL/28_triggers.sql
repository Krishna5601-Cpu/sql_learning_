CREATE TABLE student_audit (
  audit_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT,
  action_type VARCHAR(20),
  action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER / / CREATE TRIGGER after_student_insert
AFTER
INSERT
  ON students FOR EACH ROW BEGIN
INSERT INTO
  student_audit (student_id, action_type)
VALUES
  (NEW.id, 'INSERT');

END / / DELIMITER;

INSERT INTO
  students (first_name, last_name, city)
VALUES
  ('Arjun', 'Sharma', 'Delhi');

SELECT
  *
FROM
  student_audit;

Trigger
When it runs BEFORE
INSERT
  Before a row is inserted
AFTER
INSERT
After
  a row is inserted BEFORE
UPDATE
  Before a row is updated
AFTER
UPDATE
After
  a row is updated BEFORE DELETE Before a row is deleted
AFTER
  DELETE
After
  a row is deleted CREATE EVENT deactivate_old_students ON SCHEDULE EVERY 1 DAY DO
UPDATE
  students
SET
  is_active = FALSE
WHERE
  admission_date < CURRENT_DATE - INTERVAL 1 YEAR
  AND is_active = TRUE;