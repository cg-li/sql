with cte as 
(
select t2.name as Department, t1.name as Employee, t1.salary as Salary,
dense_rank() over (partition by t2.id order by t1.salary desc)  as rn 
from Employee t1
join Department t2
on t1.departmentId = t2.id
)
select Department, Employee, Salary
from cte
where rn <= 3


/* Idea:  A top 3 salary in this company means there is no more than 3 salary bigger than itself in the company.
   Alternative solution:

SELECT
    d.Name AS 'Department', e1.Name AS 'Employee', e1.Salary
FROM
    Employee e1
        JOIN
    Department d ON e1.DepartmentId = d.Id
WHERE
    3 > (SELECT
            COUNT(DISTINCT e2.Salary)
        FROM
            Employee e2
        WHERE
            e2.Salary > e1.Salary
                AND e1.DepartmentId = e2.DepartmentId
        )
*/
