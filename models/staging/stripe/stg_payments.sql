with payments as (

    select
        id as payment_id, 
        orderid as order_id,
        paymentmethod as payment_method,
        created as created_at,
        _batched_at as batched_at,
        status,
        amount
    
    from raw.stripe.payment       
)

select * from payments
