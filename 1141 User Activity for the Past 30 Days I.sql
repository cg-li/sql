select distinct activity_date as day, count(distinct user_id) as active_users
from Activity 
where datediff(day, activity_date, '2019-07-27') >= 0 and datediff(day, activity_date, '2019-07-27') < 30 -- note that the datediff function in MS SQL Server is different from that in MySQL
group by activity_date -- this group statement is necessary for count(distinct)
