with country as (
    select *
    from {{ ref('country') }}
)
select * from country c
where region = 'Asia';

with customer as (
    select *
    from {{ ref('customer') }}
)
select * from customer c