# Onboarded Cities
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---
## 🛠️ Problem Statement

  <b>Table Name : business_city</b>

|  Column Name  |Type |
| ------------- | ------------- |
| business_date  | date  |
| city_id  | int  |

</br>

The table contains two columns business_date and city_id. city_id is the ID of the city which has been onboarded for the business. Note that there could be multiple instances of onboarding of a particular city.

Write a SQL query to find the Unique number of cities onboarded for the business for the first time for each year.

Return the result table in the order of business_year.

The query result format is in the following example. 

 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: business_city </b></br>

| business_year | city_id |
|---------------|---------|
| 2020-01-02    | 3       |
| 2020-07-01    | 7       |
| 2021-01-01    | 3       |
| 2021-02-03    | 19      |
| 2022-12-01    | 3       |
| 2022-12-15    | 3       |
| 2022-02-28    | 12      |



</details>

<details>
<summary>
Output
</summary>
</br>

| business_city         | no_of_onboarded_cities_for_the_first_time  |
|-------------------------|----------|
| 2020 | 2 |
| 2021  |   1   |
| 2022 | 1 |


</details>

---
