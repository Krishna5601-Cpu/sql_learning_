WITH top_students AS (
  SELECT
    *
  FROM
    students
  WHERE
    cgpa > 9
)
SELECT
  *
FROM
  top_students;

SELECT
  *
FROM
  (
    SELECT
      first_name,
      course,
      cgpa,
      ROW_NUMBER() OVER (
        PARTITION BY course
        ORDER BY
          cgpa DESC
      ) AS rn
    FROM
      students
  ) ranked_students
WHERE
  rn <= 2;

WITH ranked_students AS (
  SELECT
    first_name,
    course,
    cgpa,
    ROW_NUMBER() OVER (
      PARTITION BY course
      ORDER BY
        cgpa DESC
    ) AS rn
  FROM
    students
)
SELECT
  first_name,
  course,
  cgpa
FROM
  ranked_students
WHERE
  rn <= 2;

WITH class_average AS (
  SELECT
    AVG(cgpa) AS avg_cgpa
  FROM
    students
)
SELECT
  first_name,
  cgpa
FROM
  students,
  class_average
WHERE
  cgpa > avg_cgpa;

WITH department_avg AS (
  SELECT
    department_id,
    AVG(salary) AS avg_salary
  FROM
    teachers
  GROUP BY
    department_id
),
highest_avg AS (
  SELECT
    MAX(avg_salary) AS max_avg
  FROM
    department_avg
)
SELECT
  d.department_name,
  da.avg_salary
FROM
  department_avg da
  JOIN departments d ON da.department_id = d.department_id
  JOIN highest_avg h ON da.avg_salary = h.max_avg;

WITH ranked AS (
  SELECT
    first_name,
    course,
    cgpa,
    RANK() OVER (
      PARTITION BY course
      ORDER BY
        cgpa DESC
    ) AS student_rank
  FROM
    students
)
SELECT
  first_name,
  course,
  cgpa
FROM
  ranked
WHERE
  student_rank = 1;

WITH cs_courses AS (
  SELECT
    course_id
  FROM
    courses c
    JOIN departments d ON c.department_id = d.department_id
  WHERE
    d.department_name = 'Computer Science'
)
SELECT
  s.first_name,
  c.course_name
FROM
  enrollments e
  JOIN students s ON e.student_id = s.id
  JOIN courses c ON e.course_id = c.course_id
WHERE
  c.course_id IN (
    SELECT
      course_id
    FROM
      cs_courses
  );

WITH lead_stats AS (...),
qualified AS (...),
sales_rank AS (...)
SELECT
...

