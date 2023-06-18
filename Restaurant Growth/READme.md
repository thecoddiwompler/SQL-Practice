# [Restaurant Growth](https://leetcode.com/problems/restaurant-growth/description)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Customer</b>

|  Column Name  |Type |
| ------------- | ------------- |
| customer_id   | int     |
| name          | varchar |
| visited_on    | date    |
| amount        | int     |

<b>(customer_id, visited_on) is the primary key for this table.</b> </br>
This table contains data about customer transactions in a restaurant.  
visited_on is the date on which the customer with ID (customer_id) has visited the restaurant.  
amount is the total paid by a customer. </br>
</br>
You are the restaurant owner and you want to analyze a possible expansion (there will be at least one customer every day).  
</br>
Write an SQL query to compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.  

Return result table ordered by visited_on in ascending order.</br>
</br>
The query result format is in the following example:  

 <details>
<summary>
Input
</summary>
 </br>

 <b>Table Name: Customer</b>

| customer_id | name         | visited_on   | amount      |
| --- |------ | ---------- | --------- | 
| 1           | Jhon         | 2019-01-01   | 100         |
| 2           | Daniel       | 2019-01-02   | 110         |
| 3           | Jade         | 2019-01-03   | 120         |
| 4           | Khaled       | 2019-01-04   | 130         |
| 5           | Winston      | 2019-01-05   | 110         | 
| 6           | Elvis        | 2019-01-06   | 140         | 
| 7           | Anna         | 2019-01-07   | 150         |
| 8           | Maria        | 2019-01-08   | 80          |
| 9           | Jaze         | 2019-01-09   | 110         | 
| 1           | Jhon         | 2019-01-10   | 130         | 
| 3           | Jade         | 2019-01-10   | 150         | 

</details>

<details>
<summary>
Output
</summary>
</br>
  
| visited_on   | amount       | average_amount |
| ---- |  ---- | ---- |
| 2019-01-07   | 860          | 122.86         |
| 2019-01-08   | 840          | 120            |
| 2019-01-09   | 840          | 120            |
| 2019-01-10   | 1000         | 142.86         |
</details>

---
