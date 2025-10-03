# NULL обозначает отсутствие значения или неизвестное значение 
# NULL не равен 0, пустой строке или пробелу — это отдельное состояние
# При работе с NULL нужно использовать оператор IS NULL или IS NOT NULL, а не =.
  INSERT INTO Products (ProductID, ProductName, Price)
VALUES (4, 'Клавиатура', NULL);
# Здесь цена неизвестна, поэтому в поле Price будет NULL.
# NOT NULL означает, что поле обязательно должно содержать значение.
# Если при вставке значения для такого столбца не указать, SQL Server выдаст ошибку.
  CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,  -- имя обязательно
    Email VARCHAR(100) NULL             -- e-mail можно не указывать
);
