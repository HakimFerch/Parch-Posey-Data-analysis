select a.name,round(AVG(o.gloss_qty),2) as gloss,round(avg(o.standard_qty),2) as standard,round(avg(o.poster_qty),2) as poster
from orders o
join accounts a
on o.account_id=a.id
group by a.name
order by 1
 