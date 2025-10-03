# Столбец IDENTITY в SQL Server используется для того, чтобы автоматически генерировать уникальные числовые значения (обычно для первичных ключей).
  CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);


INSERT INTO Products (ProductName, Price)
VALUES ('Монитор', 15000.00),
       ('Мышь', 1200.00);
