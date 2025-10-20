SELECT 
    Vals,
    CAST(REGEXP_SUBSTR(Vals, '^[0-9]+') AS UNSIGNED) AS leading_integer
FROM GetIntegers;
