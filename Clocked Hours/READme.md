# Clocked Hours
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


<b>Table Name : clocked_hours</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| empd_id    | int |
| swipe     | time    |
| flag | char     |


* <b> (empd_id, swipe) is the primary key for this table. </b><br/>
<br/>

This table provides empd_id (Employee ID), swipe time (swipe), and swipe type (flag). Flag can have only two values- 'I' and 'O' signifying Entry time and exit time.
<br/>
</br>
<b>Write a SQL query to find the total clocked time for each employees.</b>
</br>
<br/>
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
<br>
<b>Table Name : clocked_hours</b>
<br><br>

| empd_id | swipe  | flag |
|---------|--------|------|
| 11114   | 08:30  | I    |
| 11114   | 10:30  | O    |
| 11114   | 11:30  | I    |
| 11114   | 15:30  | O    |
| 11115   | 09:30  | I    |
| 11115   | 17:30  | O    |



</details>

<details>
<summary>
Output
</summary>
<br>

| empd_id    | clocked_time |
| ---- |----|
| 11114   | 6 Hours 0 Minutes 0.00 Seconds |
| 11115   | 8 Hours 0 Minutes 0.00 Seconds |
</details>

---
