SELECT 
s.song_name AS 'cancao', 
COUNT(h.history_song_id) AS 'reproducoes'
FROM SpotifyClone.history AS h
	INNER JOIN SpotifyClone.songs AS s
    ON h.history_song_id = s.song_id
GROUP BY 1
ORDER BY 2 DESC, 1
LIMIT 2;