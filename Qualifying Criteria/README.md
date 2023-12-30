# Qualifying Criteria
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Ameriprise_LLC</b>

|  Column Name  |Type |
| ------------- | ------------- |
| teamID  | varchar(2)  |
| memberID  | varchar(10)  |
| Criteria1 | varchar(1) |
| Criteria2 | varchar(1) |

<b>memberID is the primary key of this table.</b>
</br>

The Criteria1 and Criteria2 columns are single characters with two possible values- ["Y", "N"].
</br>

For a person to qualify there are 2 conditions:

    1. The person should have both the criteria as 'Y' .
    2. There should be at least 2 people in his team who qualify for the program.
  
Write a SQL query to find all the qualified members along with their teams.
</br>
Return the result table in any order.

The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: Ameriprise_LLC </b></br>

| teamID | memberID  | Criteria1 | Criteria2 |
|------|---------|----------|---------|
| T1   | T1_mbr1 | Y        | Y       |
| T1   | T1_mbr2 | Y        | Y       |
| T1   | T1_mbr3 | Y        | Y       |
| T1   | T1_mbr4 | Y        | Y       |
| T1   | T1_mbr5 | Y        | N       |
| T2   | T2_mbr1 | Y        | Y       |
| T2   | T2_mbr2 | Y        | N       |
| T2   | T2_mbr3 | N        | Y       |
| T2   | T2_mbr4 | N        | N       |
| T2   | T2_mbr5 | N        | N       |
| T3   | T3_mbr1 | Y        | Y       |
| T3   | T3_mbr2 | Y        | Y       |
| T3   | T3_mbr3 | N        | Y       |
| T3   | T3_mbr4 | N        | Y       |
| T3   | T3_mbr5 | Y        | N       |


</details>

<details>
<summary>
Output
</summary>
</br>

| teamid | memberid |
|--------|----------|
| T1     | T1_mbr1  |
| T1     | T1_mbr2  |
| T1     | T1_mbr3  |
| T1     | T1_mbr4  |
| T3     | T3_mbr1  |
| T3     | T3_mbr2  |

</details>

---
