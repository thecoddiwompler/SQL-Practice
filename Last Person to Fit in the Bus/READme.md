# [Last Person to Fit in the Bus](https://leetcode.com/problems/last-person-to-fit-in-the-bus/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Queue</b>

|  Column Name  |Type |
| ------------- | ------------- |
| person_id   | int     |
| person_name | varchar |
| weight      | int     |
| turn        | int     |

<b>person_id is the primary key column for this table.</b>
<br/>

This table has the information about all people waiting for a bus.  
The person_id and turn columns will contain all numbers from 1 to n, where n is the number of rows in the table.  
turn determines the order of which the people will board the bus, where turn=1 denotes the first person to board and turn=n denotes the last person to board.  
weight is the weight of the person in kilograms.  
</br>
  
There is a queue of people waiting to board a bus. However, the bus has a weight limit of 1000 kilograms, so there may be some people who cannot board.  
</br>
Write an SQL query to find the person_name of the last person that can fit on the bus without exceeding the weight limit. The test cases are generated such that the first person does not exceed the weight limit.  
</br>
The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
  
  <b>Table Name: Queue</b>

| person_id | person_name | weight | turn |
| --- |------ | ---------- | --------- | 
| 5         | Alice       | 250    | 1    |
| 4         | Bob         | 175    | 5    |
| 3         | Alex        | 350    | 2    |
| 6         | John Cena   | 400    | 3    |
| 1         | Winston     | 500    | 6    |
| 2         | Marie       | 200    | 4    |

</details>

<details>
<summary>
Output
</summary>

| person_name |  
| ---- |  
| John Cena   |

</details>

---
