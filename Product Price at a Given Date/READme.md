# [Product Price at a Given Date](https://leetcode.com/problems/product-price-at-a-given-date/description/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Products</b>

|  Column Name  |Type |
| ------------- | ------------- |
| product_id  | int  |
| new_price  | int  |
| change_date | date |

<b>(product_id, change_date) is the primary key of this table.  </b></br>
Each row of this table indicates that the price of some product was changed to a new price at some date.
<br/>

Write an SQL query to find the prices of all products on 2019-08-16. Assume the price of all products before any change is 10.  
Return the result table in any order.
</br>
The query result format is in the following example:  

 <details>
<summary>
Input
</summary>
  
  <b>Table Name: Products</b>

| product_id  | new_price  | change_date | 
| --- |------ | ---------- |
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |

</details>

<details>
<summary>
Output
</summary>

| product_id | price |
| ---- | ---- |
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |

</details>

---
