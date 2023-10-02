SELECT 
ar.artist_name AS 'artista',
al.album_name AS 'album'
FROM SpotifyClone.artists AS ar
	INNER JOIN SpotifyClone.albums AS al
		ON ar.artist_id = al.album_artist_id
WHERE ar.artist_name = 'Elis Regina'
GROUP BY 2,1
ORDER BY 1, 2;