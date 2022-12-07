SELECT
u.usuario AS "usuario",
COUNT(hr.historico_de_reproducoes) AS "qt_de_musicas_ouvidas",
ROUND(SUM(c.duracao_segundos)/60, 2) AS "total_minutos"
FROM
SpotifyClone.usuario AS u
INNER JOIN
SpotifyClone.historico_de_reproducoes AS hr
ON u.usuario_id = hr.usuarios
INNER JOIN 
SpotifyClone.cancoes AS c
ON c.cancoes_id = hr.historico_de_reproducoes
GROUP BY usuario
ORDER BY usuario;
