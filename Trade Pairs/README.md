# Restaurant Growth
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Trade_tbl</b>

|  Column Name  |Type |
| ------------- | ------------- |
| TRADE_ID   | varchar(20)     |
| Trade_Timestamp          | time |
| Trade_Stock    | varchar(20)    |
| Quantity        | int     |
| Price | Float |

<b>trade_id is the primary key for this table.</b> </br>
This table contains data about trading of Stocks at some exchange.  </br>
</br>

Write a SQL to find trade couples satisfying the following conditions for each stock :

1. The trades should be within 10 seconds of window 
2. The prices difference between the trades should be more than 10%
</br>

The query result format is in the following example:  

 <details>
<summary>
Input
</summary>
 </br>

 <b>Table Name: Trade_tbl</b>

| TRADE_ID | Trade_Timestamp | Trade_Stock      | Quantity | Price |
|----------|-----------------|------------------|----------|-------|
| TRADE1   | 10:01:05        | ITJunction4All   | 100      | 20.0  |
| TRADE2   | 10:01:06        | ITJunction4All   | 20       | 15.0  |
| TRADE3   | 10:01:08        | ITJunction4All   | 150      | 30.0  |
| TRADE4   | 10:01:09        | ITJunction4All   | 300      | 32.0  |
| TRADE5   | 10:10:00        | ITJunction4All   | -100     | 19.0  |
| TRADE6   | 10:10:01        | ITJunction4All   | -300     | 19.0  |


</details>

<details>
<summary>
Output
</summary>
</br>
  
| tradeid1 | tradeid2 | price_difference |
|----------|----------|------------------|
| TRADE2   | TRADE1   | 25             |
| TRADE3   | TRADE1   | 50             |
| TRADE3   | TRADE2   | 100             |
| TRADE4   | TRADE1   | 60|
| TRADE4   | TRADE2   | 113.3333              |

</details>

---
