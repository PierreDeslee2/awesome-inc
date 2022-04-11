{{ config(materialized='table') }}

with customer as (
    select *
    from {{ ref('customer') }}
)
select * from customer c