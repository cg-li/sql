select id, 
case
when p_id is null then 'Root'
/* Note that "where p_id is not null" is necessary*/
when id not in (select p_id from Tree where p_id is not null) then 'Leaf'
when id in (select p_id from Tree where p_id is not null) then 'Inner'
end as type
from Tree
order by id
