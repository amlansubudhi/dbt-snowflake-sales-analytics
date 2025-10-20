{{ config(materialized='table') }}

select
    o.invoice_no,
    o.invoice_date,
    o.customer_id,
    o.product_code,
    o.product_name,
    o.quantity,
    o.unit_price,
    o.total_value,
    c.country
from {{ ref('stg_orders') }} o
left join {{ ref('dim_customers') }} c
    on o.customer_id = c.customer_id
