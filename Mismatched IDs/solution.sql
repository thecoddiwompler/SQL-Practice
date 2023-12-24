WITH cte AS (
    SELECT
        a.id source_id,
        a.name source_name,
        b.id target_id,
        b.name target_name
    FROM
        source a FULL
        OUTER JOIN target b ON a.id = b.id
)
SELECT
    COALESCE(source_id, target_id) id,
    CASE
        WHEN target_id IS NULL THEN 'New in Source'
        WHEN source_id IS NULL THEN 'New in Target'
        WHEN source_name != target_name THEN 'Mismatch'
    END AS COMMENT
FROM
    cte
WHERE
    source_id IS NULL
    OR target_id IS NULL
    OR source_name != target_name