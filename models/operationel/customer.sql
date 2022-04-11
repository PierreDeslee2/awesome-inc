{{ config(materialized='table') }}

with source_data as (
    select 1000 as id, 'Alberto Alvaro' as name, 'alberto@alvaro.com' as email, 1001 as country_id, 'yes' as premium_customer
    union
    select 1001 as id, 'Quoc Dat Pham' as name, 'qd.pham@bigprojects.com' as email, 1008 as country_id, 'yes' as premium_customer
    union
    select 1002 as id, 'John Smith' as name, 'john@pocahontas.ca' as email, 1007 as country_id, 'no' as premium_customer
    union
    select 1003 as id, 'Yiannis Constantinos' as name, 'constantinos@hwb.com' as email, 1004 as country_id, 'yes' as premium_customer
    union
    select 1004 as id, 'Maxime Van Buyten' as name, 'mvb@city.brussels' as email, 1000 as country_id, 'no' as premium_customer
    union
    select 1005 as id, 'Jane Doe' as name, 'jdoe@skynet.be' as email, 1000 as country_id, 'yes' as premium_customer

)

select *
from source_data