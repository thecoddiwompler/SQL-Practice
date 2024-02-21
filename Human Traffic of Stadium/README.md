# [Human Traffic of Stadium](https://leetcode.com/problems/human-traffic-of-stadium/description/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Activity</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id            | int     |
| visit_date    | date    |
| people        | int     |

* visit_date is the column with unique values for this table.
* Each row of this table contains the visit date and visit id to the stadium with the number of people during the visit.
* As the id increases, the date increases as well.
</br>

Write a solution to display the records with three or more rows with consecutive id's, and the number of people is greater than or equal to 100 for each. </br>

Return the result table ordered by visit_date in ascending order.
</br>
</br>
The query result format is in the following example:  

 <details>
<summary>
Input
</summary>
 </br>

| id | visit_date | people |
| --- |------ | ---------- | 
| 1    | 2017-01-01 | 10        |
| 2    | 2017-01-02 | 109       |
| 3    | 2017-01-03 | 150       |
| 4    | 2017-01-04 | 99        |
| 5    | 2017-01-05 | 145       |
| 6    | 2017-01-06 | 1455      |
| 7    | 2017-01-07 | 199       |
| 8    | 2017-01-09 | 188       |

</details>

<details>
<summary>
Output
</summary>
</br>
  
| id | visit_date | people |
| --- |------ | ---------- |
| 5    | 2017-01-05 | 145       |
| 6    | 2017-01-06 | 1455      |
| 7    | 2017-01-07 | 199       |
| 8    | 2017-01-09 | 188       |
</details>

---
