ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
