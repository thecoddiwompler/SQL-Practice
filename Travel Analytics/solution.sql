-- 1. Write a SQL query to count the number of users in each user segment. also output the no of users who booked flight in Apr 2022.

SELECT
    a.segment,
    COUNT(DISTINCT a.user_id) total_user_count,
    COUNT(DISTINCT b.user_id)FILTER(
        WHERE
            line_of_business = 'Flight'
            AND TO_CHAR(b.booking_date, 'MMYYYY') = '042022'
    ) user_count_flight_apr
FROM
    user_table a
    LEFT JOIN booking_table b ON a.user_id = b.user_id
GROUP BY
    a.segment;


-- 2. Write a query to identify users whose first booking is hotel booking.

WITH cte AS (
    SELECT
        user_id,
        line_of_business,
        row_number() over(
            PARTITION by user_id
            ORDER BY
                booking_date
        ) rn
    FROM
        booking_table
)
SELECT
    user_id
FROM
    cte
WHERE
    line_of_business = 'Hotel'
    AND rn = 1;


-- 3. Write a query to calculate the days between first and last booking of each user.

SELECT
    user_id,
    (max(booking_date) - min(booking_date)) date_diff
FROM
    booking_table
GROUP BY
    user_id
ORDER BY
    user_id;


-- 4. Write a query to count the number of flight and hotel bookings in each of the user segments for the year 2022.

SELECT
    a.segment,
    COUNT(b.user_id)FILTER(
        WHERE
            b.line_of_business = 'Flight'
    ) flight_count,
    COUNT(b.user_id)FILTER(
        WHERE
            b.line_of_business = 'Hotel'
    ) hotel_count
FROM
    user_table a
    INNER JOIN booking_table b ON a.user_id = b.user_id
WHERE
    TO_CHAR(b.booking_date, 'YYYY') = '2022'
GROUP BY
    a.segment
ORDER BY
    a.segment;