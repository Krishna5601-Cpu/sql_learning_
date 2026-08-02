USE college;

SELECT
  e.employee_name,
  m.manager_id as manager_names
FROM
  employees e
  INNER JOIN employees m e.manager_id = m.employee_id;

SELECT
  m.employee_name,
  COUNT(e.employee_id) AS total_employees
FROM
  employees e
  JOIN employees m ON e.manager_id = m.employee_id
GROUP BY
  m.employee_name;

SELECT
  employee_name
FROM
  employees
WHERE
  manager_id IS NULL;

SELECT
  e.employee_name AS employee,
  m.employee_name AS manager
FROM
  employees e
  LEFT JOIN employees m ON e.manager_id = m.employee_id;

SELECT
  e.employee_name,
  m.employee_name AS manager
FROM
  employees e
  INNER JOIN employees m ON e.manager_id = m.employee_id;

SELECT
  e.employee_name,
  m.employee_name AS manager
FROM
  employees e
  LEFT JOIN employees m ON e.manager_id = m.employee_id
WHERE
  e.manager_id IS NOT NULL;

SELECT
  employee_name
FROM
  employees
WHERE
  manager_id IS NULL;

SELECT
  DISTINCT m.employee_name AS manager
FROM
  employees e
  JOIN employees m ON e.manager_id = m.employee_id
ORDER BY
  manager;

SELECT
  m.employee_name AS manager,
  COUNT(e.employee_id) AS total_employees
FROM
  employees e
  JOIN employees m ON e.manager_id = m.employee_id
GROUP BY
  m.employee_id,
  m.employee_name;

SELECT
  m.employee_name AS manager,
  COUNT(e.employee_id) AS total_employees
FROM
  employees e
  JOIN employees m ON e.manager_id = m.employee_id
GROUP BY
  m.employee_id,
  m.employee_name
HAVING
  COUNT(e.employee_id) > 1;

SELECT
  e.employee_name
FROM
  employees e
  JOIN employees m ON e.manager_id = m.employee_id
WHERE
  m.employee_name = 'Rajesh';

SELECT
  e.employee_name
FROM
  employees e
  JOIN employees m ON e.manager_id = m.employee_id
WHERE
  m.employee_name = 'Amit';

SELECT
  e.employee_name AS employee,
  m.employee_name AS manager,
  gm.employee_name AS manager_manager
FROM
  employees e
  LEFT JOIN employees m ON e.manager_id = m.employee_id
  LEFT JOIN employees gm ON m.manager_id = gm.employee_id;

SELECT
  e.employee_name,
  e.salary,
  m.employee_name AS manager,
  m.salary AS manager_salary
FROM
  employees e
  JOIN employees m ON e.manager_id = m.employee_id
WHERE
  e.salary > m.salary;

  