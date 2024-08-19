# [Lift Overloaded](https://www.namastesql.com/coding-problem/15-lift-overloaded-part-1)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : lifts</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id | int       |
| capacity_kg          | int   |


 <b>Table Name : lift_passengers</b>

| COLUMN_NAME    | DATA_TYPE   |
| ------------- | ------------- |
| passenger_name | varchar(10) |
| weight_kg      | int         |
| lift_id        | int         |

You are given a table of list of lifts , their maximum capacity and people along with their weight who wants to enter into it. You need to make sure maximum people enter into the lift without lift getting overloaded.

For each lift, Write a SQL Query to find the comma separated list of people who can be accommodated. The comma separated list should have people in the order of their weight in increasing order.

Display the output in increasing order of id.

 <details>
<summary>
Input
</summary>
<br>
  
  <b>Table Name: lifts</b>

|  id  |capacity_kg |
| ------------- | ------------- |
| 1 | 250 |
| 2 | 280 |

<b>Table Name: lift_passengers</b>

|  passenger_name  | weight_kg | lift_id |
| ------------- | ------------- | --- |
| Dheeraj | 78 | 1 |
| Adarsh | 70 | 1 | 
| Rahul | 80 | 1 |
| Srinivas | 85 | 1 |
| Dushyant | 95 | 1 |
| Priti | 50 | 2 |
| Neha | 53 | 2 | 
| Vimal | 58 | 2 |
| Himanshi | 62 | 2 |
| Akshay | 73 | 2 |
| Devendra | 78 | 2 |
| Amrendra | 83 | 2 |


</details>

<details>
<summary>
Output
</summary>

<br>

| id |      passenger_list    |   
|----|---------------------------|
| 1 | Adarsh,Dheeraj,Rahul |
| 2 | Priti,Neha,Vimal,Himanshi |