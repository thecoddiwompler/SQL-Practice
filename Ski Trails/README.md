# Ski Trails
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b> This Problem has been taken from 30 days SQL Challenge by Thoufiq Mohammed (Day 2)</b>

  <b>Table Name : mountain_huts</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id     | integer  |
| name  | varchar(40)  |
| altitude   | integer     |

  <b>Table Name : trails</b>

|  Column Name  |Type |
| ------------- | ------------- |
| hut1     | integer  |
| hut2   | integer     |


A ski resort company is planning to construct a new ski slope using a pre-existing network of mountain huts and trails between them. A new slope has to begin at one of the mountain huts, have a middle station at another hut connected with the first one by a direct trail, and end at the third mountain hut which is also connected by a direct trail to the second hut. The altitude of the three huts chosen for constructing the ski slope has to be strictly decreasing.

Each entry in the table trails represents a direct connection between huts with IDs hut1 and hut2. Note that all trails are bidirectional.

Create a query that finds all triplets(startpt,middlept,endpt) representing the mountain huts that may be used for construction of a ski slope.


Assume that:
* there is no trail going from a hut back to itself;
* for every two huts there is at most one direct trail connecting them;
* each hut from table trails occurs in table mountain_huts;

Return the result table in any order.

The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: mountain_huts </b></br>

| id | name      | altitude |
|----|-----------|----------|
| 1  | Dakonat   | 1900     |
| 2  | Natisa    | 2100     |
| 3  | Gajantut  | 1600     |
| 4  | Rifat     | 782      |
| 5  | Tupur     | 1370     |

<b> Table Name: trails </b></br>

| hut1 | hut2 |
|------|------|
| 1    | 3    |
| 3    | 2    |
| 3    | 5    |
| 4    | 5    |
| 1    | 5    |


</details>

<details>
<summary>
Output
</summary>
</br>

 startpt  | middlept |  endpt  
----------|----------|---------
 Dakonat  | Gajantut   | Tupur
 Dakonat  | Tupur   | Rifat
 Gajantut  | Tupur   | Rifat
 Natisa  | Gajantut   | Tupur



</details>

---
