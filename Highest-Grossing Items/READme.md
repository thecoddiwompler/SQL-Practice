# [Highest-Grossing Items](https://datalemur.com/questions/sql-highest-grossing)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement
<br/>
Assume you're given a table containing data on Amazon customers and their spending on products in different categorie, write a query to identify the top two highest-grossing products within each category in the year 2022. The output should include the category, product, and total spend.
<br/>
<br/>
  <b>Table Name : product_spend</b>
<br/>

|  Column Name  |Type |
| ------------- | ------------- |
| category |	string |
| product |	string |
| user_id |	integer |
| spend |	decimal |
| transaction_date |	timestamp |

  
The query result format is in the following example. 
</br>
</br>
 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: product_spend </b></br>

| category |	product |	user_id |	spend |	transaction_date |
| --------- | ------------- | ---------------- | -----| -------|
| appliance |	refrigerator |	165 |	246.00 |	12/26/2021 12:00:00 |
| appliance |	refrigerator |	123 |	299.99 |	03/02/2022 12:00:00 |
| appliance |	washing machine |	123 |	219.80 | 03/02/2022 12:00:00 |
| electronics |	vacuum |	178 |	152.00 |	04/05/2022 12:00:00 |
| electronics |	wireless headset |	156 |	249.90 |	07/08/2022 12:00:00 |
| electronics |	vacuum |	145 |	189.00 |	07/15/2022 12:00:00 |

</details>

<details>
<summary>
Output
</summary>
</br>

| category | product | total_spend |
| --- |----- |----|
| appliance |	refrigerator |	299.99 |
| appliance |	washing machine |	219.80 |
| electronics |	vacuum |	341.00 |
| electronics |	wireless headset |	249.90 |

</details>

---
