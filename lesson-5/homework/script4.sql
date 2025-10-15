SELECT ProductName
FROM Products
INTERSECT
SELECT ProductName
FROM Products_Discounted;
