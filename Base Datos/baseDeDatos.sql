CREATE TABLE IF NOT EXISTS Rol(tipo VARCHAR(14) PRIMARY KEY);

CREATE TABLE IF NOT EXISTS Usuario(carnet BIGINT PRIMARY KEY, nombre VARCHAR(50) NOT NULL, correo VARCHAR(50), contrasena VARCHAR(80) NOT NULL, estado VARCHAR(15) NOT NULL, rol VARCHAR(14) REFERENCES Rol(tipo));

CREATE TABLE IF NOT EXISTS TipoNovedad(tipo VARCHAR(14) PRIMARY KEY);

CREATE TABLE IF NOT EXISTS Laboratorio(id BIGINT PRIMARY KEY, nombre VARCHAR(15), capacidad BIGINT);

CREATE TABLE IF NOT EXISTS Equipo(id BIGINT PRIMARY KEY, nombre VARCHAR(15));

CREATE TABLE IF NOT EXISTS Equipos(idlaboratorio BIGINT REFERENCES Laboratorio(id), idEquipo BIGINT REFERENCES Equipo(id));

ALTER TABLE Equipos ADD CONSTRAINT PK_Equipos PRIMARY KEY (idlaboratorio, idEquipo);

CREATE TABLE IF NOT EXISTS Novedad(id BIGINT PRIMARY KEY, fecha DATE, carnet BIGINT references Usuario(carnet), idLaboratorio BIGINT references Laboratorio(id), idEquipo BIGINT references Equipo(id), descripcion VARCHAr(100), tiponovedad VARCHAR(15) REFERENCES TipoNovedad(tipo));

CREATE TABLE IF NOT EXISTS Elemento(id BIGINT PRIMARY KEY, fabricante VARCHAR(15), capacidad BIGINT, idEquipo BIGINT REFERENCES Equipo(id));

insert into Rol(tipo) values ('ESTUDIANTE');
insert into Rol(tipo) values ('ADMITRISTATIVO');


