with stg_country as (
    select *
    from {{ ref('stg_country') }}
)

select 
    c.*, 
    current_date as load_date, 
    current_date as last_modif_date,
    'GH' as main_source
from stg_country c
/*left join old_dim_country dc on c.id = dc.id
union
select 
    dc.id,
    dc.load_date,
    dc.last_modif_date,
    dc.main_source
from old_dim_country dc
where dc.id not in (select c.id from stg_country c)*/