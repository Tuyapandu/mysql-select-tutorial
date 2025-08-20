-- WHERE Statements
-- The WHERE clause is used to filter records based on conditions
-- Operators include =, >, <, >=, <=, <>, LIKE

-- Filter by salary greater than 50000
SELECT *
FROM employee_salary
WHERE salary <= 50000;

-- Filter by specific department
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

-- Conditions with AND
SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44)
OR age > 55
;

-- LIKE Statements
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';
