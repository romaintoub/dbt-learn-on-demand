with payments as (

    select
        id as payment_id, 
        orderid as order_id,
        paymentmethod as payment_method,
        created as created_at,
        status,
        amount / 100 as amount
    
    from raw.stripe.payment       
)

select * from payments
