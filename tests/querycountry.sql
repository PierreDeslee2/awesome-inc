with country as (
    select *
    from {{ ref('dim_country') }}
)
select * from country c
order by c.id