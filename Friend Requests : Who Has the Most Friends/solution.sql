WITH metric AS (
    SELECT requester_id, accepter_id,
    COUNT(requester_id) OVER(PARTITION BY requester_id) AS request_count,
    COUNT(accepter_id) OVER(PARTITION BY accepter_id) AS accepter_count
    FROM requestaccepted
),
result AS (
    SELECT COALESCE(a.requester_id, b.accepter_id) AS id, 
    (COALESCE(a.request_count,0) + COALESCE(b.accepter_count,0)) AS num
    FROM metric a
    FULL OUTER JOIN metric b
    ON a.requester_id = b.accepter_id
)
SELECT id, num
FROM result
WHERE num IN (
    SELECT MAX(num)
    FROM result
)
GROUP BY id, num
