| Position | Character |
| -------- | --------- |
| 1        | H         |
| 2        | E         |
| 3        | L         |
| 4        | L         |
| 5        | O         |

-- Example variable: the string to split
WITH RECURSIVE SplitCTE AS (
    -- Anchor member: start with first character
    SELECT 
        1 AS Position,
        SUBSTRING('HELLO', 1, 1) AS Character,
        'HELLO' AS FullString
    UNION ALL
    -- Recursive member: move one character forward each time
    SELECT 
        Position + 1,
        SUBSTRING(FullString, Position + 1, 1),
        FullString
    FROM SplitCTE
    WHERE Position + 1 <= LENGTH(FullString)
)
SELECT 
    Position,
    Character
FROM SplitCTE;
