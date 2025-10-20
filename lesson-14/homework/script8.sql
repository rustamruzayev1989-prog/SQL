SELECT id, weather_date, temperature
FROM (
    SELECT 
        id,
        weather_date,
        temperature,
        LAG(temperature) OVER (ORDER BY weather_date) AS prev_temp
    FROM weather
) t
WHERE temperature > prev_temp;
