CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE IF NOT EXISTS usuarios(
    id_usuario int(11) auto_increment not null,
    nombre varchar(100) not null,
    apellidos varchar(100) not null,
    email varchar(200) not null,
    password varchar(255) not null,
    rol varchar(20),
    imagen varchar(255),
    CONSTRAINT pk_usuario PRIMARY KEY(id_usuario),
    CONSTRAINT uq_email UNIQUE(email)
)ENGINE=InnoDB;

INSERT INTO usuarios VALUES(NULL,'admin','admin','admin@admin.com','1234','admin','imagen');