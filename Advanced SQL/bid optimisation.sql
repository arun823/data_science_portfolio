select 
      year(created_at),
      week(created_at),
      min(date(created_at)) as week_start,
      count(distinct website_session_id) as sessions
      
      
from website_sessions
group by 1,
         2