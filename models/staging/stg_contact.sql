{{ config(materialized = 'table')}}

SELECT
    AccountId,
    AssistantName,
    Birthdate,
    CreatedById,
    CreatedDate,
    Department,
    Email,
    Fax,
    FirstName,
    Id
FROM 
{{ ref('src_contact')}}