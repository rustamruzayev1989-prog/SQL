SELECT s.name AS SupplierName,
       p.name AS ProductName
FROM Suppliers s
LEFT JOIN Products p ON s.id = p.supplier_id;
