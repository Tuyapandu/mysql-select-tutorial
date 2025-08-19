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

-- WHERE Statements
SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

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

# SQL Learning Journey 🚀

This repository contains my SQL notes and practice queries as I work through Alex the Analyst’s Bootcamp.  
I’m using this as both a study guide and a portfolio to track my progress.

## 📘 Topics Covered
- [SELECT & SELECT DISTINCT](./SELECT.md)
- [WHERE & LIKE Statements](./WHERE.md)
- [GROUP BY & ORDER BY](./GROUPBY.md)
- [JOINS](./JOINS.md)
- [Subqueries & CTEs](./SUBQUERIES.md)
- [Self Joins](./SELFJOIN.md)

## 📂 Projects
I’ll also be adding projects here that use everything from basic `SELECT` statements to `JOINS`.  
Projects will cover:
- IoT Data (e.g. smart sensors, weather station logs)  
- Sales & Business Analytics (e.g. customer orders, revenue tracking)  
- General data analysis projects (movies, COVID data, HR database, etc.)
 basic `SELECT` statements to `JOINS`.  
Projects will cover:
- IoT Data (e.g. smart sensors, weather station logs)  
- Sales & Business Analytics (e.g. customer orders, revenue tracking)  
- General data analysis projects (movies, COVID data, HR database, etc.)

