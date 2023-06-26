# [International Call Percentage](https://datalemur.com/questions/international-call-percentage)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : phone_calls</b>

|  Column Name  |Type |
| ------------- | ------------- |
| caller_id |	integer |
| receiver_id	| integer |
| call_time |	timestamp |

</br>

  <b>Table Name : phone_info</b>

|  Column Name  |Type |
| ------------- | ------------- |
| caller_id |	integer |
| country_id	| integer |
| network	| integer |
| phone_number |	string |

* The caller_id in phone_info table refers to both the caller and receiver.

</br>
A phone call is considered an international call when the person calling is in a different country than the person receiving the call.
</br>
</br>
What percentage of phone calls are international? Round the result to 1 decimal.
</br>
</br>
 <details>
<summary>
Input
</summary>
</br>

<b> Table Name: phone_calls </b></br>

| caller_id | receiver_id  | call_time |
| --------- | ------------- | ------ |
| 1	| 2 |	2022-07-04 10:13:49 |
| 1	| 5	| 2022-08-21 23:54:56 |
| 5	| 1	| 2022-05-13 17:24:06 |
| 5	| 6	| 2022-03-18 12:11:49 |

<b> Table Name: phone_info </b></br>

| caller_id | country_id  | network | phone_number |
|----|-------|-----|--------|
| 1	| US | Verizon | +1-212-897-1964 |
| 2 |	US | Verizon | +1-703-346-9529 |
| 3	| US | Verizon | +1-650-828-4774 |
| 4	| US | Verizon | +1-415-224-6663 |
| 5	| IN | Vodafone |	+91 7503-907302 |
| 6	| IN | Vodafone	| +91 2287-664895 |

</details>

<details>
<summary>
Output
</summary>
</br>

| international_calls_pct |
| --- |
| 50.0 | 
</details>

---
