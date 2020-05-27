select
    id as payment_id,
    "orderID" AS order_id,
    "paymentMethod" As payment_method,
    amount AS amount,
    created AS date_created
from raw.stripe.payment