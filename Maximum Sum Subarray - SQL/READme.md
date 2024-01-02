# Maximum Sum Subarray - SQL
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

<b>I found this problem on Codechef.</b>

Given an array A = [A[1], A[2], ..., A[N]] you need to find the maximum sum among all its subarrays.

Note that a subarray is any contiguous set of elements of the array.

However, the array is given to you as a database table:

You have a table `ArrayTable`, with 2 columns, as follows:

  <b>Table Name : ArrayTable</b>
</br>
|  Column Name  |Type |
| ------------- | ------------- |
| key1  | int  |
| val1  | int  |

* key1 corresponds to the index, and val1 corresponds to the value. That is, A[key1]=val1
* It is guaranteed that if there are a total of N rows in the table, then all the key1s are exactly {1,2,…,N}.
<br/>

<br/>

Write a SQL query to find the maximum sum among all its subarrays.
</br>
</br>
<b>The query result format is in the following example:  </b>
</br>
</br>

 <details>
<summary>
Input
</summary>
<br>

<b>Table Name : ArrayTable</b>

| key1  | val1  |
| --- | ------ |
| 1    |  10   |
| 2    | -40  |
| 3    | 20   |
| 4    | 35   |
| 5    | -2   |

</details>

<details>
<summary>
Output
</summary>
<br>

| Max Subarray Sum          |
|---------------|
| 55         | 

</details>

---
