# [Find Cumulative Salary of an Employee](https://leetcode.com/problems/find-cumulative-salary-of-an-employee/description/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Employee</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id          | int  |
| month       | int  |
| salary      | int  |

* (id, month) is the primary key for this table.
* Each row in the table indicates the salary of an employee in one month during the year 2020.
<br/>



Write an SQL query to calculate the cumulative salary summary for every employee in a single unified table.
</br>

The cumulative salary summary for an employee can be calculated as follows:
- For each month that the employee worked, sum up the salaries in that month and the previous two months.
- This is their 3-month sum for that month. If an employee did not work for the company in previous months,
their effective salary for those months is 0.
- Do not include the 3-month sum for the most recent month that the employee worked for in the summary.
- Do not include the 3-month sum for any month the employee did not work.


Return the result table ordered by id in ascending order. In case of a tie, order it by month in descending order.
The query result format is in the following example.
</br>
</br>
 <details>
<summary>
Input
</summary>
  
  <b>Table Name: Employee</b>

| id | month | salary |
| --- |------ |-----|
| 1  | 1     | 20     |
| 2  | 1     | 20     |
| 1  | 2     | 30     |
| 2  | 2     | 30     |
| 3  | 2     | 40     |
| 1  | 3     | 40     |
| 3  | 3     | 60     |
| 1  | 4     | 60     |
| 3  | 4     | 70     |
| 1  | 7     | 90     |
| 1  | 8     | 90     |

</details>

<details>
<summary>
Output
</summary>

| id | month | salary |
| ---- | ---- | ----|
| 1  | 7     | 90     |
| 1  | 4     | 130    |
| 1  | 3     | 90     |
| 1  | 2     | 50     |
| 1  | 1     | 20     |
| 2  | 1     | 20     |
| 3  | 3     | 100    |
| 3  | 2     | 40     |
</details>

---
