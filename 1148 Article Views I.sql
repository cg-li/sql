select distinct v1.author_id as id  -- here v1. is necessary
from Views v1
join Views v2
on v1.author_id = v2.author_id
where v1.author_id = v2.viewer_id
order by v1.author_id
