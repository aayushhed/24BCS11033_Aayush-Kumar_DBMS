
SELECT  c.customer_name, o.*
FROM customers as c
JOIN orders as o 
ON c.customer_id=o.customer_id;

SELECT p.product_name, c.category_name
FROM categories as c 
JOIN products as p 
ON c.category_id=p.category_id;

SELECT c.category_name,p.product_name, p.price
FROM categories as c 
JOIN products as p 
ON c.category_id=p.category_id;
