{{ config(materialized='table') }}

with source_data as (
    select 1000 as id, 'Medical Device' as name
    union
    select 1001 as id, 'IT & Network Stuff' as name
    union
    select 1002 as id, 'Dangerous Items' as name
    union
    select 1003 as id, 'Beauty Accessories' as name
    union
    select 1004 as id, 'Art & Creativity' as name
    union
    select 1005 as id, 'Miscellaneous' as name

)

select *
from source_data