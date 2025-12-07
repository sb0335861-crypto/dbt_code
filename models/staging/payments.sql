{{ config(materialized='table') }}

WITH tb1 as(
    select amount,
        id,
    order_id,
    payment_method

    from {{source('datafeed_shared_schema','stg_payments_data')}})
select * from tb1
