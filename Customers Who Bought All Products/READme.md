# [Customers Who Bought All Products](https://leetcode.com/problems/customers-who-bought-all-products/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Customer</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| customer_id  | int  |
| product_key  | int  |

There is no primary key for this table. It may contain duplicates. customer_id is not NULL. </br>
product_key is a foreign key to Product table.
<br/>

  <b>Table Name : Product</b>
</br>

|  Column Name  |Type |
| ------------- | ------------- |
| product_key  | int  |

<b> product_key is the primary key column for this table. </b><br/>
</br>
Write an SQL query to report the customer ids from the Customer table that bought all the products in the Product table.
</br>
Return the result table in any order.
</br>
</br>
<b>The query result format is in the following example:  </b>
</br>
</br>

 <details>
<summary>
Input
</summary>

<b>Table Name : Customer</b>
</br>

| customer_id  | product_key  | 
| --- |------ | 
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |

<br/>

<b>Table Name : Product</b>
</br>

| product_key  |
| --- |
| 5           |
| 6           |

</details>

<details>
<summary>
Output
</summary>

| customer_id |
| ---- |
| 1           |
| 3           |
</details>

---
