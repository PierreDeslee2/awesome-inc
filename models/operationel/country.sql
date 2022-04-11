{{ config(materialized='table') }}

with source_data as (
    select 1000 as id, 'Belgium' as name, 'Europe' as region
    union
    select 1001 as id, 'Spain' as name, 'Europe' as region
    union
    select 1002 as id, 'Pakistan' as name, 'Asia' as region
    union
    select 1003 as id, 'Senegal' as name, 'Africa' as region
    union
    select 1004 as id, 'Greece' as name, 'Europe' as region
    union
    select 1005 as id, 'Poland' as name, 'Europe' as region
    union
    select 1006 as id, 'Argentina' as name, 'America' as region
    union
    select 1007 as id, 'Canada' as name, 'America' as region
    union
    select 1008 as id, 'Vietnam' as name, 'Asia' as region

)

select *
from source_data
