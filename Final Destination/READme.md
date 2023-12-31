# Final Destination
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Flights</b>

|  Column Name  |Type |
| ------------- | ------------- |
| cid          | VARCHAR(512)     |
| fid     | VARCHAR(512) |
| origin | VARCHAR(512) |
| Destination | VARCHAR(512) |

* fid (Flight ID) is the primary key column for this table.
* Each row of this table indicates the cid (Customer ID), fid, Origin, and Destination of the flight.
<br/>



Write a SQL query to find the Initial Origin and Final Destination for each cid.</br>
Return the result table ordered by cid in ascending order.

</br>
The query result format is in the following example. 
</br>
</br>
 <details>
<summary>
Input
</summary>
  <br>
  <b>Table Name: Flights</b>

| cid | fid | origin | destination |
|-----|-----|--------|-------------|
| 1   | f1  | Del    | Hyd         |
| 1   | f2  | Hyd    | Blr         |
| 1   | f3  | Blr    | Pune        |
| 2   | f4  | Mum    | Agra        |
| 2   | f5  | Agra   | Kol         |


</details>

<details>
<summary>
Output
</summary>

| cid | origin | destination |
| ---- | ---- | ---|
| 1  | Del   | Pune |
| 2  | Mum   | Kol |

</details>

---
