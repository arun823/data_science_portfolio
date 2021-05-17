select 
   pageview_url,
   count(distinct website_pageview_id) as pvs
from website_pageviews
   where website_pageview_id < 1000
group by 1
order by 2 desc