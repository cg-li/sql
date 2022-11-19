select distinct t1.name
from SalesPerson t1
left join Orders t3
on t1.sales_id = t3.sales_id
left join Company t2
on t3.com_id = t2.com_id
where t3.sales_id not in
(select t5.sales_id -- here this select statement ensures sales_id 4 com_id 3 record dropped
from Orders t5
inner join Company t4
on t5.com_id = t4.com_id
where t4.name = 'RED') or t3.sales_id is null
