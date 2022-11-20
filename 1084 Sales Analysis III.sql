select t1.product_id, t1.product_name
from Product t1
left join Sales t2
on t1.product_id = t2.product_id
group by t1.product_id, t1.product_name
having max(t2.sale_date) <= '2019-03-31' and min(t2.sale_date) >= '2019-01-01'
