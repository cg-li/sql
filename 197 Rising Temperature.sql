select w1.id
from Weather w1
left join Weather w2
on datediff(day, w1.recordDate, w2.recordDate) = -1 -- dates have to be compared like this
where w1.temperature > w2.temperature
