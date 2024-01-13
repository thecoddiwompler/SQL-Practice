WITH cte AS (
    SELECT
        TO_CHAR(business_date, 'YYYY') business_year,
        city_id,
        ROW_NUMBER() OVER(
            PARTITION by city_id
            ORDER BY
                to_char(business_date, 'YYYY')
        ) rn
    FROM
        business_city
)
SELECT
    business_year,
    COUNT(*) no_of_onboarded_cities_for_the_first_time
FROM
    cte
WHERE
    rn = 1
GROUP BY
    1