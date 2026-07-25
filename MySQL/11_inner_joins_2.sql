USE college;

SELECT
  c.course_name,
  t.teacher_name,
  d.department_name
FROM
  courses c
  INNER JOIN teachers t ON c.teacher_id = t.teacher_id
  INNER JOIN departments d ON c.department_id = d.department_id;

SELECT
  c.course_name,
  c.semester,
  t.teacher_name
FROM
  courses c
  INNER JOIN teachers t ON c.teacher_id = t.teacher_id;

SELECT
  c.course_name,
  d.department_name
FROM
  courses c
  INNER JOIN departments d ON c.department_id = d.department_id
WHERE
  d.department_name = 'Computer Science';

SELECT
  c.course_name,
  c.credits
FROM
  courses c
ORDER BY
  c.credits DESC;

SELECT
  d.department_name,
  COUNT(*) AS total_courses
FROM
  courses c
  INNER JOIN departments d ON c.department_id = d.department_id
GROUP BY
  d.department_name;

SELECT
  d.department_name,
  AVG(c.credits) AS average_credits
FROM
  courses c
  INNER JOIN departments d ON c.department_id = d.department_id
GROUP BY
  d.department_name;

SELECT
  d.department_name,
  COUNT(*) AS total_courses
FROM
  courses c
  INNER JOIN departments d ON c.department_id = d.department_id
GROUP BY
  d.department_name
HAVING
  COUNT(*) > 1;