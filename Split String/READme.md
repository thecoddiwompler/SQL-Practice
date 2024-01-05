# Split String
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : namaste_python</b>

|  Column Name  |Type |
| ------------- | ------------- |
| file_name   | varchar(25)     |
| content          | varchar(200) |

* <b> file_name is the primary key for this table.</b> </br>

This table contains data about file_name and its content.   
</br>
Write a SQL query to get the individual words from all rows whose count is more than one from the content column.
Please refer to the sample below for a better idea.

</br>
The query result format is in the following example:  
<br></br>

 <details>
<summary>
Input
</summary>
 </br>

 <b>Table Name: namaste_python</b>

| file_name             | content                                                           |
|-----------------------|-------------------------------------------------------------------|
| python bootcamp1.txt  | python for data analytics 0 to hero bootcamp starting on Jan 6th |
| python bootcamp2.txt  | classes will be held on weekends from 11 am to 1 pm for 5-6 weeks  |
| python bootcamp3.txt  | use code NY2024 to get 33 percent off. You can register from namaste sql website. Link in pinned comment |


</details>

<details>
<summary>
Output
</summary>
</br>
  
| value   | count_of_word       |
| ---- |  ---- |
| from | 2 |
| for | 2 |
| on | 2 |
| to | 3 |

</details>

---
