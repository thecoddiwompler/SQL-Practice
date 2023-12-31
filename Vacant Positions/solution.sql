WITH RECURSIVE cte AS (
    SELECT
        id,
        1 AS generated_int
    FROM
        job_positions
    UNION
    SELECT
        cte.id,
        generated_int + 1
    FROM
        cte
        INNER JOIN job_positions ON cte.id = job_positions.id
        AND generated_int + 1 <= job_positions.totalpost
),
employees AS (
    SELECT
        id,
        name,
        position_id,
        ROW_NUMBER() OVER(
            PARTITION BY position_id
            ORDER BY
                id
        ) rn
    FROM
        job_employees
),
positions AS (
    SELECT
        cte.id,
        a.title,
        a.groups,
        a.levels,
        a.payscale,
        cte.generated_int
    FROM
        job_positions a
        INNER JOIN cte ON a.id = cte.id
)
SELECT
    a.title,
    a.groups,
    a.levels,
    a.payscale,
    COALESCE(b.name, 'Vacant') employee_name
FROM
    positions a
    LEFT OUTER JOIN employees b ON a.id = b.position_id
    AND a.generated_int = b.rn