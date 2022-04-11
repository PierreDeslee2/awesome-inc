with fact_installation as (
    select *
    from {{ ref('fact_installation') }}
),
dim_product as (
    select *
    from {{ ref('dim_product') }}
)
select dp.category_name, sum(fi.price) as revenue 
from fact_installation fi
inner join dim_product dp on fi.product_id = dp.id
--where dp.category_name = 'Medical Device'
group by dp.category_name
order by dp.category_name