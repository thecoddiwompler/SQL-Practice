# Vacations Record
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : vacation_plans</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| id  | int  |
| emp_id | int |
| from_dt | date |
| to_dt | date |

* <b> id is the primary key to this table </b>
* This table shows the vacations applied by each employee (represented by emp_id) during the year 2024.

<br>

  <b>Table Name : leave_balance</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| emp_id  | int  |
| balance | int |

* <b> emp_id is the primary key to this table and foreign key to emp_id column in vacation_plans </b>
* This table tells the available leaves for each employee.

Write a SQL query to determine if the vacations applied by each employee can be approved or not based on the available leave balance. 
If an employee has enough available leaves then mention the status as "Approved" else mention "Insufficient Leave Balance".
Assume there are no public holidays during 2024 and exclude the weekends (sat & sun) while calculating vacation days. 

Please refer to the sample output given below for better understanding.

 <details>
<summary>
Input
</summary>
<br>
<b>Table Name : vacation_plans</b><br><br>

| id | emp_id | from_dt    | to_dt      |
|----|--------|------------|------------|
| 1  | 1      | 2024-02-12 | 2024-02-16 |
| 2  | 2      | 2024-02-20 | 2024-02-29 |
| 3  | 3      | 2024-03-01 | 2024-03-31 |
| 4  | 1      | 2024-04-11 | 2024-04-23 |
| 5  | 4      | 2024-06-01 | 2024-06-30 |
| 6  | 3      | 2024-07-05 | 2024-07-15 |
| 7  | 3      | 2024-08-28 | 2024-09-15 |



<br>
<b>Table Name : leave_balance</b><br><br>

| emp_id | balance |
|--------|---------|
| 1      | 12      |
| 2      | 10      |
| 3      | 26      |
| 4      | 20      |
| 5      | 14      |



</details>

<details>
<summary>
Output
</summary>
<br>

| id | emp_id | from_dt    | to_dt      | vacation_days | status |
|----|--------|------------|------------|------------|------------|
| 1  | 1      | 2024-02-12 | 2024-02-16 | 5 | Approved |
| 2  | 2      | 2024-02-20 | 2024-02-29 | 8 | Approved |
| 3  | 3      | 2024-03-01 | 2024-03-31 | 21 | Approved |
| 4  | 1      | 2024-04-11 | 2024-04-23 | 9 | Insufficient Leave Balance |
| 5  | 4      | 2024-06-01 | 2024-06-30 | 20 | Approved |
| 6  | 3      | 2024-07-05 | 2024-07-15 | 7 | Insufficient Leave Balance |
| 7  | 3      | 2024-08-28 | 2024-09-15 | 13 | Insufficient Leave Balance |


</details>

---

