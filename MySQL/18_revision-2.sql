SELECT
  t.teacher_name,
  d.department_name
FROM
  teachers t
  JOIN department d ON t.department_id = d.department_id;

SELECT
  s.first_name,
  c.course_name
FROM
  students s
  LEFT JOIN enrollments e ON s.id = e.student_id
  LEFT JOIN courses c ON e.course_id = c.course_id;

SELECT
  e.employee_name,
  m.employee_name AS manager
FROM
  employees e
  LEFT JOIN employees m ON e.manager_id = m.employee_id;