WITH first_metric AS (
    SELECT tiv_2015, COUNT(tiv_2015) cnt
    FROM insurance
    GROUP BY tiv_2015
    HAVING COUNT(tiv_2015)>1
),
second_metric AS (
    SELECT lat, lon, COUNT(*)
    FROM insurance
    GROUP BY lat, lon
    HAVING COUNT(*)=1
),
sol AS (
    SELECT ROUND(SUM(a.tiv_2016),2) tiv_2016
    FROM insurance a
    INNER JOIN first_metric b
    ON a.tiv_2015=b.tiv_2015
    INNER JOIN second_metric c
    ON a.lat=c.lat
    AND a.lon=c.lon
)
SELECT *
FROM sol
