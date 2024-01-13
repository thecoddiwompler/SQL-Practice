WITH recursive all_dates AS (
    SELECT
        MIN(sms_date) sms_date
    FROM
        subscriber
    UNION
    SELECT
        sms_date + 1
    FROM
        all_dates
    WHERE
        sms_date + 1 <=(
            SELECT
                MAX(sms_date)
            FROM
                subscriber
        )
),
person AS (
    SELECT
        DISTINCT sender person
    FROM
        subscriber
    UNION
    SELECT
        DISTINCT receiver
    FROM
        subscriber
),
all_person AS (
    SELECT
        person,
        ROW_NUMBER() over(
            ORDER BY
                person
        ) rn
    FROM
        person
),
cte AS (
    SELECT
        c.sms_date,
        a.person p1,
        b.person p2
    FROM
        all_person a
        INNER JOIN all_person b ON a.rn > b.rn
        CROSS JOIN all_dates c
)
SELECT
    a.sms_date,
    a.p1,
    a.p2,
    COALESCE(sum(sms_no), 0) total_sms
FROM
    cte a
    LEFT OUTER JOIN subscriber b ON a.sms_date = b.sms_date
    AND (
        (
            a.p1 = b.sender
            AND a.p2 = b.receiver
        )
        OR (
            a.p2 = b.sender
            AND a.p1 = b.receiver
        )
    )
GROUP BY
    a.sms_date,
    a.p1,
    a.p2;