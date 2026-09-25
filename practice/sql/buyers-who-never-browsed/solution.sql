select distinct u.username, t.total_amount
from users u
inner join transactions t
on u.user_id=t.user_id
left join page_views p
on t.user_id = p.user_id 
where p.user_id is null
order by t.total_amount asc;
