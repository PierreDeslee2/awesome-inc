{{ config(materialized='table') }}

with product as (
    select *
    from {{ ref('product') }}
)
select * from product c