select t1.name, 
case
when t2.user_id is null then 0
else sum(t2.distance) 
end as travelled_distance
from Users t1
left join Rides t2
on t1.id = t2.user_id
group by t2.user_id, t1.name
order by travelled_distance desc, t1.name asc
