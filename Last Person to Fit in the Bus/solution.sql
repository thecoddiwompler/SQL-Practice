WITH CTE AS (
    SELECT person_name, turn, SUM(weight) OVER(ORDER BY turn) cum_sum
    FROM queue
)
SELECT person_name 
FROM cte
WHERE cum_sum<=1000
AND turn IN (
    SELECT MAX(turn)
    FROM cte
    WHERE cum_sum<=1000
)
