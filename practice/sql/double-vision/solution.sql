select email, count(user_id) as occurrence_count, min(signup_date) as earliest_signup, max(signup_date) as latest_signup
from users
group by email
having count(user_id)>1 and email is not null;
