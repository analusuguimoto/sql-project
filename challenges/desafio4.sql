SELECT 
	u.user_name AS "pessoa_usuaria",
    IF(YEAR(MAX(h.history_date)) >= 2021, 'Ativa', 'Inativa') AS 'status_pessoa_usuaria'
FROM SpotifyClone.history AS h
	INNER JOIN SpotifyClone.users AS u
    ON u.user_id = h.history_user_id
GROUP BY 1 
ORDER BY 1;