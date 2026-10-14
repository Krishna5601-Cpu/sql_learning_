CREATE TABLE student_courses (
  student_id INT,
  student_name VARCHAR(100),
  course_id INT,
  course_name VARCHAR(100),
  teacher_name VARCHAR(100),
  PRIMARY KEY (student_id, course_id)
);

CREATE TABLE teachers (
  teacher_id INT PRIMARY KEY AUTO_INCREMENT,
  teacher_name VARCHAR(100) NOT NULL
);

CREATE TABLE students (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  student_name VARCHAR(100) NOT NULL
);

CREATE TABLE courses (
  course_id INT PRIMARY KEY AUTO_INCREMENT,
  course_name VARCHAR(100) NOT NULL,
  teacher_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE enrollments (
  student_id INT,
  course_id INT,
  enrollment_date DATE,
  PRIMARY KEY (student_id, course_id),
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO
  teachers (teacher_name)
VALUES
  ('Dr. Rajesh'),
  ('Dr. Neha');

INSERT INTO
  students (student_name)
VALUES
  ('Krishna'),
  ('Rahul'),
  ('Priya');

INSERT INTO
  courses (course_name, teacher_id)
VALUES
  ('DBMS', 1),
  ('Python', 2);

INSERT INTO
  enrollments
VALUES
  (1, 1, '2026-10-01'),
  (1, 2, '2026-10-02'),
  (2, 1, '2026-10-03'),
  (3, 2, '2026-10-04');

SELECT
  s.student_name,
  c.course_name,
  t.teacher_name,
  e.enrollment_date
FROM
  enrollments e
  JOIN students s ON e.student_id = s.student_id
  JOIN courses c ON e.course_id = c.course_id
  JOIN teachers t ON c.teacher_id = t.teacher_id;

  