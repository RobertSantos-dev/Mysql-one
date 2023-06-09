SELECT 
    art.artist_name AS artista, alb.album_name AS album
FROM
    SpotifyClone.artists AS art
        INNER JOIN
    SpotifyClone.albuns AS alb ON art.artist_id = alb.artist_id
WHERE
    art.artist_name = 'Elis Regina'
ORDER BY album ASC;