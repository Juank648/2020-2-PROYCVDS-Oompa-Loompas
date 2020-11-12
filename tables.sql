CREATE TABLE IF NOT EXISTS Usuario(carnet BIGINT primary KEY,nombre VARCHAR(14) , estado BOOLEAN not null , correo VARCHAR(200) not NULL, contrasena VARCHAR(100) not NULL);

CREATE TABLE IF NOT EXISTS Estudiante(carnetEstudiante BIGINT primary KEY,nombre VARCHAR(14) , estado BOOLEAN not null , correo VARCHAR(200) not NULL, contrasena VARCHAR(100) not NULL);

CREATE TABLE IF NOT EXISTS Administrativo(carnetAdministrativo BIGINT primary KEY,nombre VARCHAR(14), estado BOOLEAN not null , correo VARCHAR(200) not NULL, contrasena VARCHAR(100) not NULL);

CREATE TABLE IF NOT EXISTS Novedad(id BIGINT primary KEY,fecha date not null,carnet BIGINT not null, descripcion VARCHAR(200) not NULL);

CREATE TABLE IF NOT EXISTS Laboratorio(id BIGINT primary KEY,nombre VARCHAR(50) not null,capacidad BIGINT not null);

CREATE TABLE IF NOT EXISTS Equipo(id BIGINT primary KEY,nombre VARCHAR(50) not null,identificador BIGINT not null);

CREATE TABLE IF NOT EXISTS Elemento(id BIGINT primary KEY,fabricante VARCHAR(50) not null,capacidad BIGINT not null);



ALTER TABLE Usuario ADD CONSTRAINT FK_usuario_estudiante FOREIGN KEY (carnet) REFERENCES Estudiante(carnetEstudiante);

ALTER TABLE Usuario ADD CONSTRAINT FK_usuario_administrativo FOREIGN KEY (carnet) REFERENCES Administrativo(carnetAdministrativo);

ALTER TABLE Estudiante ADD CONSTRAINT FK_estudiante_novedad FOREIGN KEY (carnetEstudiante) REFERENCES Novedad(id);

ALTER TABLE Administrativo ADD CONSTRAINT FK_administrativo_novedad FOREIGN KEY (carnetAdministrativo) REFERENCES Novedad(id);

ALTER TABLE Novedad ADD CONSTRAINT FK_novedad_laboratorio FOREIGN KEY (id) REFERENCES Laboratorio(id);

ALTER TABLE Novedad ADD CONSTRAINT FK_novedad_equipo FOREIGN KEY (id) REFERENCES Equipo(id);

ALTER TABLE Laboratorio ADD CONSTRAINT FK_laboratorio_equipo FOREIGN KEY (id) REFERENCES Equipo(id);

ALTER TABLE Equipo ADD CONSTRAINT FK_equipo_elemento FOREIGN KEY (id) REFERENCES Elemento(id);