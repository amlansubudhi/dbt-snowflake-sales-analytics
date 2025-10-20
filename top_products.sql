{{ config(materialized='table') }}

select
    product_code,
    product_name,
    sum(total_value) as revenue,
    sum(quantity) as total_units_sold
from {{ ref('fact_sales') }}
group by 1,2
order by revenue desc
limit 10
