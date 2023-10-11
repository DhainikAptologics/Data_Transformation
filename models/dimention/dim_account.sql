-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

SELECT 
    * 
FROM {{ ref('src_account') }} 
WHERE 
    AccountNumber NOT IN (
        SELECT AccountNumber FROM {{ ref('src_account') }} 
        GROUP BY AccountNumber 
        HAVING COUNT(AccountNumber) > 1
        ) 
    and AccountNumber IS NOT NULL