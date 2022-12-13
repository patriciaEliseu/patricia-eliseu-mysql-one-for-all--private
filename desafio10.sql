SELECT c.cancoes AS "nome", 
COUNT(c.cancoes) AS "reproducoes"
FROM 
SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON c.cancoes_id = hr.historico_de_reproducoes
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = hr.usuarios
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id
WHERE p.plano = "gratuito" OR p.plano = "pessoal"
GROUP BY c.cancoes
ORDER BY c.cancoes;
