# [Friend Requests : Who Has the Most Friends](https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Insurance</b>

|  Column Name  |Type |
| ------------- | ------------- |
| requester_id   | int     |
| accepter_id    | int     |
| accept_date    | date    |

<b>(requester_id, accepter_id) is the primary key for this table.</b>
</br>

This table contains the ID of the user who sent the request, the ID of the user who received the request, and the date when the request was accepted.
  
</br>
Write an SQL query to find the people who have the most friends and the most friends number.  

The test cases are generated so that only one person has the most friends.  
The query result format is in the following example. 
</br>
</br>
 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: RequestAccepted </b></br>

| requester_id | accepter_id | accept_date |
| --------- | ------------- | ---------------- |
| 1            | 2           | 2016/06/03  |
| 1            | 3           | 2016/06/08  |
| 2            | 3           | 2016/06/08  |
| 3            | 4           | 2016/06/09  |

</details>

<details>
<summary>
Output
</summary>
</br>

| id | num |
| --- |----- |
| 3  | 3   |
  
</details>

---
