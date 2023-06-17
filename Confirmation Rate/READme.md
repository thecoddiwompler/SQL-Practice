# [Confirmation Rate](https://leetcode.com/problems/confirmation-rate/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Signups</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| user_id  | int  |
| timestamp  | datetime  |

<b> user_id is the primary key for this table. </b><br/>
Each row contains information about the signup time for the user with ID user_id.
<br/>

  <b>Table Name : Confirmations</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| user_id  | int  |
| timestamp  | datetime  |
| action | ENUM |
</br>
<b> (user_id, time_stamp) is the primary key for this table. <br/>
user_id is a foreign key with a reference to the Signups table. <br/>
action is an ENUM of the type ('confirmed', 'timeout') </b><br/>
</br>
Each row of this table indicates that the user with ID user_id requested a confirmation message at time_stamp and that confirmation message was either confirmed ('confirmed') or expired without confirming ('timeout').
<br/>
<br/>
The confirmation rate of a user is the number of 'confirmed' messages divided by the total number of requested confirmation messages. The confirmation rate of a user that did not request any confirmation messages is 0. Round the confirmation rate to two decimal places.
<br/>
Write an SQL query to find the confirmation rate of each user.
<br/>
Return the result table in any order.
<br/>
The query result format is in the following example:  
</br>

 <details>
<summary>
Input
</summary>

<b>Table Name : Signups</b>

| user_id  | timestamp  | 
| --- |------ | 
| 3       | 2020-03-21 10:16:13 |
| 7       | 2020-01-04 13:57:59 |
| 2       | 2020-07-29 23:09:44 |
| 6       | 2020-12-09 10:39:37 | 
<br/>
<b>Table Name : Confirmations</b>
</br>
| user_id  | timestamp  |  action |
| --- | ------ | ------ |
| 3       | 2021-01-06 03:30:46 | timeout   |
| 3       | 2021-07-14 14:00:00 | timeout   |
| 7       | 2021-06-12 11:57:29 | confirmed |
| 7       | 2021-06-13 12:58:28 | confirmed |
| 7       | 2021-06-14 13:59:27 | confirmed |
| 2       | 2021-01-22 00:00:00 | confirmed |
| 2       | 2021-02-28 23:59:59 | timeout   |

</details>

<details>
<summary>
Output
</summary>

| user_id |  confirmation_rate |
| ---- | --- |
| 6       | 0.00              |
| 3       | 0.00              |
| 7       | 1.00              |
| 2       | 0.50              |
</details>

---
