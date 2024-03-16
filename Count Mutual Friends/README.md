# Count Mutual Friends
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Friends</b>

|  Column Name  |Type |
| ------------- | ------------- |
| Friend1  | varchar(10)  |
| Friend2  | varchar(10)  |


</br>

In this table, all pair of friends are given. For the given friends, Write a SQL Query to find the no of mutual friends.
Return the result table in any order.  

The query result format is in the following example:  

 <details>
<summary>
Input
</summary>
<br>
<b> Table Name: Friends </b>

<br>

| Friend1 | Friend2 |
|---------|---------|
| Jason   | Mary    |
| Mike    | Mary    |
| Mike    | Jason   |
| Susan   | Jason   |
| John    | Mary    |
| Susan   | Mary    |
 

</details>

<details>
<summary>
Output
</summary>
<br>

| Friend1 | Friend2 | no_of_mutual_friends |
|---------|---------|----------------------|
| Jason   | Mary    | 2|
| Mike    | Mary    |0|
| Mike    | Jason   |1|
| Susan   | Jason   |1|
| John    | Mary    |1|
| Susan   | Mary    |1|

</details>

---
