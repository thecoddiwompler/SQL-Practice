# Mismatched IDs
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b> This problem has been asked in PWC interview. </b>

  <b>Table Name : Source</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| id  | int  |
| name | varchar |

<br>

  <b>Table Name : Target</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| id  | int  |
| name | varchar |

Write a SQL query to find the new 'id' values in either the 'source' or 'target' table and identify 'id' values with mismatched 'name' values in both tables. <br>
Also provide the comment for each inconsistency, specifying if the 'id' is new in the 'source' or 'target,' or if 'name' values are mismatched. 

Please refer to the sample output given below for better understanding. Please note that the 'comment' field will be having only 3 types of entries: ('New in Source', 'New in Target', 'Mismatch').

 <details>
<summary>
Input
</summary>

<b>Table Name : Source</b>

| id | name | 
|------------|---------------|
| 1       | A         |
| 2       | B         |
| 3      | C         |
| 4       | D        |


<br/>

<b>Table Name : Target

| id | name |
|------------|--------------|
| 1       | A         |
| 2       | B         |
|  4      | X         |
|   5     | F         |

</details>

<details>
<summary>
Output
</summary>

| id | comment |
|------------|------------------------------|
| 3       |        New in Source                      | 
| 4       |        Mismatch                      | 
| 5       |        New in Target                      | 



</details>

---

