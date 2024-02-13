# Elimina la base de datos en caso de que se haya creado previamente.
DROP DATABASE IF EXISTS formula1;

# Crea la base de datos formula1
CREATE DATABASE formula1;


USE formula1;

# Creación de las tablas de la BD

CREATE TABLE vueltas_rapidas (
	id INT AUTO_INCREMENT PRIMARY KEY,
	gp VARCHAR(100) NOT NULL,
	piloto VARCHAR(100) NOT NULL,
	equipo VARCHAR(100) NOT NULL,
	duracion TIME, 
	anio YEAR
);

CREATE TABLE pilotos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	nacionalidad VARCHAR(100) NOT NULL,
	equipo VARCHAR(100) NOT NULL,
	puntos INT,
	posicion INT,
	anio YEAR
);

CREATE TABLE gran_premios (
	id INT AUTO_INCREMENT PRIMARY KEY,
	gp VARCHAR(100) NOT NULL,
	fecha VARCHAR(100),
	piloto_ganador VARCHAR(100) NOT NULL,
	equipo_ganador VARCHAR(100) NOT NULL,
	vueltas INT,
	duracion TIME, 
	anio YEAR
);

# Insertar los valores de la tabla vueltas_rapidas.

INSERT INTO vueltas_rapidas (gp, piloto, equipo, duracion, anio)
VALUES ('Great Britain','Nino Farina FAR','Alfa Romeo','00:1:50.600',1950),
		('Monaco','Juan Manuel Fangio FAN','Alfa Romeo','00:1:51.000',1950),
		('Switzerland','Nino Farina FAR','Alfa Romeo','00:2:41.600',1950),
		('Belgium','Nino Farina FAR','Alfa Romeo','00:4:34.100',1950),
		('France','Juan Manuel Fangio FAN','Alfa Romeo','00:2:35.600',1950),
		('Italy','Juan Manuel Fangio FAN','Alfa Romeo','00:2:00.000',1950),
		('Switzerland','Juan Manuel Fangio FAN','Alfa Romeo','00:2:51.100',1951),
		('Indianapolis 500','Lee Wallard WAL','Kurtis Kraft Offenhauser','00:1:07.260',1951),
		('Belgium','Juan Manuel Fangio FAN','Alfa Romeo','00:4:22.100',1951),
		('France','Juan Manuel Fangio FAN','Alfa Romeo','00:2:27.800',1951),
		('Great Britain','Nino Farina FAR','Alfa Romeo','00:1:44.000',1951),
		('Germany','Juan Manuel Fangio FAN','Alfa Romeo','00:9:55.800',1951),
		('Italy','Nino Farina FAR','Alfa Romeo','00:1:56.500',1951),
		('Spain','Juan Manuel Fangio FAN','Alfa Romeo','00:2:16.930',1951),
		('Switzerland','Piero Taruffi TAR','Ferrari','00:2:49.100',1952),
		('Indianapolis 500','Bill Vukovich VUK','Kurtis Kraft Offenhauser','00:1:06.600',1952),
		('Belgium','Alberto Ascari ASC','Ferrari','00:4:55.000',1952),
		('France','Alberto Ascari ASC','Ferrari','00:2:17.300',1952),
		('Great Britain','Alberto Ascari ASC','Ferrari','00:1:52.000',1952),
		('Germany','Alberto Ascari ASC','Ferrari','00:10:05.100',1952);

