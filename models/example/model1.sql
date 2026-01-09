 {{config( materialized='table', severity='warn', tags = ['demo_tag'])}}

with source as (select * from {{ source('bakehouse', 'sales_customers') }})

select customerID, first_name, last_name, gender, {{ demo_macro('last_name') }}  from source