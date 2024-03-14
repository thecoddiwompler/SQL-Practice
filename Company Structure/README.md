# Company Structure
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


<b>Table Name : company</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| employee    | varchar(10) |
| manager     | varchar(10)    |


* <b> employee is the primary key for this table. </b><br/>
<br/>

This table provides employee name and their manager name.
</br>

Given graph shows the hierarchy of employees in a company. 
Write an SQL query to split the hierarchy and show the employees corresponding to their team.
</br>

![](./img/image.jpg)

<br/>
Assumption: Assume that the total number of teams are the same as the number of people reporting to the person at top.

<br>
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
<b>Table Name : company</b>
<br><br>

| employee | manager |
|----------|---------|
| Elon     |         |
| Ira      | Elon    |
| Bret     | Elon    |
| Earl     | Elon    |
| James    | Ira     |
| Drew     | Ira     |
| Mark     | Bret    |
| Phil     | Mark    |
| Jon      | Mark    |
| Omid     | Earl    |



</details>

<details>
<summary>
Output
</summary>
<br>

| team    | members |
| ---- |----|
| Team 1   | Elon ,Bret, Jon, Mark, Phil |
| Team 2   | Elon ,Earl, Omid |
| Team 3   | Elon ,Drew, Ira, James |

</details>

---
