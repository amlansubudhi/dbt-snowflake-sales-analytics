{{config(materialized='view')}}

select 
    cast(invoiceno as varchar) as invoice_no,
    cast(stockcode as varchar) as product_code,
    cast(description as varchar) as product_name,
    cast(quantity as integer) as quantity,
    cast(unitprice as float) as unit_price,
    case
        when InvoiceDate like '%-%-%' then to_timestamp(InvoiceDate, 'DD-MM-YYYY HH24:MI')
        when InvoiceDate like '%/%/%' then to_timestamp(InvoiceDate, 'MM/DD/YYYY HH24:MI')
        else null
    end as invoice_date,
    cast(customerid as varchar) as customer_id,
    country as country,
    (quantity * unitprice) as total_value

from {{ref('ecommerce_data')}}
where customerid is not null
and quantity > 0
and unitprice > 0