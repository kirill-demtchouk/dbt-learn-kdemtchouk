SELECT
    o.customer_id,
    o.order_id,
    o.order_date,
    o.status,
    SUM(p.amount) AS amount
FROM {{ ref('stg_orders') }} AS o
JOIN {{ ref('stg_payments') }} AS p
    ON o.order_id = p.order_id
GROUP BY 1, 2, 3, 4