USE college;

SELECT
  t.teacher_name,
  d.department_name
FROM
  teachers t
  RIGHT JOIN departments d ON t.department_id = d.department_id;

SELECT
  s.first_name,
  c.course_name
FROM
  students s
  LEFT JOIN enrollments e ON s.id = e.student_id
  LEFT JOIN courses c ON e.course_id = c.course_id;

SELECT
  c.course_name,
  s.first_name
FROM
  courses c
  LEFT JOIN enrollments e ON c.course_id = e.course_id
  LEFT JOIN students s ON e.student_id = s.id;

SELECT
  s.first_name
FROM
  students s
  LEFT JOIN enrollments e ON s.id = e.student_id
WHERE
  e.student_id IS NULL;

SELECT
  d.department_name
FROM
  departments d
  LEFT JOIN teachers t ON d.department_id = t.department_id
WHERE
  t.teacher_id IS NULL;

SELECT
  c.course_name,
  COUNT(e.student_id) AS enrolled_students
FROM
  courses c
  LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY
  c.course_name;

SELECT
  d.department_name,
  t.teacher_name
FROM
  departments d
  LEFT JOIN teachers t ON d.department_id = t.department_id;

SELECT
  s.first_name,
  c.course_name
FROM
  students s
  LEFT JOIN enrollments e ON s.id = e.student_id
  LEFT JOIN courses c ON e.course_id = c.course_id;

SELECT
  c.course_name,
  s.first_name
FROM
  courses c
  LEFT JOIN enrollments e ON c.course_id = e.course_id
  LEFT JOIN students s ON e.student_id = s.id;

SELECT
  s.first_name
FROM
  students s
  LEFT JOIN enrollments e ON s.id = e.student_id
WHERE
  e.student_id IS NULL;

SELECT
  d.department_name
FROM
  departments d
  LEFT JOIN teachers t ON d.department_id = t.department_id
WHERE
  t.teacher_id IS NULL;

SELECT
  c.course_name
FROM
  courses c
  LEFT JOIN enrollments e ON c.course_id = e.course_id
WHERE
  e.course_id IS NULL;

SELECT
  c.course_name,
  COUNT(e.student_id) AS total_enrollments
FROM
  courses c
  LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY
  c.course_name;

SELECT
  d.department_name,
  COUNT(t.teacher_id) AS total_teachers,
  AVG(t.salary) AS average_salary
FROM
  departments d
  LEFT JOIN teachers t ON d.department_id = t.department_id
GROUP BY
  d.department_name;

SELECT
  t.teacher_name
FROM
  teachers t
  LEFT JOIN courses c ON t.teacher_id = c.teacher_id
WHERE
  c.course_id IS NULL;

SELECT
  s.first_name,
  COUNT(e.course_id) AS total_courses
FROM
  students s
  LEFT JOIN enrollments e ON s.id = e.student_id
GROUP BY
  s.id,
  s.first_name;

SELECT
  d.department_name,
  COUNT(t.teacher_id)
FROM
  departments d
  LEFT JOIN teachers t ON d.department_id = t.department_id
GROUP BY
  d.department_id,
  d.department_name;