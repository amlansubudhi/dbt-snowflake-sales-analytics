{{ config(materialized='table') }}

with last_purchase as (
    select
        customer_id,
        max(invoice_date) as last_purchase_date
    from {{ ref('fact_sales') }}
    group by 1
),

customer_summary as (
    select
        customer_id,
        count(distinct invoice_no) as frequency,
        sum(total_value) as monetary
    from {{ ref('fact_sales') }}
    group by 1
)

select
    cs.customer_id,
    datediff('day', l.last_purchase_date, current_date()) as recency,
    cs.frequency,
    cs.monetary
from customer_summary cs
left join last_purchase l
    on cs.customer_id = l.customer_id
