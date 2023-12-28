WITH cte AS (
    SELECT
        a.id,
        a.p_id,
        b.id c_id
    FROM
        tree a
        LEFT JOIN tree b ON a.id = b.p_id
)
SELECT
    id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN c_id IS NULL THEN 'Leaf'
        ELSE 'Inner'
    END AS TYPE
FROM
    cte
GROUP BY
    id,
    CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN c_id IS NULL THEN 'Leaf'
        ELSE 'Inner'
    END