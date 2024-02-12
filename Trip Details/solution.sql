WITH cte AS (
    SELECT
        a.customer,
        a.start_loc,
        a.end_loc,
        b.end_loc prev_end_loc,
        c.start_loc next_start_loc
    FROM
        travel_data a
        LEFT OUTER JOIN travel_data b ON a.start_loc = b.end_loc
        LEFT OUTER JOIN travel_data c ON a.end_loc = c.start_loc
),
start_location AS (
    SELECT
        customer,
        start_loc
    FROM
        cte
    WHERE
        prev_end_loc IS NULL
),
end_location AS (
    SELECT
        customer,
        end_loc
    FROM
        cte
    WHERE
        next_start_loc IS NULL
),
counter AS (
    SELECT
        customer,
        COUNT(*) + 1 place_visited
    FROM
        cte
    GROUP BY
        customer
)
SELECT
    a.customer,
    a.start_loc,
    b.end_loc,
    c.place_visited
FROM
    start_location a
    INNER JOIN end_location b ON a.customer = b.customer
    INNER JOIN counter c ON a.customer = c.customer;