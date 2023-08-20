WITH cte AS (
    SELECT
        user_id,
        spend_date,
        STRING_AGG(platform, ',') AS platform,
        SUM(amount) AS amount
    FROM
        users.spending
    GROUP BY
        user_id, spend_date
),
platform_cte AS (
    SELECT
        DISTINCT spend_date,
        'mobile,desktop' AS platform
    FROM
        cte
    UNION ALL
    SELECT
        DISTINCT spend_date,
        'mobile' AS platform
    FROM
        cte
    UNION ALL
    SELECT
        DISTINCT spend_date,
        'desktop' AS platform
    FROM
        cte
)
SELECT
    b.spend_date,
    CASE
        WHEN b.platform = 'mobile,desktop' THEN 'both'
        ELSE b.platform
    END AS platform,
    COALESCE(SUM(a.amount), 0) AS total_amount,
    COUNT(a.user_id) AS total_users
FROM
    platform_cte b
LEFT OUTER JOIN
    cte a ON b.platform = a.platform AND a.spend_date = b.spend_date
GROUP BY
    b.spend_date, b.platform
ORDER BY
    b.spend_date;
