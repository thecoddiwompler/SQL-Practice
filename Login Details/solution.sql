WITH ext_login_details AS (
    SELECT
        times,
        STATUS,
        COALESCE(
            lag(STATUS) over(
                ORDER BY
                    times
            ),
            'off'
        ) prev_status
    FROM
        login_details
),
intermediate AS (
    SELECT
        a.times log_on,
        b.times log_off,
        b.times - a.times duration
    FROM
        ext_login_details a
        INNER JOIN ext_login_details b ON a.status = 'on'
        AND a.prev_status = 'off'
        AND b.status = 'off'
        AND b.times > a.times
),
solution AS (
    SELECT
        log_on,
        min(log_off) log_off
    FROM
        intermediate
    GROUP BY
        log_on
)
SELECT
    log_on,
    log_off,
    extract(
        minutes
        FROM
            log_off - log_on
    ) duration
FROM
    solution;