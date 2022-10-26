SELECT 
    COUNT(s.song_name) AS cancoes,
    COUNT(art.artist_name) AS artistas,
    COUNT(alb.artist_id) AS albuns
FROM
    SpotifyClone.songs AS s
        LEFT JOIN
    SpotifyClone.artists AS art ON s.song_id = art.artist_id
        LEFT JOIN
    SpotifyClone.albuns AS alb ON s.song_id = alb.album_id;