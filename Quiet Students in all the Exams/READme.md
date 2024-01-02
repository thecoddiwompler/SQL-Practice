# [Finding Quiet Students](https://leetcode.com/problems/find-the-quiet-students-in-all-exams/)

![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b>Table Name : Students</b>
</br>
|  Column Name  | Type     |
| ------------- | --------- |
| student_id    | int       |
| student_name  | varchar   |

<b>Table Name : Exams</b>
</br>
|  Column Name  | Type     |
| ------------- | --------- |
| exam_id       | int       |
| student_id    | int       |
| score         | int       |

Write a SQL query to find and display students who did not achieve the highest or lowest scores in any of their exams. Do not include those students who did not appear in any exam.

### Schema

 <details>
<summary>
Input
</summary>

<b>Table Name : Students</b>

| student_id | student_name |
|------------|--------------|
| 1          | Daniel       |
| 2          | Jade         |
| 3          | Stella       |
| 4          | Jonathan     |
| 5          | Will         |

</br>

<b>Table Name : Exams</b>

| exam_id | student_id | score |
|---------|------------|-------|
| 10      | 1          | 70    |
| 10      | 2          | 80    |
| 10      | 3          | 90    |
| 20      | 1          | 80    |
| 30      | 1          | 70    |
| 30      | 3          | 80    |
| 30      | 4          | 90    |
| 40      | 1          | 60    |
| 40      | 2          | 70    |
| 40      | 4          | 80    |

</br>
</details>

<details>
<summary>Output</summary>

| student_id | student_name |
|------------|--------------|
| 2        | Jade         |

</details>

---
