WITH confirmed AS (
  SELECT a.user_id, COALESCE(COUNT(b.user_id), 0) cnt_confirmed
  FROM Signups a
  LEFT OUTER JOIN 
  (SELECT * FROM Confirmations WHERE action='confirmed') b
  ON a.user_id=b.user_id
  GROUP BY a.user_id
),
total AS (
  SELECT a.user_id, COUNT(a.user_id) cnt_total
  FROM Signups a
  LEFT OUTER JOIN Confirmations b
  ON a.user_id=b.user_id
  GROUP BY a.user_id
)

SELECT total.user_id, ROUND(confirmed.cnt_confirmed/total.cnt_total, 2) confirmation_rate
FROM confirmed
INNER JOIN total
ON confirmed.user_id=total.user_id
