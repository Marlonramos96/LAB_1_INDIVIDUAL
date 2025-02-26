CREATE DATABASE Gestión_de_E_commerce;

USE Gestión_de_E_commerce;

CREATE TABLE usuarios
(
	id_usuario INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    gmail VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos
(
	id_pedido INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    fecha_pedido DATE NOT NULL,
    id_usuario INT UNSIGNED NOT NULL,
    CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES id_usuario(usuarios)
);

CREATE TABLE detalle_pedido
(
	id_datalle_pedido INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(12,2) NOT NULL
);

CREATE TABLE reseñas
(
	id_reseñas INT NOT NULL,
    calificacion INT NOT NULL,
    comentario TEXT,
    fecha_reseña DATE
)