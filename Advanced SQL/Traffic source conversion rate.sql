select
       count(distinct website_sessions.website_session_id) as sessions,
       count(distinct orders.order_id) as orders,
	count(distinct orders.order_id)/count(distinct website_sessions.website_session_id)as conv_rate
from website_sessions
left join orders
on website_sessions.website_session_id = orders.website_session_id
where website_sessions.created_at < '2012-04-14' and utm_source = 'gsearch' and utm_campaign = 'nonbrand'