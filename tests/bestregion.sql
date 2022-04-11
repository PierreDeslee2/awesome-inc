with fact_installation as (
    select *
    from {{ ref('fact_installation') }}
),
dim_country as (
    select *
    from {{ ref('dim_country') }}
)
select dc.region, sum(fi.price) as revenue 
from fact_installation fi
inner join dim_country dc on fi.customer_country_id = dc.id
--where dp.category_name = 'Medical Device'
group by dc.region
order by dc.region