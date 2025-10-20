SELECT
    SUBSTRING_INDEX(full_string, '.', 1) AS part1,
    SUBSTRING_INDEX(SUBSTRING_INDEX(full_string, '.', 2), '.', -1) AS part2,
    SUBSTRING_INDEX(SUBSTRING_INDEX(full_string, '.', 3), '.', -1) AS part3
FROM Splitter;
