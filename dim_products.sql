{{config(materialized='table')}}

select distinct product_code,product_name
from {{ref('stg_orders')}}
where product_name is not null