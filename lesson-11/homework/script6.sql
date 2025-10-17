SELECT 
    p.ProductName, 
    s.SupplierName
FROM 
    Products AS p
INNER JOIN 
    Suppliers AS s
    ON p.SupplierID = s.SupplierID
WHERE 
    s.SupplierName IN ('Gadget Supplies', 'Clothing Mart');
