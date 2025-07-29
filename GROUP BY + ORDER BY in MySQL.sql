-- Group By
SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender, avg(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, avg(salary)
FROM employee_salary
GROUP BY occupation
;

SELECT gender, avg(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;