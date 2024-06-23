# Consecutive User Logins
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : user_login</b>

|  Column Name  |Type |
| ------------- | ------------- |
| user_id  | int  |
| login_date  | date  |

This table shows the date when each user logged in to the system. <br/><br>
Write a SQL query to identify the users who logged in for 5 or more consecutive days. Return the user id, start date, end date, and no of consecutive days.
<br><br>
Please remember a user can login multiple times during a day but only consider users whose consecutive logins spanned 5 days or more.
<br/>

The query result format is in the following example:  

 <details>
<summary>
Input
</summary>
<br>
<b> Table Name: user_login <br><br>

| user_id | login_date  |
|---------|-------------|
| 1       | 01/03/2024  |
| 1       | 02/03/2024  |
| 1       | 03/03/2024  |
| 1       | 04/03/2024  |
| 1       | 06/03/2024  |
| 1       | 10/03/2024  |
| 1       | 11/03/2024  |
| 1       | 12/03/2024  |
| 1       | 13/03/2024  |
| 1       | 14/03/2024  |
| 1       | 20/03/2024  |
| 1       | 25/03/2024  |
| 1       | 26/03/2024  |
| 1       | 27/03/2024  |
| 1       | 28/03/2024  |
| 1       | 29/03/2024  |
| 1       | 30/03/2024  |
| 2       | 01/03/2024  |
| 2       | 02/03/2024  |
| 2       | 03/03/2024  |
| 2       | 04/03/2024  |
| 3       | 01/03/2024  |
| 3       | 02/03/2024  |
| 3       | 03/03/2024  |
| 3       | 04/03/2024  |
| 3       | 04/03/2024  |
| 3       | 04/03/2024  |
| 3       | 05/03/2024  |
| 4       | 01/03/2024  |
| 4       | 02/03/2024  |
| 4       | 03/03/2024  |
| 4       | 04/03/2024  |
| 4       | 04/03/2024  |
 

</details>

<details>
<summary>
Output <br><br>
</summary>

| user_id | start_date | end_date   | consecutive_days |
|---------|------------|------------|------------------|
| 1       | 2024-03-10 | 2024-03-14 | 5                |
| 1       | 2024-03-25 | 2024-03-30 | 6                |
| 3       | 2024-03-01 | 2024-03-05 | 5                |


</details>

---
