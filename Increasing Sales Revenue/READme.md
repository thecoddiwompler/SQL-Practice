# Increasing Sales Revenue
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b> This problem has been asked in Deloitte Interview. </b>

  <b>Table Name : Products</b>

|  Column Name  |Type |
| ------------- | ------------- |
| product_id  | int  |
| product_name  | varchar(50)  |
| category | varchar(50) |

* <b> product_id is Primary Key of this table. </b> <br>
<br>
  
<b>Table Name : Sales</b>

|  Column Name  |Type |
| ------------- | ------------- |
| product_id  | int  |
| year  | int  |
| total_sales_revenue | DECIMAL(10, 2) |

* <b> product_id, year is the Primary Key of this table. </b>
* product_id is the Foreign key to Products table.
<br><br>

Write a sql query to find the products whose total sales revenue has increased every year. Include the product_id , product_name and category in the result.
Sort the result by product_id.

</br>
 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: Products </b></br>

| product_id | product_name | category          |
|------------|--------------|-------------------|
| 1          | Laptops      | Electronics      |
| 2          | Jeans        | Clothing         |
| 3          | Chairs       | Home Appliances  |

<b> Table Name: Sales </b></br>

| product_id | year | total_sales_revenue |
|------------|------|---------------------|
| 1          | 2019 | 1000.00             |
| 1          | 2020 | 1200.00             |
| 1          | 2021 | 1100.00             |
| 2          | 2019 | 500.00              |
| 2          | 2020 | 600.00              |
| 2          | 2021 | 900.00              |
| 3          | 2019 | 300.00              |
| 3          | 2020 | 450.00              |
| 3          | 2021 | 400.00              |


</details>

<details>
<summary>
Output
</summary>
</br>

| product_id | product_name | category          |
|------------|--------------|-------------------|
| 2          | Jeans        | Clothing         |
  
</details>

---