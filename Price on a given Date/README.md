# Price on a given Date
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---


## 🛠️ Problem Statement

<b> This Problem was asked in Freshworks interview. </b>

  
<b>Table Name : sku</b>

|  Column Name  |Type |
| ------------- | ------------- |
| sku_id  | INT  |
| price_date  | DATE  |
| price | INT |

<b>sku_id, price_date is the primary key of this table.</b>
</br>

You are given the price of each sku whenever there is a change in price.

</br>
  
Write an SQL to find the price at the start of each month. Refer to the Example Output below for the desired format.

</br>

The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: sku </b></br>

| sku_id | price_date  | price |
|--------|-------------|-------|
| 1      | 2023-01-01  | 10    |
| 1      | 2023-02-15  | 15    |
| 1      | 2023-03-03  | 18    |
| 1      | 2023-03-27  | 15    |
| 1      | 2023-04-06  | 20    |



</details>

<details>
<summary>
Output
</summary>
</br>

| sku_id | month_start_date | price |
|--------|-------------------|-------|
| 1      | 2023-01-01        | 10    |
| 1      | 2023-02-01        | 10    |
| 1      | 2023-03-01        | 15    |
| 1      | 2023-04-01        | 15    |
| 1      | 2023-05-01        | 20    |


</details>

---
