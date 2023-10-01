SELECT
	u.user_name AS "pessoa_usuaria",
	COUNT(h.history_song_id) AS "musicas_ouvidas",
    ROUND(SUM(s.song_length)/60, 2) AS "total_minutos"
FROM SpotifyClone.history AS h
	INNER JOIN SpotifyClone.songs AS s
		ON h.history_song_id = s.song_id
	INNER JOIN SpotifyClone.users AS u
		ON u.user_id = h.history_user_id
GROUP BY 1
ORDER BY 1;