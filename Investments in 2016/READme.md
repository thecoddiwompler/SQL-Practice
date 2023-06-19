# [Investments in 2016](https://leetcode.com/problems/investments-in-2016/description/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Insurance</b>

|  Column Name  |Type |
| ------------- | ------------- |
| pid         | int   |
| tiv_2015    | float |
| tiv_2016    | float |
| lat         | float |
| lon         | float |

<b>pid is the primary key column for this table.</b>
</br>

<b> Each row of this table contains information about one policy where:</b>  
pid is the policyholder's policy ID.  
tiv_2015 is the total investment value in 2015 and tiv_2016 is the total investment value in 2016.  
lat is the latitude of the policy holder's city. It's guaranteed that lat is not NULL.  
lon is the longitude of the policy holder's city. It's guaranteed that lon is not NULL.  
</br>
  
<b> Write an SQL query to report the sum of all total investment values in 2016 tiv_2016, for all policyholders who:</b>  

* have the same tiv_2015 value as one or more other policyholders, and  
* are not located in the same city like any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
</br>
Round tiv_2016 to two decimal places.
</br>
Return the result table in any order.

The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: Insurance </b></br>

| pid | tiv_2015 | tiv_2016 | lat | lon |
| --------- | ------------- | ---------------- | -------------------- | ----------------------- |
| 1   | 10       | 5        | 10  | 10  |
| 2   | 20       | 20       | 20  | 20  |
| 3   | 10       | 30       | 20  | 20  |
| 4   | 10       | 40       | 40  | 40  |

</details>

<details>
<summary>
Output
</summary>
</br>

| tiv_2016 |
| --------- |
| 45.00  |
  
</details>

---
