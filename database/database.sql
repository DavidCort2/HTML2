CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE IF NOT EXISTS t_usuarios(
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

INSERT INTO t_usuarios VALUES(NULL,'admin','admin','admin@admin.com','1234','admin','imagen');

CREATE TABLE IF NOT EXISTS t_categorias(
    id_categoria int(11) auto_increment not null,
    nombre_categoria varchar(100) not null,
    CONSTRAINT pk_categoria PRIMARY KEY(id_categoria)
)ENGINE=InnoDB;

INSERT INTO t_categorias VALUES(NULL,'Construcción'),(NULL,'Electricos'),(NULL,'Pisos');

CREATE TABLE IF NOT EXISTS t_productos(
    id_producto int(11) auto_increment not null,
    nombre_producto varchar(100) not null,
    descripcion varchar (200) not null,
    precio float(100,2) not null,
    stock int(11) not null,
    oferta varchar(50) not null,
    fecha date not null,
    imagen varchar(255) not null,
    id_categoria int(11) not null,
    CONSTRAINT pk_producto PRIMARY KEY(id_producto),
    CONSTRAINT fk_categoria FOREIGN KEY(id_categoria) REFERENCES t_categorias(id_categoria)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS t_pedidos(
    id_pedido int(11) auto_increment not null,
    id_usuario int(11) not null,
    ciudad varchar(50) not null,
    direccion varchar(100) not null,
    costo float(100,2) not null,
    estado varchar (50) not null,
    fecha datetime not null,
    CONSTRAINT pk_pedidos primary key(id_pedido),
    CONSTRAINT fk_usuario FOREIGN key (id_usuario)
    REFERENCES t_usuarios (id_usuario)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS t_detalle_pedidos(
    id_detalle_pedidos int(11) auto_increment not null,
    id_pedido int(11) not null,
    id_producto int(11) not null,
    unidades int(11) not null,
    CONSTRAINT pk PRIMARY key (id_detalle_pedidos),
    CONSTRAINT fk_dtpedido FOREIGN KEY (id_pedido)
    REFERENCES t_pedidos (id_pedido),
    CONSTRAINT fk_dtproducto FOREIGN KEY (id_producto)
    REFERENCES t_productos (id_producto)
)ENGINE=InnoDB;