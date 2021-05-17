select 
      min(date(created_at)) as week_start,
      count(device_type),
      count(distinct case when device_type = 'desktop' then website_session_id else null end) as d_type ,
      count(distinct case when device_type = 'mobile' then website_session_id else null end) as m_type
from website_sessions
group by year(created_at),
         week(created_at)