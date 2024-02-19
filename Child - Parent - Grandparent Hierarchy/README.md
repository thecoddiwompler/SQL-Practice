# Child - Parent - Grandparent Hierarchy
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


<b>Table Name : persons</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| person    | varchar(10) |
| parent     | varchar(10)    |
| person_status | varchar(10)     |


This table provides Person's Name, their Parent's name, and the Person's Status (If they are Alive or not). 
<br/>
</br>
<b>write an SQL query to return count of people whose grandparent is alive.</b>
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
<b>Table Name : persons</b>
<br><br>

| person | parent | person_status |
|--------|--------|---------------|
| A      | X      | Alive         |
| B      | Y      | Dead          |
| X      | X1     | Alive         |
| Y      | Y1     | Alive         |
| X1     | X2     | Alive         |
| Y1     | Y2     | Dead          |




</details>

<details>
<summary>
Output
</summary>
<br>

| person_count    | 
| ---- |
| 1  |
</details>

---
