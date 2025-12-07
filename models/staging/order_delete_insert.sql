{{ config(materialized="incremental",
          incremental_strategy="delete+insert",
         ) }}
select * from {{source('datafeed_shared_schema','stg_order_data')}} 
