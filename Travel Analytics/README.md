# Travel Analytics
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : booking_table</b>

|  Column Name  |Type |
| ------------- | ------------- |
| Booking_id           | VARCHAR(3) NOT NULL     |
| Booking_date         | date NOT NULL |
| User_id       | VARCHAR(2) NOT NULL     |
| Line_of_business | VARCHAR(6) NOT NULL     |

* booking_id is the primary key column for this table.
* user_id is a foreign key of the ID from the user_table.
</br>

<b>Table Name : user_table</b>

|  Column Name  |Type |
| ------------- | ------------- |
| User_id          | VARCHAR(3) NOT NULL     |
| Segment        | VARCHAR(2) NOT NULL |

* user_id is the primary key column for this table.
</br>
</br>

<b> Please answer the following question: </b>
1. Write a SQL query to count the number of users in each user segment. Also output the no of users who booked flight in Apr 2022.
2. Write a query to identify users whose first booking is hotel booking.
3. Write a query to calculate the days between first and last booking of each user.
4. Write a query to count the number of flight and hotel bookings in each of the user segments for the year 2022.


The query result format is in the following example. 
</br>
</br>
 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: booking_table </b></br>

| Booking_id | Booking_date | User_id | Line_of_business |
|------------|--------------|---------|-------------------|
| b1         | 2022-03-23   | u1      | Flight            |
| b2         | 2022-03-27   | u2      | Flight            |
| b3         | 2022-03-28   | u1      | Hotel             |
| b4         | 2022-03-31   | u4      | Flight            |
| b5         | 2022-04-02   | u1      | Hotel             |
| b6         | 2022-04-02   | u2      | Flight            |
| b7         | 2022-04-06   | u5      | Flight            |
| b8         | 2022-04-06   | u6      | Hotel             |
| b9         | 2022-04-06   | u2      | Flight            |
| b10        | 2022-04-10   | u1      | Flight            |
| b11        | 2022-04-12   | u4      | Flight            |
| b12        | 2022-04-16   | u1      | Flight            |
| b13        | 2022-04-19   | u2      | Flight            |
| b14        | 2022-04-20   | u5      | Hotel             |
| b15        | 2022-04-22   | u6      | Flight            |
| b16        | 2022-04-26   | u4      | Hotel             |
| b17        | 2022-04-28   | u2      | Hotel             |
| b18        | 2022-04-30   | u1      | Hotel             |
| b19        | 2022-05-04   | u4      | Hotel             |
| b20        | 2022-05-06   | u1      | Flight            |

<b> Table Name: user_table </b></br>

| User_id | Segment |
|---------|---------|
| u1      | s1      |
| u2      | s1      |
| u3      | s1      |
| u4      | s2      |
| u5      | s2      |
| u6      | s3      |
| u7      | s3      |
| u8      | s3      |
| u9      | s3      |
| u10     | s3      |

</details>

<details>
<summary>
Output
</summary>
</br>

1.  Write a SQL query to count the number of users in each user segment. also output the no of users who booked flight in Apr 2022.

| segment | total_user_count | user_count_flight_apr |
| --- |--- | --- |
| s1         | 3      | 2  |
| s2         | 2      | 2  |
| s3         | 5    | 1  |

2. Write a query to identify users whose first booking is hotel booking.

|user_id|
| --- |
| u6 |

3. Write a query to calculate the days between first and last booking of each user.

| user_id | date_diff |
| --- |--- |
| u1 | 44 |
| u2 |32 |
| u4 | 34 |
| u5 | 14 |
| u6 | 16 |

4. Write a query to count the number of flight and hotel bookings in each of the user segments for the year 2022.

| segment | flight_count | hotel_count |
| --- |--- | --- |
| s1         | 8      | 4  |
| s2         | 3      | 3  |
| s3         | 1    | 1  |

</details>

---
