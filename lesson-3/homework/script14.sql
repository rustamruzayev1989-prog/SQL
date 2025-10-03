ALTER TABLE Products
ADD CONSTRAINT CK_Products_Price CHECK (Price > 0);


INSERT INTO Products (ProductID, ProductName, Price, CategoryID)
VALUES (10, 'Флешка', 800.00, 1);   --  успешная вставка

INSERT INTO Products (ProductID, ProductName, Price, CategoryID)
VALUES (11, 'Пустой товар', 0, 1); --  ошибка, так как Price = 0
