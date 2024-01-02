# Cricket Runs
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


  <b>Table Name : cricket_runs</b>

|  Column Name  |Type |
| ------------- | ------------- |
| ball_no  | integer  |
| runs  | integer  |
| delivery_type  | varchar(20)  |

* <b>ball_no is the primary key for this table. </br>
</b>

In an ODI cricket match, you have a dataset representing deliveries during the match. The dataset contains three columns: ball_no (delivery number in the match), runs (runs scored on that delivery), and delivery_type (type of delivery: legal, nb for no ball, or wd for wide).

Write a SQL query to find the runs scored in every over.  

There are a few special conditions to consider:

* There can be two or more consecutive extra deliveries (e.g., two consecutive wide balls).
* Runs can be scored on extra deliveries as well. For example, a boundary on a no-ball or a wide ball. In this case, a total of 5 runs would be counted.


Return the result table in the increasing order of overs.  

The query result format is in the following example:  

 <details>
<summary>
Input
</summary>

<br>

<b> Table Name: cricket_runs

| ball_no | runs | delivery_type |
|------------|----------|-----|
| 1           | 1           | legal         |
| 2           | 2           | legal         |
| 3           | 1           | nb            |
| 4           | 4           | wd            |
| 5           | 4           | legal         |
| 6           | 3           | legal         |
| 7           | 0           | legal         |
| 8           | 3           | legal         |
| 9           | 0           | wd            |
| 10          | 2           | legal         |
| 11          | 2           | legal         |
| 12          | 0           | legal         |
| 13          | 4           | legal         |
| 14          | 2           | legal         |
| 15          | 0           | nb            |
| 16          | 1           | nb            |
| 17          | 3           | legal         |
 

</details>

<details>
<summary>
Output
</summary>

<br>

| over_no |  total_runs |
| ---- |  ---- |
| 1 | 20 |
| 2 | 17 |

</details>

Please note that this is sample input for illustration purpose only. The actual testcase would be containing larger number of rows.

---
