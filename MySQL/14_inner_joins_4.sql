USE college;

SELECT
  s.first_name,
  c.course_name
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id;

SELECT
  c.course_name,
  s.first_name
FROM
  enrollments e
  JOIN courses c ON e.course_id = c.course_id
  JOIN students s ON e.student_id = s.id;

SELECT
  s.first_name,
  c.course_name
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id
WHERE
  s.first_name = 'Rahul';

SELECT
  s.first_name,
  c.course_name
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id
WHERE
  c.course_name = 'Database Management System';

SELECT
  c.course_name,
  COUNT(*) AS total_students
FROM
  enrollments e
  JOIN courses c ON e.course_id = c.course_id
GROUP BY
  c.course_name;

SELECT
  s.first_name,
  COUNT(*) AS total_courses
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
GROUP BY
  s.first_name;

SELECT
  s.first_name,
  COUNT(*) AS total_courses
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
GROUP BY
  s.first_name
HAVING
  COUNT(*) > 1;

SELECT
  c.course_name,
  COUNT(*) AS total_students
FROM
  enrollments e
  JOIN courses c ON e.course_id = c.course_id
GROUP BY
  c.course_name
ORDER BY
  total_students DESC
LIMIT
  1;

SELECT
  t.teacher_name,
  COUNT(*) AS total_students
FROM
  enrollments e
  JOIN courses c ON e.course_id = c.course_id
  JOIN teachers t ON c.teacher_id = t.teacher_id
GROUP BY
  t.teacher_name;

SELECT
  d.department_name,
  COUNT(*) AS total_enrollments
FROM
  enrollments e
  JOIN courses c ON e.course_id = c.course_id
  JOIN departments d ON c.department_id = d.department_id
GROUP BY
  d.department_name;

SELECT
  s.first_name,
  c.course_name,
  t.teacher_name,
  d.department_name,
  c.semester
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id
  JOIN teachers t ON c.teacher_id = t.teacher_id
  JOIN departments d ON c.department_id = d.department_id
ORDER BY
  s.first_name;

SELECT
  s.first_name,
  COUNT(*) AS total_courses
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
GROUP BY
  s.first_name
ORDER BY
  total_courses DESC;