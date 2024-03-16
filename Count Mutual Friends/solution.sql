WITH cte AS (
    SELECT
        friend1,
        friend2
    FROM
        friends
    UNION
    SELECT
        friend2,
        friend1
    FROM
        friends
),
friend1_friend AS (
    SELECT
        a.friend1,
        a.friend2,
        b.friend2 friend1_friend
    FROM
        friends a
        LEFT OUTER JOIN cte b ON a.friend1 = b.friend1
        AND a.friend2 <> b.friend2
),
friend2_friend AS (
    SELECT
        a.friend1,
        a.friend2,
        b.friend2 friend2_friend
    FROM
        friends a
        INNER JOIN cte b ON a.friend2 = b.friend1
    WHERE
        a.friend1 <> b.friend2
)
SELECT
    a.friend1,
    a.friend2,
    count(*) filter(
        WHERE
            a.friend1_friend IS NOT NULL
    ) no_of_mutual_friends
FROM
    friend1_friend a
    LEFT OUTER JOIN friend2_friend b ON a.friend1 = b.friend1
    AND a.friend2 = b.friend2
    AND a.friend1_friend = b.friend2_friend
GROUP BY
    a.friend1,
    a.friend2;