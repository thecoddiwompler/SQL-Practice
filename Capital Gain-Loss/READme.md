# [Capital Gain/Loss] (https://leetcode.com/problems/capital-gainloss/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


<b>Table Name : Employee</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| stock_name    | varchar |
| operation     | enum    |
| operation_day | int     |
| price         | int     |


<b> (stock_name, operation_day) is the primary key for this table. </b><br/>
<br/>
The operation column is an ENUM of type ('Sell', 'Buy')
Each row of this table indicates that the stock which has stock_name had an operation on the day operation_day with the price.</br>
It is guaranteed that each 'Sell' operation for a stock has a corresponding 'Buy' operation in a previous day. It is also guaranteed that each 'Buy' operation for a stock has a corresponding 'Sell' operation in an upcoming day.
<br/>
Write an SQL query to report the Capital gain/loss for each stock.
</br>
The Capital gain/loss of a stock is the total gain or loss after buying and selling the stock one or many times.<br/>
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

<b>Table Name : Stocks</b>

| stock_name    | operation | operation_day | price  |
| --- |------ | ----|---|
| Leetcode      | Buy       | 1             | 1000   |
| Corona Masks  | Buy       | 2             | 10     |
| Leetcode      | Sell      | 5             | 9000   |
| Handbags      | Buy       | 17            | 30000  |
| Corona Masks  | Sell      | 3             | 1010   |
| Corona Masks  | Buy       | 4             | 1000   |
| Corona Masks  | Sell      | 5             | 500    |
| Corona Masks  | Buy       | 6             | 1000   |
| Handbags      | Sell      | 29            | 7000   |
| Corona Masks  | Sell      | 10            | 10000  |
<br/>


</details>

<details>
<summary>
Output
</summary>

| stock_name    | capital_gain_loss |
| ---- |----|
| Corona Masks  | 9500              |
| Leetcode      | 8000              |
| Handbags      | -23000            |
</details>

---
