-- Group by 
SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

-- Average
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;

-- Multiple stats
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;
