
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with customers as (

select 
    customer_id,
    CONCAT(first_name, ' ', last_name) as full_name,
    credit_provider
from customers

)

select *
from customers

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
