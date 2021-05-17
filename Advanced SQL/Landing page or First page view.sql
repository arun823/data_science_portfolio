create temporary table first_page_view
Select
   website_session_id,
   min(website_pageview_id) as min_pv_id
from website_pageviews
where website_pageview_id < 1000
group by 1;


select 
   website_pageviews.pageview_url as landing_page,
   count(distinct first_page_view.website_session_id) as sessions_hitting_this_lander
   
from first_page_view
   left join website_pageviews
      on website_pageviews.website_pageview_id = first_page_view.min_pv_id
