SELECT
    a.request_at AS "Day",
    ROUND(
        COUNT(a.status) FILTER(
            WHERE
                a.status LIKE 'cancelled%'
        ) * 1.0 / COUNT(a.status),
        2
    ) AS "Cancellation Rate"
FROM
    trips a
    INNER JOIN users b ON a.client_id = b.users_id
    INNER JOIN users c ON a.driver_id = c.users_id
WHERE
    b.banned = 'No'
    AND c.banned = 'No'
    AND a.request_at IN ('2013-10-01', '2013-10-02', '2013-10-03')
GROUP BY
    a.request_at;