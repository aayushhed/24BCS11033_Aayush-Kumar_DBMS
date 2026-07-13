# ON DELETE CASCADE & ON UPDATE CASCADE

## Problem Summary

The `Orders` table contains a foreign key (`customer_id`) that references the `Customers` table with the `ON DELETE CASCADE` and `ON UPDATE CASCADE` options enabled.

Write a SQL query to:
1. Delete **John Doe** from the `Customers` table.
2. Display the updated `Orders` table to observe the cascading effect.

## Solution

```sql
DELETE FROM Customers
WHERE customer_id = 1;

SELECT * FROM Orders;
```

## Explanation

- `DELETE FROM Customers WHERE customer_id = 1;` removes John Doe from the parent table.
- Since the foreign key uses **ON DELETE CASCADE**, all orders associated with `customer_id = 1` are automatically deleted from the `Orders` table.
- `SELECT * FROM Orders;` displays the remaining records after the cascade operation.

## SQL Concepts Used

- DELETE
- WHERE
- FOREIGN KEY
- ON DELETE CASCADE
- SELECT

## Author

Aayush Kumar