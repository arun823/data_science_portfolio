create temporary table first_page_views
select 
    website_session_id,
    min(website_pageview_id) as first_page_id
   
   from website_pageviews
   where created_at < '2012-06-14'
   group by 1;
   
   select 
   first_page_views.website_session_id,
   website_pageviews.pageview_url as landing_page
   from first_page_views
   left join website_pageviews
   on website_pageviews.website_pageview_id = first_page_views.first_page_id
   group by 1