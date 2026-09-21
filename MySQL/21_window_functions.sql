WINDOW_FUNCTION() OVER (
  PARTITION BY...
  ORDER BY
...
)
SELECT
  first_name,
  course,
  cgpa,
  ROW_NUMBER() OVER (
    PARTITION BY course
    ORDER BY
      cgpa DESC
  ) AS rank_number
FROM
  students;

SELECT
  first_name,
  cgpa,
  ROW_NUMBER() OVER (
    ORDER BY
      cgpa DESC
  ) AS row_num
FROM
  students;

SELECT
  first_name,
  cgpa,
  RANK() OVER (
    ORDER BY
      cgpa DESC
  ) AS rank
FROM
  students;

SELECT
  first_name,
  cgpa,
  DENSE_RANK() OVER (
    ORDER BY
      cgpa DESC
  ) AS dense_rank
FROM
  students;

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

SELECT
  first_name,
  course,
  cgpa,
  AVG(cgpa) OVER (PARTITION BY course) AS course_average
FROM
  students;

SELECT
  first_name,
  fee,
  SUM(fee) OVER (
    ORDER BY
      id
  ) AS running_total
FROM
  fee_payments;

SELECT
  first_name,
  course,
  AVG(cgpa) OVER(PARTITION BY course)
FROM
  students;

SELECT
  employee_name,
  department,
  sales,
  RANK() OVER (
    PARTITION BY department
    ORDER BY
      sales DESC
  ) AS department_rank
FROM
  sales;