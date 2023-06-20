# [Exchange Seats](https://leetcode.com/problems/exchange-seats/description/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Seat</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id          | int     |
| student     | varchar |

* id is the primary key column for this table.
* Each row of this table indicates the name and the ID of a student.
* id is a continuous increment.
<br/>



Write an SQL query to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.</br>
Return the result table ordered by id in ascending order.

</br>
The query result format is in the following example. 
</br>
</br>
 <details>
<summary>
Input
</summary>
  
  <b>Table Name: Seat</b>

| id | student |
| --- |------ |
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |

</details>

<details>
<summary>
Output
</summary>

| id | student |
| ---- | ---- |
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |
</details>

---
