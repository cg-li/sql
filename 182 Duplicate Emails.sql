select distinct isnull(null, t1.email) as Email
from Person t1  
join Person t2
on t1.email = t2.email and t1.id <> t2.id


/* Temporary table
select Email from
(
  select Email, count(Email) as num
  from Person
  group by Email
) as statistic
where num > 1
*/

/* Having clause
select Email
from Person
group by Email
having count(Email) > 1
*/
