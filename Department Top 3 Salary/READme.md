# [Department Top 3 Salary](https://leetcode.com/problems/department-top-three-salaries/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Employee</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

* id is the primary key column for this table.
* departmentId is a foreign key of the ID from the Department table.
* Each row of this table indicates the ID, name, and salary of an employee. It also contains the ID of their department.
</br>

  <b>Table Name : Department</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id          | int     |
| name        | varchar |

* id is the primary key column for this table.
* Each row of this table indicates the ID of a department and its name.

</br>
A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.  
</br>
Write an SQL query to find the employees who are high earners in each of the departments.  

Return the result table in any order.

The query result format is in the following example. 
</br>
</br>
 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: Employee </b></br>

| id | name  | salary | departmentId |
| --------- | ------------- | ------ | --------- |
| 1  | Joe   | 85000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
| 7  | Will  | 70000  | 1            |

<b> Table Name: Department </b></br>

| id | name  |
|----|-------|
| 1  | IT    |
| 2  | Sales |

</details>

<details>
<summary>
Output
</summary>
</br>

| Department | Employee | Salary |
| --- |--- | --- |
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |  
</details>

---
