SELECT 
	c.cancoes AS cancao,
	COUNT(hr.historico_de_reproducoes) AS reproducoes    
FROM 
	SpotifyClone.cancoes c
INNER JOIN
	SpotifyClone.historico_de_reproducoes hr
ON c.cancoes_id = hr.historico_de_reproducoes
GROUP BY c.cancoes_id
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;
