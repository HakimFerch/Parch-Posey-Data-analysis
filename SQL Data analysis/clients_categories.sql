
with max_sales as (
  select 
    s.name as name, 
    r.name as region, 
    sum(o.total_amt_usd) as total 
  from 
    sales_reps s 
    join region r on s.region_id = r.id 
    join accounts a on a.sales_rep_id = s.id 
    join orders o on o.account_id = a.id 
  group by 
    1, 
    2
) 
select 
  name, 
  region, 
  max 
from 
  (
    select 
      name, 
      region, 
      total, 
      max(total) over(partition by region) 
    from 
      max_sales
  ) sub 
where 
  max = total
