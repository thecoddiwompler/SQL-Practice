WITH total_entry AS (
    SELECT
        a.employeeid,
        b.phone_number AS employee_default_phone_number,
        a.entry_details,
        COUNT(a.employeeid) AS entry_count,
        MAX(a.timestamp_details) AS latest_entry_time
    FROM
        employees.employee_checkin_details a
    LEFT OUTER JOIN
        employees.employee_details b ON a.employeeid = b.employeeid AND b.isdefault = 'true'
    GROUP BY
        a.employeeid, b.phone_number, a.entry_details
),
login AS (
    SELECT
        employeeid,
        entry_count AS total_login,
        latest_entry_time AS latest_login
    FROM
        total_entry
    WHERE
        entry_details = 'login'
),
logout AS (
    SELECT
        employeeid,
        entry_count AS total_logout,
        latest_entry_time AS latest_logout
    FROM
        total_entry
    WHERE
        entry_details = 'logout'
),
total AS (
    SELECT
        employeeid,
        employee_default_phone_number,
        SUM(entry_count) AS total_entry
    FROM
        total_entry
    GROUP BY
        employeeid, employee_default_phone_number
)
SELECT
    total.employeeid,
    total.employee_default_phone_number,
    total.total_entry,
    login.total_login,
    login.latest_login,
    logout.total_logout,
    logout.latest_logout
FROM
    total
INNER JOIN
    login ON total.employeeid = login.employeeid
INNER JOIN
    logout ON total.employeeid = logout.employeeid;
