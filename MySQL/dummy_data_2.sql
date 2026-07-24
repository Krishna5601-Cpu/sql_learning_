USE college;

CREATE TABLE departments (
  department_id INT PRIMARY KEY AUTO_INCREMENT,
  department_name VARCHAR(100) NOT NULL UNIQUE,
  building VARCHAR(100),
  hod_name VARCHAR(100)
);

INSERT INTO
  departments (department_name, building, hod_name)
VALUES
  (
    'Computer Science',
    'Block A',
    'Dr. Rajesh Sharma'
  ),
  (
    'Information Technology',
    'Block B',
    'Dr. Priya Verma'
  ),
  ('Electronics', 'Block C', 'Dr. Amit Singh'),
  ('Mechanical', 'Block D', 'Dr. Vivek Kumar'),
  ('Civil', 'Block E', 'Dr. Neha Gupta');

SELECT
  *
FROM
  departments;