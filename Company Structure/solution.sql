WITH recursive cte AS (
    SELECT
        employee,
        manager
    FROM
        company a
    UNION
    SELECT
        a.employee,
        b.manager
    FROM
        cte a
        INNER JOIN company b ON a.manager = b.employee
    WHERE
        b.manager IS NOT NULL
),
team_leads AS (
    SELECT
        employee,
        manager,
        row_number() over(
            ORDER BY
                employee
        ) rn
    FROM
        company
    WHERE
        manager IN (
            SELECT
                employee
            FROM
                company
            WHERE
                manager IS NULL
        )
),
all_emps AS (
    SELECT
        a.employee,
        b.rn
    FROM
        cte a
        INNER JOIN team_leads b ON a.manager = b.employee
    UNION
    SELECT
        employee,
        rn
    FROM
        team_leads
)
SELECT
    concat('Team ', b.rn) team,
    concat(
        a.employee,
        ' ,',
        string_agg(
            b.employee,
            ', '
            ORDER BY
                b.employee
        )
    ) members
FROM
    all_emps b
    CROSS JOIN (
        SELECT
            employee
        FROM
            company
        WHERE
            manager IS NULL
    ) a
GROUP BY
    rn,
    a.employee;