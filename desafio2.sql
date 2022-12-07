SELECT 
COUNT(DISTINCT a.cancoes_id) AS"cancoes",
COUNT(DISTINCT b.artista_id) AS "artistas",
COUNT(DISTINCT c.album_id) AS "albuns"
FROM 
SpotifyClone.cancoes AS a
INNER JOIN
SpotifyClone.album AS c
ON a.albuns = c.album_id
INNER JOIN
SpotifyClone.artista AS b
ON b.artista_id = c.artista;
