# Department Average Less than Total Average
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b> This Problem appeared in PayPal Interview </b></br>
</br>

<b>Table Name : Employee</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| emp_id  | int  |
| emp_name  | varchar  |
| department_id | int |
| salary | int |
| manager_id | int |
| emp_age | int |


<b> emp_id is the primary key for this table. </b><br/>
<br/>


Write a SQL query to generate a list of departments whose average salary is lower than the overall average salary of the company, while excluding the salaries of the departments being compared.</br>
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

<b>Table Name : Employee</b>

| emp_id  | emp_name  | department_id | salary | manager_id | emp_age |
| --- |------ | ----|---|---|----|
| 1       | Ankit | 100 | 10000 | 4 | 39 |
| 2       | Mohit | 100 | 15000 | 5 | 48 |
| 3       | Vikas | 100 | 10000 | 4 | 37 |
| 4       | Rohit | 100 | 5000 | 2 | 26 |
| 5       | Suchismita | 200 | 12000 | 6 | 55 |
| 6       | Akshay | 200 | 12000 | 2 | 49 |
| 7       | Akriti | 200 | 9000 | 2 | 29 |
| 8       | Lavanya | 200 | 5000 | 2 | 27 |
| 9       | Vignesh | 300 | 6000 | 6 | 41 |
| 10       | Atharva | 300 | 7000 | 6 | 42 |
<br/>


</details>

<details>
<summary>
Output
</summary>

| department_id | 
| ---- |
| 300 |
</details>

---
