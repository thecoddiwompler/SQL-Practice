WITH cte AS (
  SELECT count(*) international_call_cnt
  FROM phone_calls a
  INNER JOIN phone_info b
  ON a.caller_id=b.caller_id
  INNER JOIN phone_info c
  ON a.receiver_id=c.caller_id
  WHERE b.country_id!=c.country_id
)
SELECT ROUND((a.international_call_cnt*100.0/b.cnt),1) international_calls_pct
FROM cte a
CROSS JOIN
(SELECT count(*) cnt FROM phone_calls) b
