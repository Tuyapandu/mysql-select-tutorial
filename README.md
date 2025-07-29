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


##  WHERE Clause & Logical Operators

```sql
-- WHERE Clause: salary filter
SELECT *
FROM employee_salary
WHERE salary <= 50000;

-- Logical Operators: OR, NOT
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

-- Combining AND and OR
SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44)
OR age > 55;


-- LIKE statements with these two charaters '%' and '_'
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%';

FROM employee_demographics
WHERE birth_date LIKE '1989%';


-- Grouped by 
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;

-- More grouped stats
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;
