# Messages Exchanged
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


  <b>Table Name : subscriber</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| sms_date  | date  |
| sender  | varchar(20)  |
| receiver  | varchar(20) |
| sms_no  | int  |

Each row contains information about the messages exchanged between two people on the given sms_date.


Write a SQL query to fnd the total number of messages exchanged between each person each day in the "subscriber" table.
</br>
</br>
Return the ouput in any order. <br><br>
<b>The query result format is in the following example:  </b>
</br>
</br>

 <details>
<summary>
Input
</summary>
<br>

<b>Table Name : subscriber</b>

| sms_date   | sender   | receiver | sms_no |
|------------|----------|----------|--------|
| 2020-04-01   | Avinash  | Vibhor   | 10     |
| 2020-04-01   | Vibhor   | Avinash  | 20     |
| 2020-04-01   | Avinash  | Pawan    | 30     |
| 2020-04-01   | Pawan    | Avinash  | 20     |
| 2020-04-01   | Vibhor   | Pawan    | 5      |
| 2020-04-01   | Pawan    | Vibhor   | 8      |
| 2020-04-01   | Vibhor   | Deepak   | 50     |


</details>

<details>
<summary>
Output
</summary>
<br>

| sms_date   | p1       | p2      | total_sms |
|------------|----------|---------|-----------|
| 2020-04-01 | Deepak  | Avinash  | 0        |
| 2020-04-01 | Pawan  | Avinash   | 50        |
| 2020-04-01 | Pawan  | Deepak  | 0         |
| 2020-04-01 | Vibhor    | Avinash  | 30        |
| 2020-04-01 | Vibhor    | Deepak  | 50         |
| 2020-04-01 | Vibhor   | Pawan  | 13       |


</details>

---
