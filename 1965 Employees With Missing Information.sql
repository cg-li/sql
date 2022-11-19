/* Write your T-SQL query statement below */
select employee_id
from Employees a
where a.employee_id not in (select employee_id from Salaries) -- here do not use b.employee_id since b is not mentioned above
union 
select employee_id
from Salaries b
where b.employee_id not in (select employee_id from Employees)
order by employee_id asc
