{% snapshot orders_snapshot %}

{{
    config(
      target_database='hive_metastore',
      target_schema='dhainik',
      unique_key='AccountNumber',

      strategy='timestamp',
      updated_at='CreatedDate',
    )
}}
   SELECT * FROM {{ ref ('dim_account')}}

{% endsnapshot %}