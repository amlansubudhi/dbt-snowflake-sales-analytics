{{ config(materialized='table') }}

select
    date_trunc('month', invoice_date) as month,
    country,
    sum(total_value) as revenue,
    count(distinct invoice_no) as orders_count
from {{ ref('fact_sales') }}
group by 1,2
order by 1,2
