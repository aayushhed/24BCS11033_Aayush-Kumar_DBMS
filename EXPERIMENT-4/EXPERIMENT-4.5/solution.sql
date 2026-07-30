SELECT e.employee_name AS Employee , ee.employee_name AS Manager FROM employees as e
left JOIN employees as ee
ON e.manager_id=ee.employee_id;

SELECT c.customer_name,p.product_name FROM customers c 
CROSS JOIN
products p;