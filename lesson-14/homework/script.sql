SELECT
    TRIM(SUBSTRING_INDEX(Name, ',', 1)) AS Name,
    TRIM(SUBSTRING_INDEX(Name, ',', -1)) AS Surname
FROM TestMultipleColumns;
