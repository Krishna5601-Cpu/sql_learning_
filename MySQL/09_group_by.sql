USE college;


SELECT
  course,
  COUNT(*) AS total_students
FROM
  students
GROUP BY
  course;

SELECT
  course,
  AVG(cgpa) as avg_cgpa
FROM
  students
GROUP BY
  course;

SELECT
  course,
  MAX(cgpa) AS highest_cgpa
FROM
  students
GROUP BY
  course;

SELECT
  city,
  COUNT(*) AS total_students
FROM
  students
GROUP BY
  city;

SELECT
  gender,
  AVG(age) as avg_age
FROM
  students
GROUP BY
  gender
SELECT
  course,
  semester,
  COUNT(*) AS total
FROM
  students
GROUP BY
  course,
  semester;

SELECT
  course,
  COUNT(*) AS total
FROM
  students
WHERE
  is_active = TRUE
GROUP BY
  course;

SELECT
  course,
  COUNT(*) AS total_students
FROM
  students
GROUP BY
  course
ORDER BY
  total_students DESC;

SELECT
  course,
  COUNT(*) AS total_students
FROM
  students
GROUP BY
  course
ORDER BY
  total_students DESC
LIMIT
  1;

SELECT
  course,
  MAX(cgpa)
FROM
  students
GROUP BY
  course;

SELECT
  city,
  COUNT(*) as total_students
FROM
  students
GROUP BY
  city
SELECT
  course,
  AVG(cgpa) as avg_cgpa
FROM
  students
GROUP BY
  course
SELECT
  city,
  MAX(cgpa) as max_cgpa
FROM
  students
GROUP BY
  city
SELECT
  course,
  MIN(age) as min_cgpa
FROM
  students
GROUP BY
  course
SELECT
  semester,
  COUNT(*) as total_active
FROM
  students
WHERE
  is_active = 1
GROUP BY
  semester;

SELECT
  gender,
  COUNT(*)
FROM
  students
GROUP BY
  gender
SELECT
  city,
  AVG(age) as avg_age
FROM
  students
GROUP BY
  city
SELECT
  course,
  COUNT(*) total_in_course
FROM
  students
GROUP BY
  course
ORDER BY
  total_in_course DESC;

SELECT
  course,
  AVG(cgpa) avg_cgpa
FROM
  students
GROUP BY
  course
ORDER BY
  avg_cgpa DESC
LIMIT
  1;

SELECT
  city,
  COUNT(*) as no_of_students
FROM
  Students
GROUP BY
  city
ORDER BY
  no_of_students DESC
LIMIT
  1;