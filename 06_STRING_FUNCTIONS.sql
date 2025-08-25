--  STRING FUNCTIONS in MySQL
-- BUILT IN FUNCTIONS WITHIN MYSQL THAT HELP US USE STRINGS AND WORK WITH STRINGS DIFFERENTLY

-- LENGTH
SELECT length('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY length(first_name)
;

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY first_name
;

-- UPPER
-- LOWER
SELECT first_name, UPPER(first_name)
FROM employee_demographics
ORDER BY first_name
;

SELECT first_name, LOWER(first_name)
FROM employee_demographics
ORDER BY first_name
;

-- RIGHT AND LEFT TRIM
-- LEFT TRIM ONLYGETS RID OF THE LEFT SPACE AND WHITE TRIM GETS RID OF THE WHITE SPACE
-- TRIM IS BASICALLY GOING TO TAKE THE WHITE SPACE ON THE FRONT OR THE END AND GET RID OF IT 

SELECT TRIM('    SKY     ');
SELECT ltrim('   sally    ');
SELECT rtrim('      sally      ');

-- SUBSTRING
SELECT first_name,
LEFT(first_name,4),
RIGHT(first_name,3),
SUBSTRING(first_name,3,2) 
FROM employee_demographics;

SELECT first_name, birth_date,
LEFT(first_name,3)AS nickname,
SUBSTRING(birth_date,6,2) birth_month
FROM employee_demographics;

-- REPLACE
-- IT WILL REPLACE A SPECIFIC CHARACTER WITH A DIFFERENT CHARACTER THAT  YOU WANT
SELECT*
FROM employee_demographics;

SELECT first_name, REPLACE(first_name,'a','o')
FROM employee_demographics;

-- LOCATE
SELECT*
FROM employee_demographics;

SELECT LOCATE('T','Tuyakula');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

-- CONCAT
-- COMBINES COLUMNS IN ONE SINGLE COLUMN

SELECT*
FROM employee_demographics;

SELECT first_name, last_name
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) full_name
FROM employee_demographics;
