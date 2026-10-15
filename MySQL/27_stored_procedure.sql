DELIMITER / / CREATE PROCEDURE GetAllStudents() BEGIN
SELECT
  *
FROM
  students;

END / / DELIMITER;

CALL GetAllStudents();

DELIMITER / / CREATE PROCEDURE GetStudentsByCity(IN city_name VARCHAR(50)) BEGIN
SELECT
  *
FROM
  students
WHERE
  city = city_name;

END / / DELIMITER;

CALL GetStudentsByCity('Delhi');

DELIMITER / / CREATE PROCEDURE CountStudents(OUT total INT) BEGIN
SELECT
  COUNT(*) INTO total
FROM
  students;

END / / DELIMITER;

CALL CountStudents(@total);

SELECT
  @total AS total_students;

DELIMITER / / CREATE PROCEDURE GetStudentsByCourse(IN requested_course VARCHAR(100)) BEGIN
END / / DELIMITER;