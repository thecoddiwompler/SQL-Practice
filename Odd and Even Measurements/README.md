# [Odd and Even Measurements](https://datalemur.com/questions/odd-even-measurements)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## This problem was asked in Google Interview.

## 🛠️ Problem Statement

  <b>Table Name : Measurements</b>

|  Column Name  |Type |
| ------------- | ------------- |
| measurement_id  | INTEGER  |
| measurement_value  | DECIMAL  |
| measurement_time | TIMESTAMP |

<b>measurement_id is the primary key of this table.</b>
</br>

Assume you're given a table with measurement values obtained from a Google sensor over multiple days with measurements taken multiple times within each day.

</br>
  
Write a SQL query to calculate the sum of odd-numbered and even-numbered measurements separately for a particular day and display the results in two different columns. Refer to the Example Output below for the desired format.

</br>

Definition:
<br>
Within a day, measurements taken at 1st, 3rd, and 5th times are considered odd-numbered measurements, and measurements taken at 2nd, 4th, and 6th times are considered even-numbered measurements.

Return the result table in the order of measurement day.

The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: Measurements </b></br>

| measurement_id | measurement_value |     measurement_time      |
|-----------------|-------------------|---------------------------|
|      131233     |      1109.51      | 2022-07-10 09:00:00      |
|      135211     |      1662.74      | 2022-07-10 11:00:00      |
|      523542     |      1246.24      | 2022-07-10 13:15:00      |
|      143562     |      1124.50      | 2022-07-11 15:00:00      |
|      346462     |      1234.14      | 2022-07-11 16:45:00      |


</details>

<details>
<summary>
Output
</summary>
</br>

| measurement_day         | odd_sum  | even_sum |
|-------------------------|----------|----------|
| 2022-07-10 00:00:00 | 2355.75  | 1662.74  |
| 2022-07-11 00:00:00 | 1124.50  |   1234.14   |


</details>

---
