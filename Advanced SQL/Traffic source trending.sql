select 
      
    min(date(created_at)) as week_start_at,
   count(distinct website_session_id) as sessions
from website_sessions
where utm_source = 'gsearch' and utm_campaign = 'nonbrand'
group by week(created_at)