-- WHERE Clause
SELECT *
FROM employee_salary
WHERE salary <= 50000
;

-- Logical Operaors
-- AND OR NOT
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) 
OR age > 55
;

-- LIKE STATEMENT
-- % and _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%'
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;