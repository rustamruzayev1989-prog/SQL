SELECT ProductName
FROM Products
EXCEPT
SELECT ProductName
FROM Products_Discounted;
