# Popular Posts
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement


  <b>Table Name : post_views</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| session_id  | int  |
| post_id | int |
| perc_viewed | float |

<br>

  <b>Table Name : user_sessions</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| session_id  | int  |
| user_id | varchar(10) |
| session_starttime  | timestamp  |
| session_endtime | timestamp |
| platform  | varchar(20)  |

The column 'perc_viewed' in the table 'post_views' denotes the percentage of the session duration time the user spent viewing a post. <br> 
Write a SQL query to calculate the total time that each post was viewed by users. Output post ID and the total viewing time in seconds, but only for posts with a total viewing time of over 5 seconds.

 <details>
<summary>
Input
</summary>

<b>Table Name : post_views</b>

| session_id | post_id | perc_viewed |
|------------|---------|-------------|
| 1          | 1       | 2           |
| 1          | 2       | 4           |
| 1          | 3       | 1           |
| 2          | 1       | 20          |
| 2          | 2       | 10          |
| 2          | 3       | 10          |
| 2          | 4       | 21          |
| 3          | 2       | 1           |
| 3          | 4       | 1           |
| 4          | 2       | 50          |
| 4          | 3       | 10          |
| 6          | 2       | 2           |
| 8          | 2       | 5           |
| 8          | 3       | 2.5         |



<br/>

<b>Table Name : user_sessions

| session_id | user_id | session_starttime    | session_endtime      | platform |
|------------|---------|----------------------|----------------------|----------|
| 1          | U1      | 2020-01-01 12:14:28  | 2020-01-01 12:16:08  | Windows  |
| 2          | U1      | 2020-01-01 18:23:50  | 2020-01-01 18:24:00  | Windows  |
| 3          | U1      | 2020-01-01 08:15:00  | 2020-01-01 08:20:00  | IPhone   |
| 4          | U2      | 2020-01-01 10:53:10  | 2020-01-01 10:53:30  | IPhone   |
| 5          | U2      | 2020-01-01 18:25:14  | 2020-01-01 18:27:53  | IPhone   |
| 6          | U2      | 2020-01-01 11:28:13  | 2020-01-01 11:31:33  | Windows  |
| 7          | U3      | 2020-01-01 06:46:20  | 2020-01-01 06:58:13  | Android  |
| 8          | U3      | 2020-01-01 10:53:10  | 2020-01-01 10:53:50  | Android  |
| 9          | U3      | 2020-01-01 13:13:13  | 2020-01-01 13:34:34  | Windows  |
| 10         | U4      | 2020-01-01 08:12:00  | 2020-01-01 12:23:11  | Windows  |
| 11         | U4      | 2020-01-01 21:54:03  | 2020-01-01 21:54:04  | IPad     |


</details>

<details>
<summary>
Output
</summary>

| post_id | total_viewtime |
|------------|------------------------------|
| 4       |       5.1                    | 
| 2       |        24                      | 



</details>

---

