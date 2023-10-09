{{ config (materialized= 'table')}}
SELECT 
    AccountId,
    Amount,
    CloseDate,
    CreatedById
from
{{ ref('src_opportunity')}}