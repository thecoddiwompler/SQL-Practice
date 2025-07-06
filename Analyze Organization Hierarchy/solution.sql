WITH RECURSIVE cte AS (
    SELECT
        employee_id,
        employee_name,
        manager_id,
        1 AS LEVEL,
        salary
    FROM
        employees
    UNION
    ALL
    SELECT
        a.employee_id,
        a.employee_name,
        b.manager_id,
        a.level + 1,
        a.salary
    FROM
        cte a
        INNER JOIN employees b ON a.manager_id = b.employee_id
),
sol1 AS (
    SELECT
        employee_id,
        employee_name,
        salary,
        max(LEVEL) LEVEL
    FROM
        cte
    GROUP BY
        employee_id,
        employee_name,
        salary
),
sol2 AS (
    SELECT
        manager_id employee_id,
        count(*) team_size,
        sum(salary) budget
    FROM
        cte
    GROUP BY
        manager_id
)
SELECT
    a.employee_id,
    a.employee_name,
    a.level,
    coalesce(b.team_size, 0) team_size,
    a.salary + coalesce(b.budget, 0) AS budget
FROM
    sol1 a
    LEFT OUTER JOIN sol2 b ON a.employee_id = b.employee_id
ORDER BY
    LEVEL,
    budget DESC,
    employee_name