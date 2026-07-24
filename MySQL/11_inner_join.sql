USE college;

-- SELECT columns
-- FROM table1
-- INNER JOIN table2
-- ON table1.column = table2.column;
SELECT
  *
FROM
  teachers
  INNER JOIN departments ON teachers.department_id = departments.department_id;

SELECT
  t.teacher_name,
  d.department_name
FROM
  teachers AS t
  INNER JOIN departments AS d ON t.department_id = d.department_id;

SELECT
  t.teacher_name,
  d.department_name
FROM
  teachers t
  INNER JOIN departments d ON t.department_id = d.department_id
WHERE
  d.department_name = 'Computer Science';

SELECT
  d.department_name,
  COUNT(*) AS total_teachers
FROM
  teachers t
  INNER JOIN departments d ON t.department_id = d.department_id
GROUP BY
  d.department_name;

SELECT
  e.name,
  d.department_name
FROM
  employees e
  INNER JOIN departments d ON e.department_id = d.department_id;

SELECT
  t.teacher_name,
  d.department_name
FROM
  teachers t
  INNER JOIN departments AS d ON t.department_id = d.department_id;

SELECT
  t.teacher_name,
  t.salary,
  d.department_name
FROM
  teachers t
  INNER JOIN departments AS d ON t.department_id = d.department_id;

SELECT
  t.teacher_name,
  d.department_name
FROM
  teachers t
  INNER JOIN departments AS d ON t.department_id = d.department_id
WHERE
  d.department_name = 'Computer Science';

SELECT
  t.teacher_name,
  t.salary,
  d.department_name
FROM
  teachers t
  INNER JOIN departments AS d ON t.department_id = d.department_id
ORDER BY
  t.salary DESC;

SELECT
  d.department_name,
  AVG(t.salary) AS average_salary
FROM
  teachers t
  INNER JOIN departments d ON t.department_id = d.department_id
GROUP BY
  d.department_name;

SELECT
  d.department_name,
  COUNT(*) AS total_teachers
FROM
  teachers t
  INNER JOIN departments d ON t.department_id = d.department_id
GROUP BY
  d.department_name
HAVING
  COUNT(*) > 1;

SELECT
  d.department_name,
  MAX(t.salary) AS highest_salary
FROM
  teachers t
  INNER JOIN departments d ON t.department_id = d.department_id
GROUP BY
  d.department_name;

SELECT
  d.department_name,
  AVG(t.salary) AS average_salary
FROM
  teachers t
  INNER JOIN departments d ON t.department_id = d.department_id
GROUP BY
  d.department_name
HAVING
  AVG(t.salary) > 80000;

SELECT
  d.department_name,
  COUNT(*) AS total_teachers
FROM
  teachers t
  INNER JOIN departments d ON t.department_id = d.department_id
GROUP BY
  d.department_name
ORDER BY
  d.department_name ASC;
  