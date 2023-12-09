WITH cte AS (
    SELECT
        measurement_id,
        measurement_value,
        measurement_time,
        ROW_NUMBER() OVER(
            PARTITION BY TO_CHAR(measurement_time, 'YYYY-MM-DD')
            ORDER BY
                measurement_time
        ) rn
    FROM
        measurements
)
SELECT
    DATE_TRUNC('day', measurement_time) measurement_day,
    SUM(measurement_value) FILTER(
        WHERE
            MOD(rn, 2) = 1
    ) odd_sum,
    SUM(measurement_value) FILTER(
        WHERE
            MOD(rn, 2) = 0
    ) even_sum
FROM
    cte
GROUP BY
    DATE_TRUNC('day', measurement_time)
ORDER BY
    DATE_TRUNC('day', measurement_time);