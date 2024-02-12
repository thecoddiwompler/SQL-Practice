# Trip Details
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : travel_data</b>

|  Column Name  |Type |
| ------------- | ------------- |
| customer   | varchar(20)     |
| start_loc          | varchar(50) |
| end_loc    | varchar(50)    |

This table contains data about passengers traveling between various cities.  </br>
</br>

You are given the travel data for each customer in no particular order. <br>
Write a SQL to find the start location and end location of the customer and total number of locations covered by them.</br>
</br>

The query result format is in the following example:  

 <details>
<summary>
Input
</summary>
 </br>

 <b>Table Name: travel_data</b>

| customer | start_loc  | end_loc    |
|----------|------------|------------|
| c1       | New York   | Lima       |
| c1       | London     | New York   |
| c1       | Lima       | Sao Paulo  |
| c1       | Sao Paulo  | New Delhi  |
| c2       | Mumbai     | Hyderabad  |
| c2       | Surat      | Pune       |
| c2       | Hyderabad  | Surat      |
| c3       | Kochi      | Kurnool    |
| c3       | Lucknow    | Agra       |
| c3       | Agra       | Jaipur     |
| c3       | Jaipur     | Kochi      |



</details>

<details>
<summary>
Output
</summary>
</br>
  
| customer | start_loc | end_loc   | place_visited |
|----------|-----------|-----------|---------------|
| c1       | London  | New Delhi | 5           |
| c2       | Mumbai    | Pune      | 4             |
| c3       | Lucknow     | Kurnool     | 5            |


</details>

---
