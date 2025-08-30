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

CREATE TABLE IF NOT EXISTS categorias(
    id_categoria int(11) auto_increment not null,
    nombre_categoria varchar(100) not null,
    CONSTRAINT pk_categoria PRIMARY KEY(id_categoria)
)ENGINE=InnoDB;

INSERT INTO categorias VALUES(NULL,'Construcción'),(NULL,'Electricos'),(NULL,'Pisos');

CREATE TABLE IF NOT EXISTS productos(
    id_producto int(11) auto_increment not null,
    nombre_producto varchar(100) not null,
    precio float(100,2) not null,
    stock int(11) not null,
    oferta varchar(50) not null,
    fecha date not null,
    imagen varchar(255) not null,
    id_categoria int(11) not null,
    CONSTRAINT pk_producto PRIMARY KEY(id_producto),
    CONSTRAINT fk_categoria FOREIGN KEY(id_categoria) REFERENCES categorias(id_categoria)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS pedidos(
    id_pedido int(11) auto_increment not null,
    id_usuario int(11) not null,
    fecha date not null,
    total float(100,2) not null,
    estado varchar(50) not null,
    CONSTRAINT pk_pedido PRIMARY KEY(id_pedido),
    CONSTRAINT fk_usuario FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario)
)ENGINE=InnoDB;