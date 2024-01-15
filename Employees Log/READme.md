# Employees Log
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


<b>Table Name : employee_log</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| emp_id    | INT |
| log_date     | DATE    |
| flag | CHAR(1)     |


The table contains emp_id, log_date, and the flag('Y' or 'N') showing if the employee logins on the given log_date or not. 


Write a SQL query to find the emp_id , the number of consecutive days logged in ,the start_date of the streak and end_date of the streak for each employee.
Retrieve information about consecutive login streaks for employee who have logged in for at least two consecutive days.
</br>
</br>
<b>The query result format is in the following example:  </b>
</br>
</br>

 <details>
<summary>
Input
</summary>
<br>

<b>Table Name : employee_log</b>

| emp_id | log_date   | flag |
|--------|------------|------|
| 101    | 2024-01-02 | N    |
| 101    | 2024-01-03 | Y    |
| 101    | 2024-01-04 | N    |
| 101    | 2024-01-07 | Y    |
| 102    | 2024-01-01 | N    |
| 102    | 2024-01-02 | Y    |
| 102    | 2024-01-03 | Y    |
| 102    | 2024-01-04 | N    |
| 102    | 2024-01-05 | Y    |
| 102    | 2024-01-06 | Y    |
| 102    | 2024-01-07 | Y    |
| 103    | 2024-01-01 | N    |
| 103    | 2024-01-04 | N    |
| 103    | 2024-01-05 | Y    |
| 103    | 2024-01-06 | Y    |
| 103    | 2024-01-07 | N    |


<br/>


</details>

<details>
<summary>
Output
</summary>
<br>

| emp_id | streak_start | streak_end  | streak_length |
|--------|--------------|-------------|--------|
| 102    | 2024-01-05   | 2024-01-07  | 3      |
| 102    | 2024-01-02   | 2024-01-03  | 2      |
| 103    | 2024-01-05   | 2024-01-06  | 2      |


</details>

---
