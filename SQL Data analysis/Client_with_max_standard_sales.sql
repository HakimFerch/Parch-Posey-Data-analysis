with highest as (
select a.name,
	o.occurred_at,
	sum(o.standard_amt_usd) as ordercost
from orders o
join accounts a
on o.account_id=a.id
where occurred_at between '2015-11-01' and '2016-06-02'
group by 1,2)

select highest.name,
highest.occurred_at,
highest.ordercost
from highest
where ordercost=(select max(ordercost) from highest)
