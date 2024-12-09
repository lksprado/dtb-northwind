with sources as (
select * from {{source('northwind', 'customers')}}
)

select 
    customer_id as id,
    contact_name as customer_name,
    city as customer_city
from sources
