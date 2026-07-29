USE college;

SELECT
  s.first_name,
  c.course_name
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id
WHERE
  s.first_name = 'Krishna';

SELECT
  s.first_name,
  c.course_name
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id;

SELECT
  s.first_name,
  c.course_name,
  t.teacher_name
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id
  JOIN teachers t ON c.teacher_id = t.teacher_id;

SELECT
  s.first_name,
  c.course_name,
  t.teacher_name,
  d.department_name
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id
  JOIN teachers t ON c.teacher_id = t.teacher_id
  JOIN departments d ON c.department_id = d.department_id;

SELECT
  c.course_name,
  COUNT(*) AS total_students
FROM
  enrollments e
  JOIN courses c ON e.course_id = c.course_id
GROUP BY
  c.course_name;