SELECT
  *
FROM
  students;

SELECT
  *
FROM
  students
WHERE
  age > 20;

SELECT
  *
FROM
  students
WHERE
  age BETWEEN 20
  AND 22;

SELECT
  *
FROM
  students
WHERE
  name IN ('Krishna', 'Rahul');

SELECT
  *
FROM
  students
WHERE
  name LIKE 'K%';

SELECT
  *
FROM
  students
WHERE
  age IS NULL;