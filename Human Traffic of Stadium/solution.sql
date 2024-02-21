WITH cte AS (
    SELECT
        id,
        visit_date,
        people
    FROM
        stadium
    WHERE
        people >= 100
),
sol AS(
    SELECT
        id,
        CASE
            WHEN id -1 IN (
                SELECT
                    id
                FROM
                    cte
            ) THEN CASE
                WHEN id -2 IN (
                    SELECT
                        id
                    FROM
                        cte
                )
                OR id + 1 IN (
                    SELECT
                        id
                    FROM
                        cte
                ) THEN 'Y'
                ELSE 'N'
            END
            WHEN id + 1 IN (
                SELECT
                    id
                FROM
                    cte
            ) THEN CASE
                WHEN id + 2 IN (
                    SELECT
                        id
                    FROM
                        cte
                ) THEN 'Y'
                ELSE 'N'
            END
            ELSE 'N'
        END AS flag
    FROM
        cte
)
SELECT
    sol.id,
    stadium.visit_date,
    stadium.people
FROM
    sol
    INNER JOIN stadium ON sol.id = stadium.id
    AND sol.flag = 'Y';