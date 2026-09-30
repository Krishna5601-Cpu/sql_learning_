SELECT
  *
FROM
  students
WHERE
  email = 'krishna@example.com';

SELECT
  *
FROM
  students
WHERE
  city = 'Delhi';

CREATE INDEX idx_students_city ON students(city);

CREATE INDEX idx_students_id ON students(id);

email VARCHAR(100) UNIQUE CREATE INDEX idx_students_city ON students(city);

CREATE INDEX idx_students_email ON students(email);

CREATE INDEX idx_students_city ON students(city);

CREATE INDEX idx_students_course ON students(course);

EXPLAIN
SELECT
  *
FROM
  students
WHERE
  email = 'krishna@example.com';

SELECT
  *
FROM
  students
WHERE
  city = 'Delhi'
  AND course = 'BCA';

CREATE INDEX idx_students_city_course ON students(city, course);

SELECT
  *
FROM
  students
WHERE
  course = 'BCA'
ORDER BY
  cgpa DESC;

CREATE INDEX idx_students_course_cgpa ON students(course, cgpa);

