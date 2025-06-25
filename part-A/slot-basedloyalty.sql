
SELECT 
    p.player_id,
    SUM(CASE WHEN t.type='deposit' AND t.date='2023-10-02' AND t.slot='S1' 
        THEN t.amount ELSE 0 END) AS deposit_amount,
    SUM(CASE WHEN t.type='withdrawal' AND t.date='2023-10-02' AND t.slot='S1' 
        THEN t.amount ELSE 0 END) AS withdrawal_amount,
    COUNT(CASE WHEN t.type='deposit' AND t.date='2023-10-02' AND t.slot='S1' 
        THEN 1 END) AS deposit_count,
    COUNT(CASE WHEN t.type='withdrawal' AND t.date='2023-10-02' AND t.slot='S1' 
        THEN 1 END) AS withdrawal_count,
    COUNT(CASE WHEN g.date='2023-10-02' AND g.slot='S1' 
        THEN 1 END) AS games_played
FROM players p
LEFT JOIN transactions t ON p.player_id = t.player_id
LEFT JOIN games g ON p.player_id = g.player_id
GROUP BY p.player_id