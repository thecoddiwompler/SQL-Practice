WITH cte AS (
    SELECT id, num, 
    LAG(num) OVER(ORDER BY id) num_lag,
    LEAD(num) OVER(ORDER BY id) num_lead
    FROM logs
)
SELECT distinct num consecutivenums
FROM cte
WHERE num=num_lag
AND num=num_lead
