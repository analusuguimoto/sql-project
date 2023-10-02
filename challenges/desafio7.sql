SELECT 
ar.artist_name AS 'artista',
al.album_name AS 'album',
COUNT(DISTINCT f.fa_user_id) AS 'pessoas_seguidoras'
FROM SpotifyClone.artists AS ar
	INNER JOIN SpotifyClone.albums AS al
		ON ar.artist_id = al.album_artist_id
	INNER JOIN SpotifyClone.followed_artists as f
		ON ar.artist_id = f.fa_artist_id
GROUP BY 2,1
ORDER BY 3 DESC, 1, 2;