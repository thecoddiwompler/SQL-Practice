# [Tree Node](https://leetcode.com/problems/tree-node/)
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/thecoddiwompler/SQL-Practice-Questions/tree/main)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/thecoddiwompler?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/thecoddiwompler)

---

## 🛠️ Problem Statement

  <b>Table Name : Queue</b>

|  Column Name  |Type |
| ------------- | ------------- |
| id   | int     |
| p_id | varchar |

* <b>id is the column with unique values for this table. </b>
* Each row of this table contains information about the id of a node and the id of its parent node in a tree (represented by p_id).
* The given structure is always a valid tree.
<br/>

Each node in the tree can be one of three types:

* "Leaf": if the node is a leaf node.
* "Root": if the node is the root of the tree.
* "Inner": If the node is neither a leaf node nor a root node.

Write a solution to report the type of each node in the tree.

Return the result table in any order.

The result format is in the following example.

![Sample Example](./img/tree1.jpg)

</br>

 <details>
<summary>
Input
</summary>
<br>
  
  <b>Table Name: Queue</b>

| id | p_id | 
| --- |------ | 
| 1  | null |
| 2  | 1    |
| 3  | 1    |
| 4  | 2    |
| 5  | 2    |

</details>

<details>
<summary>
Output
</summary>
<br>

| id |  type |
| ---- |  ----|
| 1  | Root  |
| 2  | Inner |
| 3  | Leaf  |
| 4  | Leaf  |
| 5  | Leaf  |

</details>

---
