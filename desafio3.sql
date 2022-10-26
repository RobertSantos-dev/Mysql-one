SELECT 
    us.user_name AS usuario,
    COUNT(rh.user_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(so.song_seconds) / 60, 2) AS total_minutos
FROM
    SpotifyClone.users AS us
        INNER JOIN
    SpotifyClone.reproductions_history AS rh ON us.user_id = rh.user_id
        INNER JOIN
    SpotifyClone.songs AS so ON so.song_id = rh.song_id
GROUP BY usuario
ORDER BY usuario ASC;