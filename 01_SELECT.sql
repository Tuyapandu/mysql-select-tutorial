--SELECT- Is a statement used to work with columns and specify what columns you want to see in your output
Select *
from parks_and_recreation.employee_demographics;

-- Calculations- you can add calculations to your sql and should follow the rules
--of PEMDAS (Parentheses, exponent, division, addition, subtraction)
Select first_name, 
last_name, 
birth_date, 
age, 
(age+10) * 10 +10
from parks_and_recreation.employee_demographics;

select first_name
from parks_and_recreation.employee_demographics;

select gender
from parks_and_recreation.employee_demographics
;

-- DISTINCT - Only selects the unique values in a column
-- so the output for gender should only be male and female
select distinct gender
from parks_and_recreation.employee_demographics;

-- what happens when we have two columns?
--the combination of these two columns are no longer unique.
select distinct first_name, gender
from parks_and_recreation.employee_demographics
;
