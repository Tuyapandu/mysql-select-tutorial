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

