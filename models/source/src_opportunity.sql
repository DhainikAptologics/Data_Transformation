{{ config(materialized='view') }}

with source_opportunity as (
    select *
    from
    hive_metastore.dbt_dsuthar.opportunity
)

select * 
from source_opportunity