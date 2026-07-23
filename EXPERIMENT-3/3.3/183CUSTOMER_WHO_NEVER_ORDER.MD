# LeetCode 183 - Customers Who Never Order

## Problem

Table: **Customers**

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

* `id` is the primary key.
* Each row contains the ID and name of a customer.

Table: **Orders**

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| customerId  | int  |

* `id` is the primary key.
* `customerId` is a foreign key referencing `Customers.id`.
* Each row represents an order placed by a customer.

### Task

Write a SQL query to find all customers who **never placed an order**.

Return the result in any order.

---

## Solution

```sql
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;
```

---

## Explanation

* `LEFT JOIN` returns **all customers** from the `Customers` table.
* If a customer has placed an order, the matching row from the `Orders` table is returned.
* If a customer has **not** placed any order, the columns from the `Orders` table are filled with `NULL`.
* Filtering with `WHERE o.customerId IS NULL` returns only those customers who have never placed an order.

---

## SQL Concepts Used

* `LEFT JOIN`
* `WHERE`
* `NULL`
* Foreign Key

---

## Time Complexity

* **O(n + m)** (depends on the database engine and indexing)

  * `n` = Number of customers
  * `m` = Number of orders

---

## Alternative Solution (Without JOIN)

```sql
SELECT c.name AS Customers
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customerId = c.id
);
```

---

## Key Takeaways

* Use **LEFT JOIN** when you need all records from the left table, regardless of whether a matching record exists in the right table.
* Use `IS NULL` after a `LEFT JOIN` to identify records with no matching row.
* `NOT EXISTS` is another efficient and commonly used approach for this problem.

---

## Tags

`SQL` `LEFT JOIN` `NOT EXISTS` `NULL` `LeetCode Easy`

---

## Author

**Aayush Kumar**
