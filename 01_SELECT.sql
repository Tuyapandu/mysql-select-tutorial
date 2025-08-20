-- BASIC SELECT example
-- The SELECT statement is used to retrieve data from a table.
-- Basic format: SELECT column1, column2 FROM table_name;

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
