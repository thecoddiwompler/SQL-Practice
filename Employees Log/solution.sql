WITH init AS(
    SELECT
        emp_id,
        log_date,
        flag,
        LEAD(flag) OVER(
            PARTITION by emp_id
            ORDER BY
                log_date
        ) lead_flag
    FROM
        employee_log
),
consecutive_days_tracker AS (
    SELECT
        a.emp_id,
        a.log_date,
        b.log_date prev_log_date,
        a.log_date - b.log_date date_diff,
        ROW_NUMBER() OVER(
            PARTITION by a.emp_id,
            a.log_date
            ORDER BY
                b.log_date DESC
        ) rnk
    FROM
        init a
        INNER JOIN init b ON a.emp_id = b.emp_id
        AND a.log_date >= b.log_date
        AND a.flag = 'Y'
        AND b.flag = 'Y'
        AND (
            a.lead_flag = 'N'
            OR a.lead_flag IS NULL
        )
),
solution AS (
    SELECT
        emp_id,
        log_date,
        MAX(rnk) consecutive_days
    FROM
        consecutive_days_tracker
    WHERE
        date_diff + 1 = rnk
    GROUP BY
        emp_id,
        log_date
)
SELECT
    a.emp_id,
    b.prev_log_date streak_start,
    a.log_date streak_end,
    a.consecutive_days streak_length
FROM
    solution a
    INNER JOIN consecutive_days_tracker b ON a.emp_id = b.emp_id
    AND a.consecutive_days = b.rnk
    AND a.log_date = b.log_date
WHERE
    a.consecutive_days > 1