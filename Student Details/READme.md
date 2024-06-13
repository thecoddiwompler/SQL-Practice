# Student Details
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : students</b>

|  Column Name  |Type |
| ------------- | ------------- |
| roll_no  | varchar(20) |
| name    | varchar(30)       |

* <b> roll_no is the primary key for this table.</b> </br>
* This table gives roll_no and name of the students.</br>

  <b>Table Name : student_marks</b>

|  Column Name  |Type |
| ------------- | ------------- |
| student_id  | varchar(20) |
| subject1    | int       |
| subject2    | int       |
| subject3    | int       |
| subject4    | int       |
| subject5    | int       |
| subject6    | int       |

* <b> student_id is the primary key for this table. It is also a foreign key to the students table referencing to roll_no.</b> </br>
* This table gives student_id and the marks of the students in 6 subjects.</br>

  <b>Table Name : subjects</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id  | varchar(20) |
| name    | varchar(30)        |
| pass_marks    | int       |

* <b> id is the primary key for this table.</b> </br>
* This table gives id of the subjects (same as of mentioned in student_marks), name of the subjects and pass_marks.</br>

Given tables represent the marks scored by engineering students.

Write a SQL query display the following results for each student.
  - Student_id, Student name
  - Total Percentage of all marks
  - Failed subjects (must be comma seperated values in case of multiple failed subjects)
  - Result (if percentage >= 70% then 'First Class', if >= 50% & <70% then 'Second class', if <50% then 'Third class'.
  			The result should be 'Fail' if a students fails in any subject irrespective of the percentage marks).


Please refer to the sample below for a better idea.

</br>
The query result format is in the following example:  
<br></br>

 <details>
<summary>
Input
</summary>
 </br>

 <b>Table Name: students</b>

| roll_no   | name   |
|-----------|--------|
| 2GR5CS011 | Maryam |
| 2GR5CS012 | Rose   |
| 2GR5CS013 | Alice  |
| 2GR5CS014 | Lilly  |
| 2GR5CS015 | Anna   |
| 2GR5CS016 | Zoya   |


<b>Table Name: student_marks</b>

| student_id | S1  | S2  | S3  | S4  | S5  | S6  |
|------------|-----|-----|-----|-----|-----|-----|
| 2GR5CS011  | 75  | null| 56  | 69  | 82  | null|
| 2GR5CS012  | 57  | 46  | 32  | 30  | null| null|
| 2GR5CS013  | 40  | 52  | 56  | null| 31  | 40  |
| 2GR5CS014  | 65  | 73  | null| 81  | 33  | 41  |
| 2GR5CS015  | 98  | null| 94  | null| 90  | 20  |
| 2GR5CS016  | null| 98  | 98  | 81  | 84  | 89  |


<b>Table Name: subjects</b>

| id  | name                          | pass_marks |
|-----|-------------------------------|------------|
| S1  | Mathematics                   | 40         |
| S2  | Algorithms                    | 35         |
| S3  | Computer Networks             | 35         |
| S4  | Data Structure                | 40         |
| S5  | Artificial Intelligence      | 30         |
| S6  | Object Oriented Programming  | 35         |


</details>

<details>
<summary>
Output
</summary>
</br>
  
| student_id   | student_name       | percentage_marks | failed_subjects | result |
| ---- |  ---- | ---- |  ---- | ---- |
| 2GR5CS011 | Maryam | 70.50 | null | First Class |
| 2GR5CS012 | Rose   | 41.25 | Data Structure,Computer Networks | Fail |
| 2GR5CS013 | Alice  | 43.80 | null | Third Class |
| 2GR5CS014 | Lilly  | 58.60 | null | Second Class |
| 2GR5CS015 | Anna   | 75.50 | Object Oriented Programming | Fail |
| 2GR5CS016 | Zoya   | 90.00 | null | First Class |

</details>

---
