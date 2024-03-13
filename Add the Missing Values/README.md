# Add the Missing Values
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : job_skills</b>

|  Column Name  |Type |
| ------------- | ------------- |
| row_id          | int  |
| job_role | varchar(20)  |
| skills      | varchar(20)  |


</br>
In the given input table, there are rows with missing JOB_ROLE values. Write a query to fill in those blank fields with appropriate values.
Assume row_id is always in sequence and job_role field is populated only for the first skill.

<br>

The query result format is in the following example.  
 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: job_skills </b></br>

| row_id | job_role         | skills            |
|--------|------------------|-------------------|
| 1      | Data Engineer    | SQL               |
| 2      |                  | Python            |
| 3      |                  | AWS               |
| 4      |                  | Snowflake         |
| 5      |                  | Apache Spark      |
| 6      | Web Developer    | Java              |
| 7      |                  | HTML              |
| 8      |                  | CSS               |
| 9      | Data Scientist   | Python            |
| 10     |                  | Machine Learning  |
| 11     |                  | Deep Learning     |
| 12     |                  | Tableau           |

</details>

<details>
<summary>
Output
</summary>
</br>

| row_id | job_role         | skills            |
|--------|------------------|-------------------|
| 1      | Data Engineer    | SQL               |
| 2      |   Data Engineer               | Python            |
| 3      |   Data Engineer               | AWS               |
| 4      |                Data Engineer  | Snowflake         |
| 5      |          Data Engineer       | Apache Spark      |
| 6      | Web Developer    | Java              |
| 7      |        Web Developer          | HTML              |
| 8      |  Web Developer                | CSS               |
| 9      | Data Scientist   | Python            |
| 10     |             Data Scientist      | Machine Learning  |
| 11     |           Data Scientist        | Deep Learning     |
| 12     |         Data Scientist          | Tableau           |

</details>

---
