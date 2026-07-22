USE college;

SELECT
  *
FROM
  students
ORDER BY
  first_name;

SELECT
  *
FROM
  students
ORDER BY
  age DESC;

SELECT
  *
FROM
  students
ORDER BY
  cgpa DESC;

SELECT
  *
FROM
  students
LIMIT
  5;

SELECT
  *
FROM
  students
ORDER BY
  cgpa DESC
LIMIT
  3;

SELECT
  *
FROM
  students
ORDER BY
  admission_date DESC;

SELECT
  *
FROM
  students
ORDER BY
  last_name ASC;

SELECT
  *
FROM
  students
ORDER BY
  city DESC;

SELECT
  *
FROM
  students
ORDER BY
  age ASC
LIMIT
  5;

SELECT
  *
FROM
  students
ORDER BY
  age DESC
LIMIT
  3;

SELECT
  *
FROM
  students
ORDER BY
  cgpa DESC
LIMIT
  5;

SELECT
  *
FROM
  students
ORDER BY
  cgpa DESC
LIMIT
  3;

SELECT
  *
FROM
  students
WHERE
  is_active = 1
ORDER BY
  cgpa DESC;

SELECT
  *
FROM
  students
WHERE
  course = 'B.Tech'
ORDER BY
  age ASC;

SELECT
  *
FROM
  students
ORDER BY
  admission_date DESC
LIMIT
  5;

SELECT
  *
FROM
  students
LIMIT
  5 OFFSET 5;