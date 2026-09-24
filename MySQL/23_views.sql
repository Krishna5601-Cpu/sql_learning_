CREATE VIEW student_course_details AS
SELECT
  s.id,
  s.first_name,
  c.course_name,
  t.teacher_name,
  d.department_name,
  c.semester,
  s.cgpa
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id
  JOIN teachers t ON c.teacher_id = t.teacher_id
  JOIN departments d ON c.department_id = d.department_id;

SELECT
  *
FROM
  student_course_details;

SELECT
  *
FROM
  student_course_details
WHERE
  semester = 3;

SELECT
  *
FROM
  student_course_details
WHERE
  department_name = 'Computer Science';

CREATE VIEW department_salary_report AS
SELECT
  d.department_name,
  COUNT(t.teacher_id) AS total_teachers,
  AVG(t.salary) AS average_salary
FROM
  departments d
  LEFT JOIN teachers t ON d.department_id = t.department_id
GROUP BY
  d.department_id,
  d.department_name;

SELECT
  *
FROM
  department_salary_report;

CREATE VIEW active_students AS
SELECT
  *
FROM
  students
WHERE
  is_active = TRUE;

SELECT
  *
FROM
  active_students;

UPDATE
  active_students
SET
  city = 'Noida'
WHERE
  id = 1;

CREATE
OR REPLACE VIEW active_students AS
SELECT
  id,
  first_name,
  city,
  cgpa
FROM
  students
WHERE
  is_active = TRUE;

DROP VIEW student_course_details;

CREATE VIEW crm_dashboard AS
SELECT
  l.lead_name,
  e.employee_name,
  l.source,
  l.status
FROM
  leads l
  JOIN employees e ON l.employee_id = e.id;

SELECT
  *
FROM
  crm_dashboard;



  