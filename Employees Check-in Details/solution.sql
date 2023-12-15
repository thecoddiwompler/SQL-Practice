SELECT
    a.employeeid,
    b.phone_number employee_default_phone_number,
    COUNT(a.entry_details) total_entry,
    COUNT(a.entry_details) FILTER (
        WHERE
            a.entry_details = 'login'
    ) total_login,
    MAX(a.timestamp_details) FILTER (
        WHERE
            a.entry_details = 'login'
    ) latest_login,
    COUNT(a.entry_details) FILTER (
        WHERE
            a.entry_details = 'logout'
    ) total_logout,
    MAX(a.timestamp_details) FILTER (
        WHERE
            a.entry_details = 'logout'
    ) latest_logout
FROM
    employees.employee_checkin_details a
    LEFT OUTER JOIN employees.employee_details b ON a.employeeid = b.employeeid
    AND b.isdefault = 'true'
GROUP BY
    a.employeeid,
    b.phone_number