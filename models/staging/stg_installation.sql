{{ config(materialized='table') }}

with installation as (
    select *
    from {{ ref('installation') }}
)
select * from installation c