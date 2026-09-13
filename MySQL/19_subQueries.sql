SELECT
  *
FROM
  students
WHERE
  cgpa = (
    SELECT
      MAX(cgpa)
    FROM
      students
  );

SELECT
  first_name,
  cgpa FRPM students
WHERE
  cgpa > (
    SELECT
      AVG(cgpa)
    FROM
      student
  );

SELECT
  first_name,
  age
FROM
  students
WHERE
  age = (
    SELECT
      MIN(age)
    FROM
      students
  );

SELECT
  teacher_name,
  salary
FROM
  teachers
WHERE
  salary = (
    SELECT
      MAX(salary)
    FROM
      teachers
  );

SELECT
  course_id
FROM
  courses
WHERE
  course_name = 'Database Management System';

SELECT
  first_name
FROM
  students
WHERE
  id IN (
    SELECT
      student_id
    FROM
      enrollments
    WHERE
      course_id = (
        SELECT
          course_id
        FROM
          courses
        WHERE
          course_name = 'Database Management System'
      )
  );

SELECT
  first_name
FROM
  students s
WHERE
  EXISTS (
    SELECT
      1
    FROM
      enrollments e
    WHERE
      e.student_id = s.id
  );

SELECT
  first_name
FROM
  students
WHERE
  id IN (
    SELECT
      student_id
    FROM
      enrollments
    WHERE
      course_id = (
        SELECT
          course_id
        FROM
          courses
        WHERE
          course_name = 'Database Management System'
      )
  );

  