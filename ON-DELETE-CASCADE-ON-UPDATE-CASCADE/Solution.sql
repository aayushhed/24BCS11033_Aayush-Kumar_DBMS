-- Problem: ON DELETE CASCADE & ON UPDATE CASCADE
-- Platform: CodeChef SQL
-- Concept: Foreign Key Constraints (ON DELETE CASCADE, ON UPDATE CASCADE)

-- Delete John Doe from the Customers table
DELETE FROM Customers
WHERE customer_id = 1;

-- Display the updated Orders table
SELECT * FROM Orders;