SELECT 
    son.song_name AS cancao, COUNT(rh.user_id) AS reproducoes
FROM
    SpotifyClone.songs AS son
        LEFT JOIN
    SpotifyClone.reproductions_history AS rh ON son.song_id = rh.song_id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;