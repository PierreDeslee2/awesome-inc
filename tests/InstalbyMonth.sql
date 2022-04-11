with fact_installation as (
    select *
    from {{ ref('fact_installation') }}
),
dim_date as (
    select *
    from {{ ref('dim_date') }}
)
select dd.id_month, count(id) from fact_installation fi
inner join dim_date dd on fi.id_installation_date = dd.id_date
--where id_month = '202110'
group by dd.id_month
order by dd.id_month