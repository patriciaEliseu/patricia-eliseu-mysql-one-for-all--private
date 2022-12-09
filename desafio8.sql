SELECT 
ar.artista AS "artista",
al.album AS "album"
 FROM SpotifyClone.artista AS ar
 INNER JOIN SpotifyClone.album AS al
 ON al.artista = ar.artista_id
 WHERE
 ar.artista = "Elis Regina"
 ;
