SELECT 
c.CustomerEmail AS customer_email,
c.CustomerCity AS customer_city,
o.date AS order_date, 
o.Quantity AS order_qty,
p.ProdName AS product_name,
p.Price AS product_price, 
pc.CategoryName AS category_name,
(o.quantity * p.price) AS Total_sales
FROM `pbi-rakamin-x.final_task.orders` o
JOIN `pbi-rakamin-x.final_task.customers` c ON o.CustomerID = c.CustomerID
JOIN `pbi-rakamin-x.final_task.products` p ON o.ProdNumber = p.ProdNumber
JOIN `pbi-rakamin-x.final_task.products_category` pc ON p.Category = pc.CategoryID 
ORDER BY o.date ASC ; 