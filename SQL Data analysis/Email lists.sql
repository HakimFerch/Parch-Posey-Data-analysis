with sub as( select 
name,
left(primary_poc,strpos(primary_poc,' ')-1) as first_name,
right(primary_poc,length(primary_poc)-strpos(primary_poc,' ')) as last_name 
from accounts)
select 
first_name,
last_name,
concat(first_name,'',last_name,'@',replace(name,' ',''),'','.com') as email,
concat(left(first_name,1),'',right(first_name,1),'',left(last_name,1),'',right(last_name,1),'',length(last_name),'',upper(replace(name,' ',''))) as password
from sub
