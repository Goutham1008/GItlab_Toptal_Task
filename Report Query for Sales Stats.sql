-- Query for sales stats by genre and month
SELECT 
    b.Genre,
    EXTRACT(YEAR FROM o.OrderDate) AS Year,
    EXTRACT(MONTH FROM o.OrderDate) AS Month,
    COUNT(od.OrderDetailID) AS TotalSales,
    SUM(od.Price * od.Quantity) AS TotalRevenue
FROM 
    `Order` o
JOIN 
    OrderDetail od ON o.OrderID = od.OrderID
JOIN 
    Book b ON od.ISBN = b.ISBN
GROUP BY 
    b.Genre, EXTRACT(YEAR FROM o.OrderDate), EXTRACT(MONTH FROM o.OrderDate)
ORDER BY 
    Year DESC, Month DESC, b.Genre;

-- Query for sales stats for the previous month
SELECT 
    b.Genre,
    EXTRACT(YEAR FROM o.OrderDate) AS Year,
    EXTRACT(MONTH FROM o.OrderDate) AS Month,
    COUNT(od.OrderDetailID) AS TotalSales,
    SUM(od.Price * od.Quantity) AS TotalRevenue
FROM 
    `Order` o
JOIN 
    OrderDetail od ON o.OrderID = od.OrderID
JOIN 
    Book b ON od.ISBN = b.ISBN
WHERE 
    o.OrderDate >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY 
    b.Genre, EXTRACT(YEAR FROM o.OrderDate), EXTRACT(MONTH FROM o.OrderDate)
ORDER BY 
    Year DESC, Month DESC, b.Genre;
