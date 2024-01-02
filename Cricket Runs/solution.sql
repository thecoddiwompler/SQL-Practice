WITH delivery_no AS (
    SELECT
        ball_no,
        runs,
        delivery_type,
        SUM(
            CASE
                WHEN delivery_type = 'legal' THEN 1
                ELSE 0
            END
        ) OVER(
            ORDER BY
                ball_no
        ) AS delivery_no,
        CASE
            WHEN delivery_type = 'legal' THEN runs
            ELSE runs + 1
        END AS net_run
    FROM
        cricket_runs
),
net_run AS (
    SELECT
        CASE
            WHEN delivery_no % 6 = 0
            AND LAG(delivery_no) OVER(
                ORDER BY
                    ball_no
            ) % 6 != 0 THEN delivery_no / 6
            ELSE delivery_no / 6 + 1
        END AS over_no,
        net_run
    FROM
        delivery_no
)
SELECT
    over_no,
    SUM(net_run) total_runs
FROM
    net_run
GROUP BY
    over_no
ORDER BY
    over_no;