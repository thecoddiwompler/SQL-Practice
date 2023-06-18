# Write your MySQL query statement below
WITH trans_total AS (
    SELECT SUBSTR(trans_date,1,7) month, country, count(country) trans_count, sum(amount) trans_total_amount
    FROM Transactions
    GROUP BY SUBSTR(trans_date,1,7), country
),
approved_total AS (
    SELECT SUBSTR(trans_date,1,7) month, country, count(country) approved_count, sum(amount) approved_total_amount
    FROM Transactions
    WHERE state='approved'
    GROUP BY SUBSTR(trans_date,1,7), country
)

SELECT trans_total.month, trans_total.country, trans_total.trans_count,
COALESCE(approved_total.approved_count, 0) approved_count, trans_total.trans_total_amount,
COALESCE(approved_total.approved_total_amount, 0) approved_total_amount
FROM trans_total
LEFT OUTER JOIN
approved_total
ON trans_total.month = approved_total.month
AND trans_total.country = approved_total.country
