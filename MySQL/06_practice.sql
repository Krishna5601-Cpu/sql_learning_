-- USE college;

-- 1.
-- SELECT
--   *
-- FROM
--   students 2.
-- SELECT
--   first_name,
--   email
-- from
--   students;

-- 3.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   age = 20;

-- 4.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   city = "Delhi";

-- 5.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   gender = "Female";

-- 6.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   cgpa = > 8.5;

-- 7.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   course = "BCA";

-- 8.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   is_active = 0;

-- 9.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   first_name LIKE "A%";

-- 10.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   first_name LIKE "%a";

-- 11.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   age BETWEEN 20
--   AND 22;

-- 12.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   cgpa > 8.5
--   AND city = "Delhi";

-- 13.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   course = "BCA"
--   OR course = "MCA";

-- 14.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   city != "Delhi";

-- 15.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   name LIKE "%h%";

-- 16.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   admission_date > "2025-01-01";

-- 17.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   semester = 3
--   AND is_active = 1;

-- 18.
-- SELECT
--   *
-- FROM
--   students
-- WHERE
--   age <> 20;

-- 19.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   first_name IN ("Krishna", "Neha", "Riya");

-- 20.
-- SELECT
--   *
-- from
--   students
-- WHERE
--   phone IS NOT NULL;