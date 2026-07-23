USE college;

SELECT
  course,
  COUNT(*) AS total_students
FROM
  students
GROUP BY
  course
HAVING
  COUNT(*) > 2;

SELECT
  course,
  AVG(cgpa) AS average_cgpa
FROM
  students
GROUP BY
  course;

SELECT
  course,
  AVG(cgpa) AS average_cgpa
FROM
  students
WHERE
  gender = 'Female'
GROUP BY
  course
HAVING
  AVG(cgpa) > 8;

SELECT
  gender,
  MAX(cgpa)
FROM
  students
GROUP BY
  gender
HAVING
  MAX(cgpa) > 9;

SELECT
  semester,
  COUNT(*)
FROM
  students
WHERE
  is_active = TRUE
GROUP BY
  semester
HAVING
  COUNT(*) >= 2;

SELECT
  city,
  AVG(cgpa)
FROM
  students
GROUP BY
  city
HAVING
  AVG(cgpa) > 8;

SELECT
  department,
  COUNT(*) AS employees
FROM
  employees
GROUP BY
  department
HAVING
  COUNT(*) > 50;

SELECT
  product_id,
  AVG(rating) AS avg_rating
FROM
  reviews
GROUP BY
  product_id
HAVING
  AVG(rating) > 4.5;

SELECT
  course,
  COUNT(*) AS total_students
FROM
  students
GROUP BY
  course
HAVING
  COUNT(*) > 3;

SELECT
  city,
  AVG(cgpa) AS average_cgpa
FROM
  students
GROUP BY
  city
HAVING
  AVG(cgpa) > 8.5;

SELECT
  semester,
  COUNT(*) AS active_students
FROM
  students
WHERE
  is_active = TRUE
GROUP BY
  semester
HAVING
  COUNT(*) >= 2;

SELECT
  gender,
  AVG(age) AS average_age
FROM
  students
GROUP BY
  gender
HAVING
  AVG(age) > 20;

SELECT
  course,
  MAX(cgpa) AS highest_cgpa
FROM
  students
GROUP BY
  course
HAVING
  MAX(cgpa) > 9;

SELECT
  city,
  COUNT(*) AS total_students
FROM
  students
GROUP BY
  city
HAVING
  COUNT(*) > 1;

SELECT
  course,
  MIN(cgpa) AS minimum_cgpa
FROM
  students
GROUP BY
  course
HAVING
  MIN(cgpa) > 8;

SELECT
  city,
  COUNT(*) AS active_students
FROM
  students
WHERE
  is_active = TRUE
GROUP BY
  city
HAVING
  COUNT(*) >= 2;

SELECT
  course,
  COUNT(*) AS female_students
FROM
  students
WHERE
  gender = 'Female'
GROUP BY
  course
HAVING
  COUNT(*) > 2;

SELECT
  course,
  AVG(cgpa) AS average_cgpa
FROM
  students
GROUP BY
  course
ORDER BY
  average_cgpa DESC
LIMIT
  1;