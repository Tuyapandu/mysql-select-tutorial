-- GROUP BY AND ORDER BY CLAUSE
-- Going to group together rows that have the same values in the specified column/s that youre actually grouping on
-- once you group those rows together you can run sth called an aggregate function on those rows

Select *
from parks_and_recreation.employee_demographics;

Select gender
from parks_and_recreation.employee_demographics
group by gender
;

-- you should add an aggregate function if you are going to group by a different column
Select gender, AVG(age)
from parks_and_recreation.employee_demographics
group by gender
;

Select *
from parks_and_recreation.employee_demographics
;

Select *
from parks_and_recreation.employee_salary
;

Select occupation, salary
from parks_and_recreation.employee_salary
group by occupation, salary
;

Select gender, AVG(age), MAX(age), MIN(age), COUNT(age)
from parks_and_recreation.employee_demographics
group by gender
;

-- ORDER BY
-- is going to actually sort the result set in asc or desc order
Select *
from parks_and_recreation.employee_demographics
;

Select *
from parks_and_recreation.employee_demographics
ORDER BY first_name
;

Select *
from parks_and_recreation.employee_demographics
ORDER BY age,  first_name
;

-- not recommended but you dont actualy have to use the column names.
-- you can use the column positions
Select *
from parks_and_recreation.employee_demographics
ORDER BY 5, 4
;
