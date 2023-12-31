WITH intermediate_origin AS (
    SELECT
        a.cid,
        a.fid,
        a.origin,
        a.destination,
        b.destination prev_destination
    FROM
        flights a
        LEFT OUTER JOIN flights b ON a.cid = b.cid
        AND a.origin = b.destination
),
intermediate_destination AS (
    SELECT
        a.cid,
        a.fid,
        a.origin,
        a.destination,
        b.origin next_destination
    FROM
        flights a
        LEFT OUTER JOIN flights b ON a.cid = b.cid
        AND a.destination = b.origin
)
SELECT
    a.cid,
    a.origin,
    b.destination
FROM
    intermediate_origin a
    INNER JOIN intermediate_destination b ON a.cid = b.cid
WHERE
    prev_destination IS NULL
    AND next_destination IS NULL;