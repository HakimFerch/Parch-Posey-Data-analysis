select date_trunc('month',o.occurred_at),
sum(o.total_amt_usd),
dense_rank() over(order by sum(o.total_amt_usd))
from orders o
join accounts a
on o.account_id=a.id
group by 1
having sum(o.total_amt_usd)>1000000
