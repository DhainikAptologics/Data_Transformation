{{ config(materialized = 'table')}}

SELECT
    *
FROM 
{{ ref('src_contact')}}