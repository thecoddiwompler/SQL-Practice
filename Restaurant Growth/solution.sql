WITH cte AS (
    SELECT visited_on, SUM(amount) amt
    FROM customer
    GROUP BY visited_on
),
sol AS (
    SELECT visited_on, amt,
    (SUM(amt) OVER(ORDER BY visited_on)-amt) lag_amt
    FROM cte
)
SELECT a.visited_on, (a.amt+a.lag_amt-b.lag_amt) amount, ROUND((a.amt+a.lag_amt-b.lag_amt)/7,2) average_amount
FROM sol a
INNER JOIN sol b
ON DATEDIFF(a.visited_on,b.visited_on)=6
