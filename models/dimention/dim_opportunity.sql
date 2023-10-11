{{ config (materialized= 'table')}}
SELECT 
    *
from
{{ ref('src_opportunity')}}