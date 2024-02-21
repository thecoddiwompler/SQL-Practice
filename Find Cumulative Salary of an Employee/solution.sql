WITH cte AS (
    SELECT
        a.id,
        a.month,
        b.salary
    FROM
        employee a
        INNER JOIN employee b ON a.id = b.id
        AND (
            a.month = b.month
            OR a.month = b.month + 1
            OR a.month = b.month + 2
        )
),
cum_sum AS (
    SELECT
        id,
        MONTH,
        sum(salary) salary
    FROM
        cte
    GROUP BY
        id,
        MONTH
),
recent_month AS (
    SELECT
        id,
        max(MONTH) recent_month
    FROM
        employee
    GROUP BY
        id
)
SELECT
    a.id,
    a.month,
    a.salary
FROM
    cum_sum a
    INNER JOIN recent_month b ON a.id = b.id
    AND a.month != b.recent_month
ORDER BY
    a.id,
    a.month DESC;