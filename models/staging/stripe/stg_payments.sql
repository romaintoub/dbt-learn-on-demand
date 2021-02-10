select
    id as payment_id, 
    orderid as order_id,
    paymentmethod as payment_method,
    created as created_at,
    status,
    -- amount is stored in cents, convert it to dollars
    {{ cents_to_dollars('amount', 4)}} as amount

from {{ source( 'stripe', 'payment')}}