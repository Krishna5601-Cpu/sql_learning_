USE college;

CREATE TABLE enrollments (
  enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  enrollment_date DATE,
  FOREIGN KEY (student_id) REFERENCES students(id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO
  enrollments (student_id, course_id, enrollment_date)
VALUES
  (1, 1, '2025-07-01'),
  (1, 2, '2025-07-01'),
  (1, 3, '2025-07-01'),
  (2, 1, '2025-07-02'),
  (2, 5, '2025-07-02'),
  (3, 2, '2025-07-03'),
  (3, 6, '2025-07-03'),
  (4, 1, '2025-07-04'),
  (4, 4, '2025-07-04'),
  (5, 3, '2025-07-05'),
  (5, 7, '2025-07-05'),
  (6, 5, '2025-07-06'),
  (7, 6, '2025-07-06'),
  (8, 2, '2025-07-07'),
  (9, 8, '2025-07-08'),
  (10, 9, '2025-07-09'),
  (11, 10, '2025-07-10'),
  (12, 4, '2025-07-10'),
  (13, 3, '2025-07-11'),
  (14, 1, '2025-07-12'),
  (15, 2, '2025-07-13');


  