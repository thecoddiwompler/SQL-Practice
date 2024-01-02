# [Managers with at Least 5 Direct Reports](https://leetcode.com/problems/managers-with-at-least-5-direct-reports)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Employee</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id  | int  |
| name  | varchar  |
| department | varchar |
| managerId | int |

<b>id is the primary key column for this table.  </b>
<br/>
  
Each row of this table indicates the name of an employee, their department, and the id of their manager.  
If managerId is null, then the employee does not have a manager.    
No employee will be the manager of themself.  
  
  
Write a SQL query to report the managers with at least five direct reports.  

Return the result table in any order.  

The query result format is in the following example:  

 <details>
<summary>
Input
</summary>

| id  | name  | department | managerId |  
| --- |------ | ---------- | --------- | 
| 101 | John  | A          | None      |  
| 102 | Dan   | A          | 101       |  
| 103 | James | A          | 101       |  
| 104 | Amy   | A          | 101       |  
| 105 | Anne  | A          | 101       |  
| 106 | Ron   | B          | 101       |  

</details>

<details>
<summary>
Output
</summary>

| name |  
| ---- |  
| John |

</details>

---
