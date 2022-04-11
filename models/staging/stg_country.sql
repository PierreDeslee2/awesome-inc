{{ config(materialized='table') }}

with country as (
    select *
    from {{ ref('country') }}
)
select * from country c