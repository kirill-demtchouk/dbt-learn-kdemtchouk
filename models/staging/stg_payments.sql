select
    id as payment_id,
    "orderID" AS order_id,
    "paymentMethod" As payment_method,
    amount/100 AS amount,
    created AS date_created
from {{ source('stripe', 'payment') }}