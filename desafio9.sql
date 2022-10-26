SELECT 
    COUNT(us.user_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.users AS us
        INNER JOIN
    SpotifyClone.reproductions_history AS rh ON us.user_id = rh.user_id
WHERE
    us.user_name= 'Barbara Liskov';