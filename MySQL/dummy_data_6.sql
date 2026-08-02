USE college;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100),
    manager_id INT,

    FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);

INSERT INTO employees
(employee_name, manager_id)
VALUES
('Rajesh', NULL),
('Amit', 1),
('Priya', 1),
('Rohit', 2),
('Neha', 2),
('Karan', 3),
('Ankit', 3);

