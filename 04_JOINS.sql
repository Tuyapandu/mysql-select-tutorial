-- JOINS
-- INNER JOINS
SELECT *
FROM employee_demographics AS empd
INNER JOIN employee_salary AS emps
	ON empd.employee_id = emps.employee_id
;

-- OUTER JOINS
SELECT *
FROM employee_demographics AS dem
RIGHT OUTER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT *
FROM employee_demographics AS dem
LEFT OUTER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- SELF-JOIN
SELECT *
FROM employee_salary AS sal1
JOIN employee_salary AS sal2
	ON sal1.employee_id +1 = sal2.employee_id
;

SELECT *
FROM employee_salary AS sal1
JOIN employee_salary AS sal2
	ON sal1.employee_id +1 = sal2.employee_id
;

SELECT sal1.employee_id AS sal_santa,
sal1.first_name AS first_name_santa,
sal1.last_name AS last_name_santa,
sal2.employee_id AS sal_santa,
sal2.first_name AS first_name_santa,
sal2.last_name AS last_name_santa
FROM employee_salary AS sal1
JOIN employee_salary AS sal2
ON sal1.employee_id +1 = sal2.employee_id
;

-- JOINING MULTIPLE TABLES TOGETHER
SELECT*
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
ON sal.dept_id = pd.department_id
;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics;

SELECT *
FROM parks_depa
