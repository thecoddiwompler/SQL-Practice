# Repeat Customers
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : customer_orders</b>

|  Column Name  |Type |
| ------------- | ------------- |
| order_id     | integer  |
| customer_id  | integer  |
| order_date   | date     |
| order_amount | integer  |

  
Write a SQL query to find the new and repeated customer for each order_date. Refer to Input and Output Table for better understanding.
</br>
Return the result table in the increasing order of order_date.

The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: customer_orders </b></br>

| order_id | customer_id | order_date | order_amount |
|----------|-------------|------------|--------------|
| 1        | 100         | 2022-01-01 | 2000         |
| 2        | 200         | 2022-01-01 | 2500         |
| 3        | 300         | 2022-01-01 | 2100         |
| 4        | 100         | 2022-01-02 | 2000         |
| 5        | 400         | 2022-01-02 | 2200         |
| 6        | 500         | 2022-01-02 | 2700         |
| 7        | 100         | 2022-01-03 | 3000         |
| 8        | 400         | 2022-01-03 | 1000         |
| 9        | 600         | 2022-01-03 | 3000         |



</details>

<details>
<summary>
Output
</summary>
</br>

| order_date | first_visit_customer | repeated_visit_customer |
|--------|----------|------|
| 2022-01-01     | 3  | 0 |
| 2022-01-02     | 2  | 1 |
| 2022-01-03     | 1  | 2 | 

</details>

---
