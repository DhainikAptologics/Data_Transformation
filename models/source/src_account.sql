
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with source_account as (
    SELECT *
    from
    hive_metastore.raw_salesforce.account
)

select *
from source_account

