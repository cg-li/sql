select t1.user_id as buyer_id, t1.join_date, sum(case when year(t2.order_date) = 2019 then 1 else 0 end) as orders_in_2019  -- here sum instead of count is needed
from Users t1
left join Orders t2
on t2.buyer_id = t1.user_id
group by t1.user_id, t2.buyer_id, t1.join_date
order by t1.user_id asc

/* An alternative using count() function

select t1.user_id as buyer_id, t1.join_date, count(t2.order_date) as orders_in_2019
from Users t1
left join Orders t2
on t2.buyer_id = t1.user_id and year(t2.order_date) = 2019
group by t1.user_id, t2.buyer_id, t1.join_date
order by t1.user_id asc


*/
