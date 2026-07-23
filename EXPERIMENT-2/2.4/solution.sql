-- Problem: EXCEPT
-- Platform: CodeChef SQL
-- Concept: EXCEPT

-- Find the fruits that are present
-- in the fruit table but not in the inventory table.

SELECT f_name
FROM fruit

EXCEPT

SELECT inv_name
FROM inventory;