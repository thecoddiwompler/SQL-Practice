# Missing Invoices
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


  <b>Table Name : invoice</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| serial_no  | int  |
| invoice_date | date |

<br>


In the given input table, some of the invoice are missing, Write a sql query to identify the missing serial no. 

As an assumption, consider the serial no with the lowest value to be the first generated invoice and the highest serial no value to be the last generated invoice

 <details>
<summary>
Input
</summary>
<br>
<b>Table Name : invoice</b>

| serial_no | invoice_date |
|-----------|--------------|
| 330115    | 2024-03-01   |
| 330120    | 2024-03-01   |
| 330121    | 2024-03-01   |
| 330122    | 2024-03-02   |
| 330125    | 2024-03-02   |


</details>

<details>
<summary>
Output
</summary>
<br>

| serial_no |
|-----------|
| 330116    |
| 330117    |
| 330118    |
| 330119    |
| 330123    |
| 330124    |



</details>

---

