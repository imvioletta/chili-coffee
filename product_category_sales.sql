select  sum(total), p.category
from `analytics-engineers-club.coffee_shop.orders` as o
left join `analytics-engineers-club.coffee_shop.order_items` as oi
    on o.id = oi.order_id
 
left join `analytics-engineers-club.coffee_shop.products` as p  
    on oi.product_id = p.id
 
group by p.category
limit 20;