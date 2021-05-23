with sub as (select distinct sum(total_amt_usd) as total_sales,
case when sum(total_amt_usd) < 50000 then 'Low' 
when sum(total_amt_usd) between 50000 and 100000 then 'Average'
when sum(total_amt_usd) between 100000 and 200000 then 'High'
else 'Very High' end as categories,
account_id
from orders
group by 3)
select categories,count(*),
min(total_sales),
avg(total_sales),
max(total_sales)
from sub
group by 1

