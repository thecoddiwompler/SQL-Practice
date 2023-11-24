# Customer Acquisition
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b> This problem was appeared in Tiger Analytics Interview </b>

  <b>Table Name : Sales</b>

|  Column Name  |Type |
| ------------- | ------------- |
| order_date  | date  |
| customer  | varchar  |
| quantity_purchased  | int  |

<b>order_date, customer is the primary key for this table. </br>
</b>

Write an SQL query to find the count of new customers added in each Month.  

Return the result table in any order.  

The query result format is in the following example:  

 <details>
<summary>
Input
</summary>

<br>

<b> Table Name: Sales

| order_date | customer | qty |
|------------|----------|-----|
| 2021-01-01 | C1       | 20  |
| 2021-01-01 | C2       | 30  |
| 2021-02-01 | C1       | 10  |
| 2021-02-01 | C3       | 15  |
| 2021-03-01 | C5       | 19  |
| 2021-03-01 | C4       | 10  |
| 2021-04-01 | C3       | 13  |
| 2021-04-01 | C5       | 15  |
| 2021-04-01 | C6       | 10  |
 

</details>

<details>
<summary>
Output
</summary>

<br>

| order_month |  customer_acquisition_count |
| ---- |  ---- |
| 2021-Apr | 1 |
| 2021-Feb | 1 |
| 2021-Jan | 2 |
| 2021-Mar | 2 |


</details>

---
