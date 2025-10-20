SELECT 
    player_id,
    MIN(login_date) AS first_login_date
FROM Activity
GROUP BY player_id
ORDER BY player_id;
