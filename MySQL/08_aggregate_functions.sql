USE college;

SELECT
  COUNT(*)
FROM
  students;

SELECT
  AVG(cgpa)
FROM
  students;

SELECT
  MAX(age)
FROM
  students;

SELECT
  MIN(cgpa)
FROM
  students;

SELECT
  COUNT(DISTINCT city)
FROM
  students;

SELECT
  COUNT(*) AS Total_Students,
  AVG(cgpa) AS Average_CGPA,
  MAX(cgpa) AS Highest_CGPA,
  MIN(cgpa) AS Lowest_CGPA
FROM
  students;

SELECT
  COUNT(*)
FROM
  students
WHERE
  is_active = 1;

SELECT
  AVG(cgpa)
FROM
  students
WHERE
  gender = 'Female';

SELECT
  MAX(cgpa)
FROM
  students
WHERE
  course = 'BCA';

SELECT
  MIN(age)
FROM
  students;

SELECT
  MAX(age)
FROM
  students;

SELECT
  COUNT(DISTINCT course)
FROM
  students
SELECT
  COUNT(*)
FROM
  students
WHERE
  city = 'Delhi';

SELECT
  AVG(age)
FROM
  students
SELECT
  SUM(cgpa)
FROM
  students