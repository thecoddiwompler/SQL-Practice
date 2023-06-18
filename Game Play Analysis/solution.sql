WITH min_calc AS(
    SELECT player_id, MIN(event_date) date_min
    FROM activity
    GROUP BY player_id
),
cte AS (
    SELECT a.player_id
    FROM activity a
    INNER JOIN min_calc b
    ON a.player_id = b.player_id
    AND datediff(a.event_date,b.date_min)=1
),
counter AS(
    SELECT COUNT(DISTINCT player_id) cnt
    FROM cte
),
total_counter AS(
    SELECT COUNT(DISTINCT player_id) total_cnt
    FROM activity
)
SELECT ROUND((counter.cnt/total_counter.total_cnt),2) fraction
FROM counter
CROSS JOIN
total_counter
