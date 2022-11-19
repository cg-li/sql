/* Write your T-SQL query statement below */
select product_id, 'store1' as store, price = store1 -- here 'store1' as store cannot be replaced by store = 'store1'
from Products
where store1 is not null
union
select product_id, 'store2' as store, price = store2
from Products
where store2 is not null
union
select product_id, 'store3' as store, price = store3
from Products
where store3 is not null
