{{ config(materialized='table') }}

with product_category as (
    select *
    from {{ ref('product_category') }}
)
select * from product_category c