# [Trips and Users](https://leetcode.com/problems/trips-and-users/description/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Trips</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id          | int      |
| client_id   | int      |
| driver_id   | int      |
| city_id     | int      |
| status      | enum     |
| request_at  | date     | 

<br>

* id is the primary key (column with unique values) for this table.
* The table holds all taxi trips. Each trip has a unique id, while client_id and driver_id are foreign keys to the users_id at the Users table.
* Status is an ENUM (category) type of ('completed', 'cancelled_by_driver', 'cancelled_by_client').

<br>

    
<b>Table Name : Users</b>

|  Column Name  |Type |
| ------------- | ------------- |
| users_id    | int      |
| banned      | enum     |
| role        | enum     |

* users_id is the primary key (column with unique values) for this table.
* The table holds all users. Each user has a unique users_id, and role is an ENUM type of ('client', 'driver', 'partner').
* banned is an ENUM (category) type of ('Yes', 'No').

<br>

The cancellation rate is computed by dividing the number of canceled (by client or driver) requests with unbanned users by the total number of requests with unbanned users on that day.

Write a solution to find the cancellation rate of requests with unbanned users (both client and driver must not be banned) each day between "2013-10-01" and "2013-10-03". Round Cancellation Rate to two decimal points.

Return the result table in any order.

The result format is in the following example.

 <details>
<summary>
Input
</summary>
 </br>

 <b>Table Name: Trips</b>

| id | client_id | driver_id | city_id | status              | request_at |
| --- |------ | ---------- | --------- | ------- | ------- |
| 1  | 1         | 10        | 1       | completed           | 2013-10-01 |
| 2  | 2         | 11        | 1       | cancelled_by_driver | 2013-10-01 |
| 3  | 3         | 12        | 6       | completed           | 2013-10-01 |
| 4  | 4         | 13        | 6       | cancelled_by_client | 2013-10-01 |
| 5  | 1         | 10        | 1       | completed           | 2013-10-02 |
| 6  | 2         | 11        | 6       | completed           | 2013-10-02 |
| 7  | 3         | 12        | 6       | completed           | 2013-10-02 |
| 8  | 2         | 12        | 12      | completed           | 2013-10-03 |
| 9  | 3         | 10        | 12      | completed           | 2013-10-03 |
| 10 | 4         | 13        | 12      | cancelled_by_driver | 2013-10-03 |

<br>

 <b>Table Name: Users</b>

| users_id | banned | role   |
| --- |------ | ---------- |
| 1        | No     | client |
| 2        | Yes    | client |
| 3        | No     | client |
| 4        | No     | client |
| 10       | No     | driver |
| 11       | No     | driver |
| 12       | No     | driver |
| 13       | No     | driver |

<br>

</details>

<details>
<summary>
Output
</summary>
</br>
  
| Day        | Cancellation Rate |
| ---- |  ---- |
| 2013-10-01 | 0.33              |
| 2013-10-02 | 0.00              |
| 2013-10-03 | 0.50              |

</details>

---
