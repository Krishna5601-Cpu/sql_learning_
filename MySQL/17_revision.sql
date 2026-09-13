SELECT
  *
FROM
  students;

WHERE
  age BETWEEN 20
  AND 22;

WHERE
  course IN ("MCA, BCA")
WHERE
  first_name LIKE "A%"
SELECT
  first_name AS student
FROM
  student;

SELECT
  *
FROM
  students
WHERE
  age > 20;

SELECT
  *
FROM
  student
ORDER BY
  cgpa DESC;

ORDER BY
  student_name ASC
SELECT
  student_name
FROM
  student
ORDER BY
  roll_no DESC
LIMIT
  5;

SELECT
  *
FROM
  students
ORDER BY
  age DESC
LIMIT
  5 OFFSET 5;

SELECT
  AVG(cgpa)
FROM
  student;

SELECT
  course,
  COUNT(*) AS total_students
FROM
  students
GROUP BY
  course;

SELECT
  course,
  COUNT(*) AS total
FROM
  students
GROUP BY
  course
HAVING
  COUNT(*) > 2;