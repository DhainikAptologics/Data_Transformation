{{ config(materialized='view') }}

with source_account as (
    SELECT *
    from
    hive_metastore.dbt_dsuthar.account
)

select *
from source_account