INSERT INTO pilotos (nombre, nacionalidad, equipo, puntos, posicion, anio)
VALUES ('Nino Farina FAR','ITA','Alfa Romeo', 30, 1, 1950),
		('Juan Manuel Fangio FAN','ARG','Alfa Romeo', 27, 2, 1950),
		('Luigi Fagioli FAG','ITA','Alfa Romeo', 24, 3, 1950),
		('Louis Rosier ROS','FRA','Talbot-Lago', 13, 4, 1950),
		('Alberto Ascari ASC','ITA','Ferrari', 11, 5, 1950),
		('Johnnie Parsons PAR','USA','Kurtis Kraft Offenhauser', 9, 6, 1950),
		('Bill Holland HOL','USA','Deidt Offenhauser', 6, 7, 1950),
		('Prince Bira BIR','THA','Maserati', 5, 8, 1950),
		('Reg Parnell PAR','GBR','Maserati', 4, 9, 1950),
		('Louis Chiron CHI','MON','Maserati', 4, 9, 1950),
		('Mauri Rose ROS','USA','Deidt Offenhauser', 4, 9, 1950),
		('Peter Whitehead WHI','GBR','Ferrari', 4, 9, 1950),
		('Yves Giraud Cabantous CAB','FRA','Talbot-Lago', 3, 13, 1950),
		('Raymond Sommer SOM','FRA','Talbot-Lago', 3, 13, 1950),
		('Cecil Green GRE','USA','Kurtis Kraft Offenhauser', 3, 13, 1950),
		('Robert Manzon MAN','FRA','Simca-Gordini', 3, 13, 1950),
		('Felice Bonetto BON','ITA','Maserati Milano', 2, 19, 1950),
		('Tony Bettenhausen BET','USA','Deidt Offenhauser', 1, 20, 1950),
		('Joie Chitwood CHI','USA','Kurtis Kraft Offenhauser', 1, 20, 1950),
		('Juan Manuel Fangio FAN','ARG','Alfa Romeo', 31, 1, 1951);


INSERT INTO gran_premios (gp, fecha,piloto_ganador,equipo_ganador,vueltas,duracion,anio)
VALUES ('Great Britain','13 May 1950','Nino Farina FAR','Alfa Romeo', 70,'2:13:23.600',1950),
		('Monaco','21 May 1950','Juan Manuel Fangio FAN','Alfa Romeo', 100,'3:13:18.700',1950),
		('Indianapolis 500','30 May 1950','Johnnie Parsons PAR','Kurtis Kraft Offenhauser', 138,'2:46:55.970',1950),
		('Switzerland','04 Jun 1950','Nino Farina FAR','Alfa Romeo', 42,'2:02:53.700',1950),
		('Belgium','18 Jun 1950','Juan Manuel Fangio FAN','Alfa Romeo', 35,'2:47:26.000',1950),
		('France','02 Jul 1950','Juan Manuel Fangio FAN','Alfa Romeo', 64,'2:57:52.800',1950),
		('Italy','03 Sep 1950','Nino Farina FAR','Alfa Romeo', 80,'2:51:17.400',1950),
		('Switzerland','27 May 1951','Juan Manuel Fangio FAN','Alfa Romeo', 42,'2:07:53.640',1951),
		('Indianapolis 500','30 May 1951','Lee Wallard WAL','Kurtis Kraft Offenhauser', 200,'3:57:38.050',1951),
		('Belgium','17 Jun 1951','Nino Farina FAR','Alfa Romeo', 36,'2:45:46.200',1951),
		('France','01 Jul 1951','Juan Manuel Fangio FAN','Alfa Romeo', 77,'3:22:11.000',1951),
		('Great Britain','14 Jul 1951','Jose Froilan Gonzalez GON','Ferrari', 90,'2:42:18.200',1951),
		('Germany','29 Jul 1951','Alberto Ascari ASC','Ferrari', 20,'3:23:03.300',1951),
		('Italy','16 Sep 1951','Alberto Ascari ASC','Ferrari',80 ,'2:42:39.300',1951),
		('Spain','28 Oct 1951','Juan Manuel Fangio FAN','Alfa Romeo', 70,'2:46:54.100',1951),
		('Switzerland','18 May 1952','Piero Taruffi TAR','Ferrari', 62,'3:01:46.100',1952),
		('Indianapolis 500','30 May 1952','Troy Ruttman RUT','Kuzma Offenhauser', 200,'3:52:41.880',1952),
		('Belgium','22 Jun 1952','Alberto Ascari ASC','Ferrari', 36,'3:03:46.300',1952),
		('France','06 Jul 1952','Alberto Ascari ASC','Ferrari', 77,'3:00:00.000',1952),
		('Great Britain','19 Jul 1952','Alberto Ascari ASC','Ferrari', 85,'2:44:11.000',1952);
		


# Muestra los datos de las 3 tablas
	SELECT * FROM gran_premios;
	SELECT * FROM pilotos ;
	SELECT * FROM vueltas_rapidas;