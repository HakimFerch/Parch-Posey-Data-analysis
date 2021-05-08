select 
  a.sales_rep_id rep, 
  count(o.id) as num, 
  case when count(o.id)> 200 then 'top' else 'not' end as category 
from 
  accounts a 
  join orders o on a.id = o.account_id 
group by 
  1 
order by 
  2 desc