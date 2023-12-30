WITH cte AS (
    SELECT
        order_date,
        customer_id,
        ROW_NUMBER() OVER (
            PARTITION by customer_id
            ORDER BY
                order_date
        ) rn
    FROM
        customer_orders
)
SELECT
    order_date,
    COUNT(customer_id) FILTER(
        WHERE
            rn = 1
    ) first_visit_customer,
    COUNT(customer_id) FILTER(
        WHERE
            rn != 1
    ) repeated_visit_customer
FROM
    cte
GROUP BY
    1
ORDER BY
    1;