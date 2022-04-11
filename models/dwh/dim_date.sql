{{ config(materialized='table') }}

with stg_installation as (
    select *
    from {{ ref('stg_installation') }}
)

select distinct
    to_char(to_date(i.installation_date,'yyyy-mm-dd'),'yyyymmdd') as id_date,
    to_char(to_date(i.installation_date,'yyyy-mm-dd'),'yyyymm') as id_month
from stg_installation i