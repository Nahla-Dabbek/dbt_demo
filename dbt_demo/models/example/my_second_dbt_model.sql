
-- Use the `ref` function to select from other models

select *
from {{ ref('customers_db') }}
