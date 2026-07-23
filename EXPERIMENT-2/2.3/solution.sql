-- Problem: INTERSECT
-- Platform: CodeChef SQL
-- Concept: INTERSECT

-- Find the fruits that are available
-- in both the fruit and inventory tables.

SELECT f_name
FROM fruit

INTERSECT

SELECT inv_name
FROM inventory;