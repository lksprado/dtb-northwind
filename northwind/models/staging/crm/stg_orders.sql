with sources as (
select * from {{source('northwind','orders')}}
)

select 
    order_id,
    order_date,
    customer_id,
    ship_via,
    freight,
    ship_country
from sources