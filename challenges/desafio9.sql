SELECT COUNT(h.history_song_id) AS 'musicas_no_historico'
FROM SpotifyClone.history AS h
	INNER JOIN SpotifyClone.users AS u
    ON h.history_user_id = user_id
WHERE u.user_name = 'Barbara Liskov';