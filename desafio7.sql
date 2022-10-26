SELECT 
    art.artist_name AS artista,
    alb.album_name AS album,
    COUNT(far.artist_id) AS seguidores
FROM
    SpotifyClone.artists AS art
        INNER JOIN
    SpotifyClone.albuns AS alb ON alb.artist_id = art.artist_id
        INNER JOIN
    SpotifyClone.following_artists AS far ON alb.artist_id = far.artist_id
    GROUP BY artista, album
    ORDER BY seguidores DESC, artista ASC, album ASC;