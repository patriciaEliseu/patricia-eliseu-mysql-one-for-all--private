SELECT
DISTINCT a.artista AS "artista",
b.album AS "album",
s.seguindo_artistas AS "seguidores"
FROM 
SpotifyClone.artista AS a
INNER JOIN 
SpotifyClone.album AS b
ON a.artista_id = b.artista
INNER JOIN
SpotifyClone.seguindo_artistas AS s
ON a.artista_id = s.seguindo_artistas
ORDER BY seguidores DESC, artista ASC, album ASC
;
