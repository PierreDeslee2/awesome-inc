{{ config(materialized='table') }}

with source_data as (
    select 1000 as id, 'Prd-75891' as reference, 'Awesome product' as name, 1002 as category_id, '12345' as price
    union
    select 1001 as id, 'Prd-84970' as reference, 'Amazing product' as name, 1000 as category_id, '4'  as price
    union
    select 1002 as id, 'Prd-94932' as reference, 'Splendid product' as name, 1005 as category_id, '12'  as price
    union
    select 1003 as id, 'Prd-74818' as reference, 'Beautiful product' as name, 1003 as category_id, '90'  as price
    union
    select 1004 as id, 'Prd-33231' as reference, 'Extraordinary product' as name, 1003 as category_id, '5'  as price
    union
    select 1005 as id, 'Prd-74815' as reference, 'Phenomenal product' as name, 1001 as category_id, '789'  as price

)

select *
from source_data