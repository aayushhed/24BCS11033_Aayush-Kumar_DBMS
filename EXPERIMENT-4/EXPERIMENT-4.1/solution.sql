SELECT c.customer_name, o.order_date 
FROM Customers as c 
INNER JOIN orders as o 
ON c.customer_id=o.customer_id;


SELECT c.customer_name, o.product_name
FROM Customers as c 
LEFT JOIN orders as o 
ON c.customer_id=o.customer_id;

SELECT p.product_name, o.order_date
FROM products as p 
INNER JOIN orders as o 
ON p.product_name=o.product_name;