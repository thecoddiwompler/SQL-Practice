# Match Results
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b>This problem has been asked in Telstra interview. I personally solved it in the interview.</b>

  <b>Table Name : MatchResults</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| id  | int  |
| team1  | varchar  |
| team2  | varchar  |
| won  | varchar  |

<b> id is the primary key for this table. </b><br/>
Each row contains information about the matches played between the two teams and who won the match.
<br/>

<br/>

Write an SQL query to find the number of matches won and lost for all the teams.
</br>
Return the result table in decreasing order of the number of matches won by them.
</br>
</br>
<b>The query result format is in the following example:  </b>
</br>
</br>

 <details>
<summary>
Input
</summary>

<b>Table Name : MatchResults</b>

| id  | team1  |  team2 | won |
| --- | ------ | ------ | --- |
| 1    | India         | Australia     | India        |
| 2    | Australia     | England       | Australia    |
| 3    | England       | India         | India        |
| 4    | South Africa  | Australia     | Australia    |
| 5    | England       | South Africa  | South Africa |
| 6    | India         | South Africa  | India        |
| 7    | Sri Lanka     | India         | India        |
| 8    | Australia     | Sri Lanka     | Australia    |
| 9    | Sri Lanka     | England       | Sri Lanka    |
| 10   | South Africa  | Sri Lanka     | South Africa |

</details>

<details>
<summary>
Output
</summary>

| Team          | Played | Won | Lost |
|---------------|--------|-----|------|
| India         | 4      | 4   | 0    |
| Australia     | 4      | 3   | 1    |
| South Africa  | 4      | 2   | 2    |
| Sri Lanka     | 4      | 1   | 3    |
| England       | 4      | 0   | 4    |

</details>

---
