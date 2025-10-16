CREATE TABLE City_Population (
    City VARCHAR(50),
    Year INT,
    Population INT
);

INSERT INTO City_Population (City, Year, Population)
VALUES
('Москва', 2012, 11500000),
('Москва', 2013, 11650000),
('Санкт-Петербург', 2012, 5100000),
('Санкт-Петербург', 2013, 5150000),
('Казань', 2012,
SELECT *
INTO Population_Each_Year
FROM
(
    SELECT City, Year, Population
    FROM City_Population
) AS SourceTable
PIVOT
(
    SUM(Population)
    FOR Year IN ([2012], [2013])
) AS PivotTable;
