CREATE TABLE City_Population (
    City VARCHAR(50),
    Year INT,
    Population INT
);

INSERT INTO City_Population (City, Year, Population)
VALUES
('Bektemir', 2012, 120000),
('Bektemir', 2013, 125000),
('Chilanzor', 2012, 200000),
('Chilanzor', 2013, 210000),
('Yakkasaroy', 2012, 150000),
('Yakkasaroy', 2013, 155000);
SELECT *
INTO Population_Each_City
FROM
(
    SELECT City, Year, Population
    FROM City_Population
) AS SourceTable
PIVOT
(
    SUM(Population)
    FOR City IN ([Bektemir], [Chilanzor], [Yakkasaroy])
) AS PivotTable;
