# [Analyze Organization Hierarchy](https://leetcode.com/problems/analyze-organization-hierarchy/description/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

| Column Name    | Type    | 
|----------------|---------|
| employee_id    | int     |
| employee_name  | varchar |
| manager_id     | int     |
| salary         | int     |
| department     | varchar |

employee_id is the unique key for this table.<br>
<br>
Each row contains information about an employee, including their ID, name, their manager's ID, salary, and department.<br>
<br>
manager_id is null for the top-level manager (CEO).<br>

<b>Write a SQL query to analyze the organizational hierarchy and answer the following:</b>

<b>Hierarchy Levels:</b> For each employee, determine their level in the organization (CEO is level 1, employees reporting directly to the CEO are level 2, and so on).<br>

<b>Team Size:</b> For each employee who is a manager, count the total number of employees under them (direct and indirect reports).<br>

<b>Salary Budget:</b> For each manager, calculate the total salary budget they control (sum of salaries of all employees under them, including indirect reports, plus their own salary).<br>

Return the result table ordered by the result ordered by level in ascending order, then by budget in descending order, and finally by employee_name in ascending order.

<b>The result format is in the following example</b>


 <details>
<summary>
Input
</summary>
<br>
<b>Table Name : Employees</b>
<br><br>

| employee_id | employee_name | manager_id | salary | department  |
|---------|--------|------|------|------|
| 1           | Alice         | null       | 12000  | Executive   |
| 2           | Bob           | 1          | 10000  | Sales       |
| 3           | Charlie       | 1          | 10000  | Engineering |
| 4           | David         | 2          | 7500   | Sales       |
| 5           | Eva           | 2          | 7500   | Sales       |
| 6           | Frank         | 3          | 9000   | Engineering |
| 7           | Grace         | 3          | 8500   | Engineering |
| 8           | Hank          | 4          | 6000   | Sales       |
| 9           | Ivy           | 6          | 7000   | Engineering |
| 10          | Judy          | 6          | 7000   | Engineering |

</details>

<details>
<summary>
Output
</summary>
<br>

| employee_id | employee_name | level | team_size | budget |
|---------|--------|------|------|------|
| 1           | Alice         | 1     | 9         | 84500  |
| 3           | Charlie       | 2     | 4         | 41500  |
| 2           | Bob           | 2     | 3         | 31000  |
| 6           | Frank         | 3     | 2         | 23000  |
| 4           | David         | 3     | 1         | 13500  |
| 7           | Grace         | 3     | 0         | 8500   |
| 5           | Eva           | 3     | 0         | 7500   |
| 9           | Ivy           | 4     | 0         | 7000   |
| 10          | Judy          | 4     | 0         | 7000   |
| 8           | Hank          | 4     | 0         | 6000   |

</details>
