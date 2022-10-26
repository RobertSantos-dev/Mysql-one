SELECT 
    son.song_name AS nome, COUNT(rh.song_id) AS reproducoes
FROM
    SpotifyClone.reproductions_history AS rh
        INNER JOIN
    SpotifyClone.songs AS son ON son.song_id = rh.song_id
        INNER JOIN
    SpotifyClone.users AS us ON us.user_id = rh.user_id
WHERE
    us.plan_id = 1 OR us.plan_id = 4
GROUP BY nome
ORDER BY nome ASC;