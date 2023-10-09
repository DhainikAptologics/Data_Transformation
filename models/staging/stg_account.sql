-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

select AccountNumber,
    Active__c,
    AnnualRevenue,
    BillingCity,
    BillingStreet,
    CreatedById,
    CreatedDate,
    Id,
    Industry,
    LastModifiedById
from {{ ref('src_account') }}
