WITH cte AS (
    SELECT
        a.id,
        a.capacity_kg,
        b.passenger_name,
        b.weight_kg
    FROM
        lifts a
        INNER JOIN lift_passengers b ON a.id = b.lift_id
),
intrmdt AS (
    SELECT
        id,
        passenger_name,
        sum(weight_kg) over(
            PARTITION by id
            ORDER BY
                weight_kg
        ) cum_sum_weight_kg,
        capacity_kg
    FROM
        cte
)
SELECT
    id,
    string_agg(passenger_name, ',') passenger_list
FROM
    intrmdt
WHERE
    cum_sum_weight_kg <= capacity_kg
GROUP BY
    id;