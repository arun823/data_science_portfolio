
select 
      website_sessions.utm_content,
      count(distinct website_sessions.website_session_id) as sessions,
      count(distinct orders.order_id) as orders,
      count(distinct orders.order_id)/count(distinct website_sessions.website_session_id) as conversion_rate
from website_sessions
left join orders
on website_sessions.website_session_id = orders.website_session_id	
group by utm_content
order by count(distinct website_sessions.website_session_id) desc