# MySQL SELECT Statement Tutorial

MySQL SELECT statement basics with examples, using sample data from [Alex the Analyst](https://www.youtube.com/@AlexTheAnalyst)

---

## Select All Columns

```sql
SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT
first_name,
last_name,
birth_date,
age,
age + 10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT
first_name,
gender
FROM parks_and_recreation.employee_demographics;


-- Employees with salary <= 50,000
SELECT *
FROM employee_salary
WHERE salary <= 50000;

-- Born after 1985 or not male
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

-- First name Leslie AND age 44 OR age > 55
SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44)
OR age > 55
;

-- First names starting with 'a' and at least 3 letters
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%';

-- Birth dates starting with 1989
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%';


-- Group by gender
SELECT gender
FROM employee_demographics
GROUP BY gender;

-- Group and average age
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

-- Average salary by occupation
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;

-- Multiple stats by gender
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;
