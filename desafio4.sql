SELECT 
    us.user_name AS usuario,
    IF(MAX(YEAR(rh.reproduction_date)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.users AS us
        INNER JOIN
    SpotifyClone.reproductions_history AS rh ON us.user_id = rh.user_id
GROUP BY rh.user_id
ORDER BY usuario ASC;