{{config(materialized='table')}}

with source as (
    select * 
            from {{source('datafeed_shared_schema','stg_supplies_data')}}
),

renamed as
(
    select 
            id as supply_id,
            sku as product_id,
            name as supply_name,
           '' as supply_cost,
            perishable as is_perishable_supply
        from source
) 
select * from renamed