{{ config(materialized='table') }}

with stg_product as (
    select *
    from {{ ref('stg_product') }}
),
stg_product_category as (
    select *
    from {{ ref('stg_product_category') }}
)

select 
    c.id,
    c.reference,
    c.name,
    c.category_id,
    cast(c.price as int),
    pc.name as category_name,
    current_date as load_date, 
    current_date as last_modif_date,
    'GH' as main_source
from stg_product c
left join stg_product_category pc on c.category_id = pc.id