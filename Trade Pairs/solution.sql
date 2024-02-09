WITH cte AS(
    SELECT
        a.trade_id tradeid1,
        b.trade_id tradeid2,
        ABS((a.price - b.price) * 100 / b.price) price_difference
    FROM
        trade_tbl a
        INNER JOIN trade_tbl b ON (a.trade_timestamp - INTERVAL '10' SECOND) <= b.trade_timestamp
        AND a.trade_timestamp > b.trade_timestamp
        AND (
            a.price * 1.1 <= b.price
            OR a.price * 0.9 >= b.price
        )
)
SELECT
    *
FROM
    cte;