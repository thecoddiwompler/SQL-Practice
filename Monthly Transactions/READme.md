# [Monthly Transactions](https://leetcode.com/problems/monthly-transactions-i)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Transactions</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id  | int  |
| country  | varchar  |
| state | enum |
| amount | int |
| trans_date | date |

<b>id is the primary key of this table.</b>
</br>

The table has information about incoming transactions. </br>
The state column is an enum of type ["approved", "declined"].
</br>
  
Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.
</br>
Return the result table in any order.

The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: Transactions </b></br>

| id   | country | state    | amount | trans_date |
| --------- | ------------- | ---------------- | -------------------- | ----------------------- |
| 121  | US      | approved | 1000   | 2018-12-18 |
| 122  | US      | declined | 2000   | 2018-12-19 |
| 123  | US      | approved | 2000   | 2019-01-01 |
| 124  | DE      | approved | 2000   | 2019-01-07 |

</details>

<details>
<summary>
Output
</summary>
</br>

| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
| --------- | ------------- | ---------------- | -------------------- | ----------- | ---------- |
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |
  
</details>

---
