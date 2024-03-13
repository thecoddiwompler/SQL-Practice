WITH all_trails AS (
    SELECT
        DISTINCT a.hut1 startpt,
        a.hut2 middlept,
        b.hut2 endpt
    FROM
        trails a
        INNER JOIN trails b ON a.hut2 = b.hut1
    UNION
    SELECT
        DISTINCT a.hut1 startpt,
        a.hut2 middlept,
        b.hut1 endpt
    FROM
        trails a
        INNER JOIN trails b ON a.hut2 = b.hut2
    UNION
    SELECT
        DISTINCT a.hut2 startpt,
        a.hut1 middlept,
        b.hut2 endpt
    FROM
        trails a
        INNER JOIN trails b ON a.hut1 = b.hut1
    UNION
    SELECT
        DISTINCT a.hut2 startpt,
        a.hut1 middlept,
        b.hut1 endpt
    FROM
        trails a
        INNER JOIN trails b ON a.hut1 = b.hut2
)
SELECT
    a.name startpt,
    b.name middlept,
    c.name endpt
FROM
    mountain_huts a
    INNER JOIN all_trails ON a.id = all_trails.startpt
    INNER JOIN mountain_huts b ON b.id = all_trails.middlept
    INNER JOIN mountain_huts c ON c.id = all_trails.endpt
WHERE
    a.altitude > b.altitude
    AND b.altitude > c.altitude;