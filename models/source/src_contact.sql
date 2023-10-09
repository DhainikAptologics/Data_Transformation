{{ config(materialized = 'view')}}

with src_contact as (
    select *
    from
    hive_metastore.raw_salesforce.contact
)

SELECT *
from src_contact