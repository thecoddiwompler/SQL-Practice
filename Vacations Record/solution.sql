WITH recursive vacation_days AS (
    SELECT
        id,
        emp_id,
        from_dt AS dt
    FROM
        vacation_plans
    UNION
    SELECT
        a.id,
        a.emp_id,
        a.dt + 1
    FROM
        vacation_days a
        INNER JOIN vacation_plans b ON a.emp_id = b.emp_id
        AND a.id = b.id
    WHERE
        a.dt + 1 <= b.to_dt
),
vacation_details AS (
    SELECT
        id,
        emp_id,
        min(dt) from_dt,
        max(dt) to_dt,
        count(dt) filter(
            WHERE
                EXTRACT(
                    DOW
                    FROM
                        dt
                ) NOT IN (0, 6)
        ) vacation_days
    FROM
        vacation_days
    GROUP BY
        id,
        emp_id
),
extended_vacation_details AS (
    SELECT
        id,
        emp_id,
        from_dt,
        to_dt,
        vacation_days,
        sum(vacation_days) over(
            PARTITION by emp_id
            ORDER BY
                from_dt
        ) cumulative_vacation_days
    FROM
        vacation_details
)
SELECT
    a.id,
    a.emp_id,
    a.from_dt,
    a.to_dt,
    a.vacation_days,
    CASE
        WHEN a.cumulative_vacation_days <= b.balance THEN 'Approved'
        ELSE 'Insufficient Leave Balance'
    END AS STATUS
FROM
    extended_vacation_details a
    INNER JOIN leave_balance b ON a.emp_id = b.emp_id
ORDER BY
    id;