{{ config(materialized='table') }}

with stg_consumer as (
    select *
    from {{ ref('stg_customer') }}
)

select 
    c.*, 
    current_date as load_date, 
    current_date as last_modif_date,
    'GH' as main_source
from stg_consumer c