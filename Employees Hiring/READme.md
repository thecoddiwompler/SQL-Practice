# Employees Hiring
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b>This problem was asked in Uplers interview.</b>

<b>Table Name : Candidates</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| id    | int |
| positions     | varchar    |
| salary | int     |

<b> id is the primary key for this table. </b><br/>
<br/>
An Organization is looking to hire candidates for Senior and Juniors positions. They have a total limit of 50,000$ in total. <br/>
They first have to hire as much of the Senior candidates as possible and then hire for the junior positions. 
<br/>
</br>
<b>Write an SQL query to report the maximum total number of candidates it is possible to hire for both Senior and Junior Positions.</b>
</br>
</br>
<b>The query result format is in the following example:  </b>
</br>
</br>

 <details>
<summary>
Input
</summary>

<b>Table Name : Candidates</b>

| id    | positions | salary |
| --- |------ | ----|---|
| 1      | junior       | 5000 |
| 2      | junior       | 7000 |
| 3      | junior       | 7000 |
| 4      | senior       | 10000 |
| 5      | senior       | 30000 |
| 6      | senior       | 20000 |

<br/>


</details>

<details>
<summary>
Output
</summary>

| junior    | senior |
| ---- |----|
| 3  | 2              |

</details>

---
