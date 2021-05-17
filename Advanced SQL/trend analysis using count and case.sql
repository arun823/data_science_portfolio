select 
     primary_product_id,
     count(distinct case when items_purchased = 1 then order_id else null end) as single_item_purchased,
     count(distinct case when items_purchased = 2 then order_id else null end) as two_items_purchased
from orders
group by 1