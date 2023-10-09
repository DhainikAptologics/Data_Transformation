{{ config(materialized='view') }}

with source_opportunity as (
    select *
    from
    hive_metastore.raw_salesforce.opportunity
)

select * 
from source_opportunity