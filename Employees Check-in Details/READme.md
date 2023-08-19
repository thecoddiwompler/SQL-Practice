# Employees Check-in Details
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b> This problem has been asked in Uber interview. </b>

  <b>Table Name : Employee Checkin Details</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| employeeid  | int  |
| entry_details | varchar |
| timestamp_details  | datetime  |

Each row contains information about the employees entry details (Login and Logout) along with the time of the entry.
<br/>

  <b>Table Name : Employee Details</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| employeeid  | int  |
| phone_number | varchar |
| isdefault  | boolean  |


</br>
<b> (employeeid, phone_number) is the primary key for this table.</b> <br/>
employeeid is a foreign key with a reference to the Employee Checkin Details table. <br/>
isdefault is of Boolean type.<br/>
</br>
Each row of this table gives the information about phone numbers of the employees and whether they are default phone numbers or not </br>
</br>
</br>
Write an SQL query to find the default the phone number, total entry count, total login and logout count, and latest login and logout time for each employees like given below.
</br>
Return the result table in any order.
</br>
</br>
<b>The query result format is in the following example:  </b>
</br>
</br>

 <details>
<summary>
Input
</summary>

<b>Table Name : Employee Checkin Details</b>

| employeeid | entry_details | timestamp_details      |
|------------|---------------|------------------------|
| 1000       | login         | 2023-06-16 01:00:15.34 |
| 1000       | login         | 2023-06-16 02:00:15.34 |
| 1000       | login         | 2023-06-16 03:00:15.34 |
| 1000       | logout        | 2023-06-16 12:00:15.34 |
| 1001       | login         | 2023-06-16 01:00:15.34 |
| 1001       | login         | 2023-06-16 02:00:15.34 |
| 1001       | login         | 2023-06-16 03:00:15.34 |
| 1001       | logout        | 2023-06-16 12:00:15.34 |

<br/>

<b>Table Name : Employee Details</b>
</br>

| employeeid | phone_number | isdefault |
|------------|--------------|-----------|
| 1001       | 9999         | false     |
| 1001       | 1111         | false     |
| 1001       | 2222         | true      |
| 1003       | 3333         | false     |

</details>

<details>
<summary>
Output
</summary>

| employeeid | employee_default_phone_number | total_entry | total_login | latest_login          | total_logout | latest_logout         |
|------------|------------------------------|-------------|-------------|-----------------------|--------------|-----------------------|
| 1000       |                              | 4           | 3           | 2023-06-16 03:00:15.34| 1            | 2023-06-16 12:00:15.34|
| 1001       | 2222                         | 4           | 3           | 2023-06-16 03:00:15.34| 1            | 2023-06-16 12:00:15.34|

</details>

---
