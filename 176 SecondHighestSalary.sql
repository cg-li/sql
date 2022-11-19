/* Write your T-SQL query statement below */
select 
isnull(null,
(select distinct salary from Employee
order by salary desc
offset 1 rows  -- offset and fecch is for MS SQL Server only, otherwise, use limit and offset
fetch next 1 rows only)) 
as SecondHighestSalary


/*
select SecondHighestSalary = 
case
when count(distinct salary) > 1 then (select min(twohighest) from (select distinct top 2 salary as twohighest from Employee order by salary desc) t)
else null
end
from Employee
*/
