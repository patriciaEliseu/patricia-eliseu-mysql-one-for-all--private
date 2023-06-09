DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plano(
plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
plano VARCHAR(45),
valor_plano DOUBLE
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
artista VARCHAR(100)
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario(
usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
usuario VARCHAR(255),
idade INT,
data_assinatura DATE
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo_artistas(
usuario INT,
seguindo_artistas INT,
CONSTRAINT PRIMARY KEY (usuario, seguindo_artistas),
FOREIGN KEY (usuario) REFERENCES usuario(usuario_id),
FOREIGN KEY (seguindo_artistas) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
album VARCHAR(100),
ano_lancamento YEAR,
artista INT NOT NULL,
FOREIGN KEY (artista) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
cancoes_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
cancoes VARCHAR(255),
duracao_segundos INT,
albuns INT NOT NULL,
FOREIGN KEY (albuns) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historico_de_reproducoes(
historico_de_reproducoes INT NOT NULL,
usuarios INT NOT NULL,
data_reproducao DATETIME,
CONSTRAINT PRIMARY KEY (historico_de_reproducoes, usuarios),
FOREIGN KEY (historico_de_reproducoes) REFERENCES cancoes(cancoes_id),
FOREIGN KEY (usuarios) REFERENCES usuario(usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plano (plano, valor_plano) VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitario', 5.99),
('pessoal', 6.99);

INSERT INTO SpotifyClone.artista (artista) VALUES
('Beyonce'),
('Queen'),
('Elis Regina'),
('Baco Exu do Blues'),
('Blind Guardian'),
('Nina Simone');

INSERT INTO SpotifyClone.usuario (usuario, idade, data_assinatura) VALUES
('Barbara Liskov', 82, '2019-10-20'),
('Robert Cecil Martin', 58, '2017-01-06'),
('Ada Lovelace', 37, '2017-12-30'),
('Martin Fowler', 46, '2017-01-17'),
('Sandi Metz', 58, '2018-04-29'),
('Paulo Freire', 19,	'2018-02-14'),
('Bell Hooks', 26, '2018-01-05'),
('Christopher Alexander', 85, '2019-06-05'),
('Judith Butler', 45, '2020-05-13'),
('Jorge Amado', 58, '2017-02-17');

INSERT INTO SpotifyClone.seguindo_artistas (usuario, seguindo_artistas) VALUES
(1,	1),
(1,	2),
(1,	3),
(2,	1),
(2,	3),
(3,	2),
(4,	4),
(5,	5),
(5,	6),
(6,	1),
(7,	6),
(9,	3),
(10, 2);

INSERT INTO SpotifyClone.album (album, ano_lancamento, artista) VALUES
('Renaissance', 2022, 1),
('Jazz', 1978, 2),
('Hot Space', 1982, 2),
('Falso Brilhante', 1998, 3),
('Vento de Maio', 2001, 3),
('QVVJFA?', 2003, 4),
('Somewhere Far Beyond', 2007, 5),
('I Put A Spell On You', 2012, 6);

INSERT INTO SpotifyClone.cancoes (cancoes, duracao_segundos, albuns) VALUES
("BREAK MY SOUL",  279,	1),
("VIRGO’S GROOVE", 369,	1),
("ALIEN SUPERSTAR",	116, 1),
("Don’t Stop Me Now", 203, 2),
("Under Pressure", 152, 3),
("Como Nossos Pais", 105, 4),
("O Medo de Amar é o Medo de Ser Livre", 207, 5),
("Samba em Paris", 267, 6),
("The Bard’s Song", 244, 7),
("Feeling Good", 100, 8);

INSERT INTO SpotifyClone.historico_reproducoes (usuarios, historico_de_reproducoes, data_reproducao) VALUES
(1,	8, "2022-02-28 10:45:55"),
(1,	2, "2020-05-02 05:30:35"),
(1,	10,	"2020-03-06 11:22:33"),
(2,	10,	"2022-08-05 08:05:17"),
(2,	7,	"2020-01-02 07:40:33"),
(3,	10,	"2020-11-13 16:55:13"),
(3,	2,	"2020-12-05 18:38:30"),
(4,	8,	"2021-08-15 17:10:10"),
(5,	8,	"2022-01-09 01:44:33"),
(5,	5,	 "2020-08-06 15:23:43"),
(6,	7,	"2017-01-24 00:31:17"),
(6,	1,	 "2017-10-12 12:35:20"),
(7,	4,	"2011-12-15 22:30:49"),
(8,	4,	"2012-03-17 14:56:41"),
(9,	9,	"2022-02-24 21:14:22"),
(10, 3,	"2015-12-13 08:30:22");


