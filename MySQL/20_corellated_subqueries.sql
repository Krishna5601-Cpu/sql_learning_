SELECT
  s1.first_name,
  s1.course,
  s1.cgpa
FROM
  students s1
WHERE
  s1.cgpa > (
    SELECT
      AVG(s2.cgpa)
    FROM
      students s2
    WHERE
      s2.course = s1.course
  );

SELECT
  t1.teacher_name,
  t1.salary,
  t1.department_id
FROM
  teachers t1
WHERE
  t1.salary = (
    SELECT
      MAX(t2.salary)
    FROM
      teachers t2
    WHERE
      t2.department_id = t1.department_id
  );

SELECT
  s1.first_name,
  s1.course,
  s1.age
FROM
  students s1
WHERE
  s1.age = (
    SELECT
      MIN(s2.age)
    FROM
      students s2
    WHERE
      s2.course = s1.course
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