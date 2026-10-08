-- Having vs Where
-- WHERE filters individual rows BEFORE grouping
-- HAVING was created to come after GROUP BY and after that one is able to filter based on aggregate functions
-- 
Select *
from parks_and_recreation.employee_demographics
;

Select occupation, avg(salary)
from parks_and_recreation.employee_salary
where occupation LIKE '%manager'
group by occupation
having avg(salary) > 75000
;
