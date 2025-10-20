{{config(materialized='view')}}

select distinct
customer_id,country

from {{ref('stg_orders')}}