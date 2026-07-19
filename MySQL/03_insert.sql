USE college;

INSERT INTO students (id, name, age, email)
VALUES (1, 'Krishna', 20, 'krishna@gmail.com');

INSERT INTO students (id, name, age, email)
VALUES
(2, 'Rahul', 19, 'rahul@gmail.com'),
(3, 'Priya', 21, 'priya@gmail.com'),
(4, 'Aman', 20, 'aman@gmail.com');


INSERT INTO students (name, age, email)
VALUES ("Neha", 22, "neha@gmail.com");

SELECT * FROM students;