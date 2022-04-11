{{ config(materialized='table') }}

with stg_installation as (
    select *
    from {{ ref('stg_installation') }}
),
dim_customer as (
    select *
    from {{ ref('dim_customer') }}
),
dim_country as (
    select *
    from {{ ref('dim_country') }}
),
dim_product as (
    select *
    from {{ ref('dim_product') }}
)

select 
    i.*,
    to_char(to_date(i.installation_date,'yyyy-mm-dd'),'yyyymmdd') as id_installation_date,
    cou.id as customer_country_id,
    p.price,
    current_date as load_date, 
    current_date as last_modif_date,
    'GH' as main_source
from stg_installation i
left join dim_customer con on i.customer_id = con.id
left join dim_country cou on con.country_id = cou.id

left join dim_product p on i.product_id = p.id