SELECT 
	u.usuario AS "usuario",
	IF (MAX(YEAR(hr.data_reproducao)) < 2021, "Usuário inativo", "Usuário ativo") AS "status_usuario"
FROM 
	SpotifyClone.usuario AS u
INNER JOIN
	SpotifyClone.historico_de_reproducoes hr
ON u.usuario_id = hr.usuarios
GROUP BY usuario
ORDER BY usuario;
