CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    CategoryID INT
);


# Файл C:\data\products.txt содержит данные (разделитель — запятая):

1,Ноутбук,55000.00,1
2,Смартфон,32000.00,1
3,Наушники,4500.00,2


BULK INSERT Products
FROM 'C:\data\products.txt'
WITH (
    FIELDTERMINATOR = ',',   -- разделитель полей (запятая)
    ROWTERMINATOR = '\n',    -- разделитель строк (новая строка)
    FIRSTROW = 1             -- с какой строки начинать (1 = данные, 2 = если есть заголовок)
);
