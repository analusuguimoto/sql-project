SELECT
	COUNT(DISTINCT al.album_id) AS "albuns",
  COUNT(DISTINCT s.song_id) AS "cancoes",
  COUNT(DISTINCT al.album_artist_id) AS "artistas"

FROM SpotifyClone.albums AS al
	LEFT JOIN SpotifyClone.songs AS s
		ON s.song_album_id = al.album_id;