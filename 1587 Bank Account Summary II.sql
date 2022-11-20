select t1.name, sum(t2.amount) as balance
from Users t1
left join Transactions t2
on t1.account = t2.account
group by t1.account, t1.name
having sum(t2.amount) > 10000
