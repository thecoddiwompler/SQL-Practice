# Vacant Positions
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : job_positions</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| id  | int  |
| title | varchar(100) |
| groups | varchar(10) |
| levels | varchar(10) |
| payscale | int |
| totalpost | int |

* <b> id is the primary key to this table </b>
* This table includes various details of a given job position including the total number of post (totalpost)

<br>

  <b>Table Name : job_employees</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| id  | int  |
| name | varchar(100) |
| position_id | int |

* <b> id is the primary key to this table </b>
* position_id is the Foreign key to id column in job_positions

Write a SQL query to generate an Employee Position Report that includes the following columns:

* title: The title of the job position.
* groups: The group to which the position belongs.
* levels: The level of the position.
* payscale: The payscale associated with the position.
* employee_name: The name of the employee currently occupying the position, or 'Vacant' if the position is unoccupied.

Ensure that the report includes all job positions, even those without assigned employees. Please note that there would be as many rows as the total number of totalpost for each Job Position.

Please refer to the sample output given below for better understanding.

 <details>
<summary>
Input
</summary>
<br>
<b>Table Name : job_positions</b><br><br>

| id | title            | groups | levels | payscale | totalpost |
|----|------------------|--------|--------|----------|-----------|
| 1  | General manager  | A      | l-15   | 10000    | 1         |
| 2  | Manager          | B      | l-14   | 9000     | 5         |
| 3  | Asst. Manager    | C      | l-13   | 8000     | 10        |


<br>
<b>Table Name : job_employees</b><br><br>

| id | name                | position_id |
|----|---------------------|-------------|
| 1  | John Smith          | 1           |
| 2  | Jane Doe            | 2           |
| 3  | Michael Brown       | 2           |
| 4  | Emily Johnson       | 2           |
| 5  | William Lee         | 3           |
| 6  | Jessica Clark       | 3           |
| 7  | Christopher Harris  | 3           |
| 8  | Olivia Wilson       | 3           |
| 9  | Daniel Martinez     | 3           |
| 10 | Sophia Miller       | 3           |


</details>

<details>
<summary>
Output
</summary>
<br>

| title            | groups | levels | payscale | employee_name      |
|------------------|--------|--------|----------|--------------------|
| General manager  | A      | l-15   | 10000    | John Smith|
| Manager          | B      | l-14   | 9000     |Jane Doe |
| Manager          | B      | l-14   | 9000     |Michael Brown  |
| Manager          | B      | l-14   | 9000     |Emily Johnson |
| Manager          | B      | l-14   | 9000     | Vacant |
| Manager          | B      | l-14   | 9000     | Vacant |
| Asst. Manager    | C      | l-13   | 8000     |William Lee |
| Asst. Manager    | C      | l-13   | 8000     |Jessica Clark |
| Asst. Manager    | C      | l-13   | 8000     | Christopher Harris|
| Asst. Manager    | C      | l-13   | 8000     | Olivia Wilson|
| Asst. Manager    | C      | l-13   | 8000     |Daniel Martinez|
| Asst. Manager    | C      | l-13   | 8000     |Sophia Miller |
| Asst. Manager    | C      | l-13   | 8000     | Vacant|
| Asst. Manager    | C      | l-13   | 8000     | Vacant|
| Asst. Manager    | C      | l-13   | 8000     | Vacant|
| Asst. Manager    | C      | l-13   | 8000     | Vacant|


</details>

---

