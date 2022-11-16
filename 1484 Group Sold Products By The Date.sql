select sell_date, count(distinct product) as num_sold, string_agg(convert(nvarchar(max), product), ',') within group(order by product asc) as products
from
(select distinct sell_date, product from Activities) t
group by sell_date
/* notice the t before group by is necessary */
