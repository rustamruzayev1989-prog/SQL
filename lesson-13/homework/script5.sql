SELECT year,
       GREATEST(Max1, Max2, Max3) AS highest_value
FROM TestMax;
