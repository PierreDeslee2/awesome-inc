{{ config(materialized='table') }}

with source_data as (
    select 1000 as id, 'Inst-98037' as name, 'Last minute installation' as description, 1005 as product_id, 1004 as customer_id, '2021-10-22' as installation_date
    union
    select 1001 as id, 'Inst-51519' as name, 'Customer request #12345' as description, 1003 as product_id, 1005 as customer_id, '2021-10-05' as installation_date
    union
    select 1002 as id, 'Inst-12762' as name, 'Preventive Maintenance' as description, 1000 as product_id, 1000 as customer_id, '2021-09-01' as installation_date
    union
    select 1003 as id, 'Inst-22034' as name, 'Unexpectedly broken' as description, 1000 as product_id, 1001 as customer_id, '2021-09-06' as installation_date
    union
    select 1004 as id, 'Inst-97278' as name, 'Previous item missing' as description, 1002 as product_id, 1002 as customer_id, '2021-08-02' as installation_date
    union
    select 1005 as id, 'Inst-12476' as name, 'Change after bad behavior' as description, 1005 as product_id, 1003 as customer_id, '2021-08-25' as installation_date
    union
    select 1006 as id, 'Inst-51115' as name, 'Promotion' as description, 1005 as product_id, 1004 as customer_id, '2021-07-21' as installation_date
    union
    select 1007 as id, 'Inst-97282' as name, 'Fidelity offer' as description, 1004 as product_id, 1001 as customer_id, '2021-07-14' as installation_date
    union
    select 1008 as id, 'Inst-44740' as name, 'Customer call #4578' as description, 1003 as product_id, 1000 as customer_id, '2021-10-09' as installation_date
    union
    select 1009 as id, 'Inst-11213' as name, 'Sale #88' as description, 1004 as product_id, 1004 as customer_id, '2021-05-10' as installation_date
    union
    select 1010 as id, 'Inst-51600' as name, 'New customer installation' as description, 1000 as product_id, 1002 as customer_id, '2021-05-17' as installation_date
    union
    select 1011 as id, 'Inst-97281' as name, 'Pilot' as description, 1001 as product_id, 1005 as customer_id, '2021-09-30' as installation_date
    union
    select 1012 as id, 'Inst-95758' as name, 'Replacement of product' as description, 1005 as product_id, 1004 as customer_id, '2021-09-01' as installation_date
    union
    select 1013 as id, 'Inst-12438' as name, 'Upgrade to the latest version' as description, 1003 as product_id, 1005 as customer_id, '2021-07-02' as installation_date
    union
    select 1014 as id, 'Inst-30279' as name, 'False alert  but still we installed the new product' as description, 1000 as product_id, 1000 as customer_id, '2021-08-03' as installation_date
    union
    select 1015 as id, 'Inst-90761' as name, 'Installation went good' as description, 1000 as product_id, 1001 as customer_id, '2021-07-04' as installation_date
    union
    select 1016 as id, 'Inst-12460' as name, 'July 30th: smooth installation' as description, 1002 as product_id, 1002 as customer_id, '2021-07-30' as installation_date
    union
    select 1017 as id, 'Inst-00407' as name, 'I missed parts but found a solution' as description, 1005 as product_id, 1003 as customer_id, '2021-08-06' as installation_date
    union
    select 1018 as id, 'Inst-08372' as name, 'Free installation' as description, 1005 as product_id, 1004 as customer_id, '2021-08-07' as installation_date
    union
    select 1019 as id, 'Inst-04729' as name, 'Customer happy' as description, 1004 as product_id, 1001 as customer_id, '2021-10-08' as installation_date
    union
    select 1020 as id, 'Inst-34075' as name, 'Customer request #56789' as description, 1003 as product_id, 1000 as customer_id, '2021-09-09' as installation_date
    union
    select 1021 as id, 'Inst-88728' as name, 'Customer request #56715' as description, 1004 as product_id, 1004 as customer_id, '2021-04-10' as installation_date
    union
    select 1022 as id, 'Inst-10436' as name, 'Pilot #2' as description, 1000 as product_id, 1002 as customer_id, '2021-10-11' as installation_date
    union
    select 1023 as id, 'Inst-47571' as name, 'Final version' as description, 1001 as product_id, 1005 as customer_id, '2021-09-12' as installation_date
    union
    select 1024 as id, 'Inst-75801' as name, 'Final Final version' as description, 1005 as product_id, 1004 as customer_id, '2021-10-13' as installation_date
    union
    select 1025 as id, 'Inst-34816' as name, 'Final version for good' as description, 1003 as product_id, 1005 as customer_id, '2021-10-14' as installation_date
    union
    select 1026 as id, 'Inst-04702' as name, 'New customer installation' as description, 1000 as product_id, 1000 as customer_id, '2021-09-15' as installation_date
    union
    select 1027 as id, 'Inst-23592' as name, 'Promotion' as description, 1000 as product_id, 1001 as customer_id, '2021-10-16' as installation_date
    union
    select 1028 as id, 'Inst-38164' as name, 'Obsolescence' as description, 1002 as product_id, 1002 as customer_id, '2021-08-18' as installation_date
    union
    select 1029 as id, 'Inst-04809' as name, 'Installation for the king' as description, 1005 as product_id, 1003 as customer_id, '2021-08-19' as installation_date
    union
    select 1030 as id, 'Inst-38097' as name, 'Sale #47' as description, 1005 as product_id,1004 as customer_id, '2021-09-20' as installation_date
    union
    select 1031 as id, 'Inst-70549' as name, 'Sale #93' as description, 1004 as product_id,1001 as customer_id, '2021-08-21' as installation_date
    union
    select 1032 as id, 'Inst-03780' as name, 'Training' as description, 1003 as product_id,1000 as customer_id, '2021-04-22' as installation_date
    union
    select 1033 as id, 'Inst-90182' as name, 'Test' as description, 1004 as product_id, 1004 as customer_id, '2021-06-23' as installation_date
    union
    select 1034 as id, 'Inst-09112' as name, 'Install new product' as description, 1000 as product_id, 1002 as customer_id, '2021-10-24' as installation_date
    union
    select 1035 as id, 'Inst-88972' as name, 'Work during weekend' as description, 1001 as product_id, 1005 as customer_id, '2021-10-16' as installation_date


)

select *
from source_data