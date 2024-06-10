# [Login Details](https://leetcode.com/problems/last-person-to-fit-in-the-bus/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : login_details</b>

|  Column Name  |Type |
| ------------- | ------------- |
| times   | time     |
| status | varchar(3) |

<b>times is the primary key column for this table and increasing in order.</b>
<br/>

This table provides login and logoff details of one user. 
</br>

Write a SQL query to to reqpresent the different periods (in mins) when user was logged in.  
</br>
The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
  
  <b>Table Name: login_details</b>

| times     | status |
|----------|--------|
| 10:00:00 | on     |
| 10:01:00 | on     |
| 10:02:00 | on     |
| 10:03:00 | off    |
| 10:04:00 | on     |
| 10:05:00 | on     |
| 10:06:00 | off    |
| 10:07:00 | off    |
| 10:08:00 | off    |
| 10:09:00 | on     |
| 10:10:00 | on     |
| 10:11:00 | on     |
| 10:12:00 | on     |
| 10:13:00 | off    |
| 10:14:00 | off    |
| 10:15:00 | on     |
| 10:16:00 | off    |
| 10:17:00 | off    |


</details>

<details>
<summary>
Output
</summary>

| log_on | log_off | duration
| ---- | ---- |  ---- |  
| 10:00:00   | 10:03:00 | 3 |
| 10:04:00   | 10:06:00 | 3 |
| 10:09:00   | 10:13:00 | 3 |
| 10:15:00   | 10:16:00 | 3 |


</details>

---
