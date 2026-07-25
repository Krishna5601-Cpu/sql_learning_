USE college;

CREATE TABLE courses (
  course_id INT PRIMARY KEY AUTO_INCREMENT,
  course_name VARCHAR(100) NOT NULL,
  credits INT NOT NULL,
  semester INT NOT NULL,
  department_id INT NOT NULL,
  teacher_id INT NOT NULL,
  FOREIGN KEY (department_id) REFERENCES departments(department_id),
  FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

INSERT INTO
  courses (
    course_name,
    credits,
    semester,
    department_id,
    teacher_id
  )
VALUES
  ('Database Management System', 4, 3, 1, 1),
  ('Data Structures', 4, 3, 1, 6),
  ('Operating Systems', 4, 4, 1, 1),
  ('Computer Networks', 4, 4, 1, 6),
  ('Python Programming', 3, 2, 2, 2),
  ('Java Programming', 4, 3, 2, 7),
  ('Digital Electronics', 4, 3, 3, 3),
  ('Signals and Systems', 3, 4, 3, 3),
  ('Thermodynamics', 4, 2, 4, 4),
  ('Structural Analysis', 4, 5, 5, 5);