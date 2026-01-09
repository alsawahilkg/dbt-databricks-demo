{{ config(severity='warn') }}
with source as (
      select * from {{ source('bakehouse', 'sales_customers') }}
  )
select * from source
where first_name = 'Katherine' and gender = 'male'