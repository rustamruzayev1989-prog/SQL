ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
INSERT INTO Products (ProductID, ProductName, Price)
VALUES (4, 'Ноутбук', 60000.00);
