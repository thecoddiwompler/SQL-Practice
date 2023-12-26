WITH cte AS (
    SELECT
        key1,
        val1,
        SUM(val1) OVER(
            ORDER BY
                key1
        ) cum_sum
    FROM
        ArrayTable
)
SELECT
    MAX(val) "Max Subarray Sum"
FROM
    (
        SELECT
            a.cum_sum - b.cum_sum val
        FROM
            cte a
            INNER JOIN cte b ON a.key1 > b.key1
        UNION ALL
        SELECT
            cum_sum val
        FROM
            cte
    );