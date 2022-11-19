select customer_number
from Orders
group by customer_number -- here group before count
order by count(order_number) desc -- here count order_number or customer_number
offset 0 rows
fetch next 1 rows only 
