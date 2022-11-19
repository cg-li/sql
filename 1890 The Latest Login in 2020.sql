select l1.user_id, max(l1.time_stamp) as last_stamp
from Logins l1
join Logins l2
on l1.user_id = l2.user_id
where year(l1.time_stamp) = 2020
group by l1.user_id
