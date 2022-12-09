SELECT 
 COUNT(hr.usuarios) AS "quantidade_musicas_no_historico"
 FROM SpotifyClone.historico_de_reproducoes AS hr
 INNER JOIN SpotifyClone.usuario AS u
 ON u.usuario_id = hr.usuarios
 WHERE
 u.usuario = "Barbara Liskov"
 ;
