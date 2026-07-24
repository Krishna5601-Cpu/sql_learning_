USE college;

CREATE TABLE teachers (
  teacher_id INT PRIMARY KEY AUTO_INCREMENT,
  teacher_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  salary DECIMAL(10, 2),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO
  teachers (teacher_name, email, salary, department_id)
VALUES
  (
    'Dr. Rajesh Sharma',
    'rajesh@college.edu',
    85000,
    1
  ),
  ('Dr. Priya Verma', 'priya@college.edu', 82000, 2),
  ('Dr. Amit Singh', 'amit@college.edu', 78000, 3),
  ('Dr. Vivek Kumar', 'vivek@college.edu', 76000, 4),
  ('Dr. Neha Gupta', 'neha@college.edu', 80000, 5),
  ('Dr. Anil Mehta', 'anil@college.edu', 83000, 1),
  ('Dr. Kavita Rao', 'kavita@college.edu', 79000, 2);

SELECT
  *
FROM
  teachers