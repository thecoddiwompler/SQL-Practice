# [Game Play Analysis](https://leetcode.com/problems/game-play-analysis-iv)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Activity</b>

|  Column Name  |Type |
| ------------- | ------------- |
| player_id  | int  |
| device_id  | int  |
| event_date | date |
| games_played | int |

<b>(player_id, event_date) is the primary key of this table.</b> </br>
This table shows the activity of players of some games. </br>
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device. </br>
</br>
Write a SQL query to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. </br>
In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.</br>
</br>
The query result format is in the following example:  

 <details>
<summary>
Input
</summary>
 </br>

| player_id | device_id | event_date | games_played |
| --- |------ | ---------- | --------- | 
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-03-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

</details>

<details>
<summary>
Output
</summary>
</br>
  
| fraction |  
| ---- |  
| 0.33 |

</details>

---
