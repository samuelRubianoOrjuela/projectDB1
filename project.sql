-- ESTRUCTURA BASE DE DATOS  
+-------------------+--------------+------+-----+---------+-------+
| gama_producto                                                   |
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| gama              | varchar(50)  | NO   | PRI | NULL    |       |
| descripcion_texto | text         | YES  |     | NULL    |       |
| descripcion_html  | text         | YES  |     | NULL    |       |
| imagen            | varchar(256) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+

+--------------+-------------+------+-----+---------+-------+
| proveedor                                                 |
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id_proveedor | varchar(50) | NO   | PRI | NULL    |       |
| nombre       | varchar(70) | YES  |     | NULL    |       |
| id_ciudad    | int         | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+

+-------------------+---------------+------+-----+---------+-------+
| producto                                                         |
+-------------------+---------------+------+-----+---------+-------+
| Field             | Type          | Null | Key | Default | Extra |
+-------------------+---------------+------+-----+---------+-------+
| id_producto       | varchar(15)   | NO   | PRI | NULL    |       |
| nombre            | varchar(70)   | YES  |     | NULL    |       |
| gama              | varchar(50)   | YES  |     | NULL    |       |
| dimensiones       | varchar(25)   | YES  |     | NULL    |       |
| id_proveedor      | varchar(50)   | YES  | MUL | NULL    |       |
| descripcion       | text          | YES  |     | NULL    |       |
| cantidad_en_stock | smallint      | YES  |     | NULL    |       |
| precio_venta      | decimal(15,2) | YES  |     | NULL    |       |
| precio_proveedor  | decimal(15,2) | YES  |     | NULL    |       |
+-------------------+---------------+------+-----+---------+-------+

+---------------+---------------+------+-----+---------+-------+
| detalle_pedido                                               |
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| id_pedido     | int           | NO   | PRI | NULL    |       |
| id_producto   | varchar(15)   | NO   | PRI | NULL    |       |
| cantidad      | int           | YES  |     | NULL    |       |
| precio_unidad | decimal(15,2) | YES  |     | NULL    |       |
| numero_linea  | smallint      | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+

+----------------+-------------+------+-----+---------+-------+
| pedido                                                      |
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| id_pedido      | int         | NO   | PRI | NULL    |       |
| fecha_pedido   | date        | YES  |     | NULL    |       |
| fecha_esperada | date        | YES  |     | NULL    |       |
| fecha_entrega  | date        | YES  |     | NULL    |       |
| estado         | varchar(15) | YES  |     | NULL    |       |
| comentarios    | text        | YES  |     | NULL    |       |
| id_cliente     | int         | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+

+------------------------+---------------+------+-----+---------+-------+
| cliente                                                               |
+------------------------+---------------+------+-----+---------+-------+
| Field                  | Type          | Null | Key | Default | Extra |
+------------------------+---------------+------+-----+---------+-------+
| id_cliente             | int           | NO   | PRI | NULL    |       |
| nombre_cliente         | varchar(50)   | YES  |     | NULL    |       |
| nombre_contacto        | varchar(30)   | YES  |     | NULL    |       |
| apellido_contacto      | varchar(30)   | YES  |     | NULL    |       |
| telefono               | varchar(15)   | YES  |     | NULL    |       |
| fax                    | varchar(15)   | YES  |     | NULL    |       |
| id_direccion           | int           | YES  | MUL | NULL    |       |
| id_ciudad              | int           | YES  | MUL | NULL    |       |
| id_empleado_rep_ventas | int           | YES  | MUL | NULL    |       |
| limite_credito         | decimal(15,2) | YES  |     | NULL    |       |
+------------------------+---------------+------+-----+---------+-------+

+------------------+---------------+------+-----+---------+-------+
| pago                                                            |
+------------------+---------------+------+-----+---------+-------+
| Field            | Type          | Null | Key | Default | Extra |
+------------------+---------------+------+-----+---------+-------+
| id_transaccion   | varchar(50)   | NO   | PRI | NULL    |       |
| id_cliente       | int           | YES  | MUL | NULL    |       |
| id_forma_de_pago | int           | YES  | MUL | NULL    |       |
| fecha_pago       | date          | YES  |     | NULL    |       |
| total            | decimal(15,2) | YES  |     | NULL    |       |
+------------------+---------------+------+-----+---------+-------+

+----------------------+-------------+------+-----+---------+-------+
| forma_de_pago                                                     |
+----------------------+-------------+------+-----+---------+-------+
| Field                | Type        | Null | Key | Default | Extra |
+----------------------+-------------+------+-----+---------+-------+
| id_forma_de_pago     | int         | NO   | PRI | NULL    |       |
| nombre_forma_de_pago | varchar(50) | YES  |     | NULL    |       |
+----------------------+-------------+------+-----+---------+-------+

+-------------+--------------+------+-----+---------+-------+
| empleado                                                  |
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| id_empleado | int          | NO   | PRI | NULL    |       |
| nombre      | varchar(50)  | YES  |     | NULL    |       |
| apellido1   | varchar(50)  | YES  |     | NULL    |       |
| apellido2   | varchar(50)  | YES  |     | NULL    |       |
| extension   | varchar(10)  | YES  |     | NULL    |       |
| email       | varchar(100) | YES  |     | NULL    |       |
| id_oficina  | varchar(10)  | YES  | MUL | NULL    |       |
| id_jefe     | int          | YES  | MUL | NULL    |       |
| puesto      | varchar(50)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+

+--------------+-------------+------+-----+---------+-------+
| oficina                                                   |
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id_oficina   | varchar(10) | NO   | PRI | NULL    |       |
| id_ciudad    | int         | YES  | MUL | NULL    |       |
| telefono     | varchar(20) | YES  |     | NULL    |       |
| id_direccion | int         | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+

+----------------+-------------+------+-----+---------+-------+
| direccion                                                   |
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| id_direccion   | int         | NO   | PRI | NULL    |       |
| tipo_direccion | varchar(50) | YES  |     | NULL    |       |
| direccion      | varchar(50) | YES  |     | NULL    |       |
| descripcion    | text        | YES  |     | NULL    |       |
| id_ciudad      | int         | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+

+---------------+-------------+------+-----+---------+-------+
| ciudad                                                     |
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_ciudad     | int         | NO   | PRI | NULL    |       |
| nombre_ciudad | varchar(20) | YES  |     | NULL    |       |
| codigo_postal | varchar(10) | YES  |     | NULL    |       |
| id_region     | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+

+---------------+-------------+------+-----+---------+-------+
| region                                                     |
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| id_region     | int         | NO   | PRI | NULL    |       |
| nombre_region | varchar(20) | YES  |     | NULL    |       |
| id_pais       | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+

+-------------+-------------+------+-----+---------+-------+
| pais                                                     |
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| id_pais     | int         | NO   | PRI | NULL    |       |
| nombre_pais | varchar(20) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

-- COMANDOS CREACIÓN DE TABLAS 

DROP DATABASE IF EXISTS project;
CREATE DATABASE project;
USE project

CREATE TABLE pais (
id_pais INT(5),
nombre_pais VARCHAR(20),
PRIMARY KEY (id_pais)
);

CREATE TABLE region (
id_region INT(5),
nombre_region VARCHAR(20),
id_pais INT(5),
PRIMARY KEY (id_region),
FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE ciudad (
id_ciudad INT(5),
nombre_ciudad VARCHAR(50),
codigo_postal VARCHAR(10),
id_region INT(5),
PRIMARY KEY (id_ciudad),
FOREIGN KEY (id_region) REFERENCES region(id_region)
);

CREATE TABLE direccion (
id_direccion INT(5),
tipo_direccion VARCHAR(50),
direccion VARCHAR(50),
descripcion TEXT,
id_ciudad INT(5),
PRIMARY KEY (id_direccion),
FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE oficina (
id_oficina VARCHAR(10) NOT NULL,
id_ciudad INT(5) NOT NULL,
telefono VARCHAR(20) NOT NULL,
id_direccion INT(5) NOT NULL,
PRIMARY KEY (id_oficina),
FOREIGN KEY (id_ciudad) REFERENCES ciudad (id_ciudad),   
FOREIGN KEY (id_direccion) REFERENCES direccion (id_direccion)   
);

CREATE TABLE empleado (
id_empleado INT(11),
nombre VARCHAR(50),
apellido1 VARCHAR(50),
apellido2 VARCHAR(50),
extension VARCHAR(10),
email VARCHAR(100),
id_oficina VARCHAR(10),
id_jefe INT(11),
puesto VARCHAR(50),
PRIMARY KEY (id_empleado),
FOREIGN KEY (id_oficina) REFERENCES oficina(id_oficina),
FOREIGN KEY (id_jefe) REFERENCES empleado(id_empleado)
);

CREATE TABLE cliente (
id_cliente INT(11),
nombre_cliente VARCHAR(50),
nombre_contacto VARCHAR(30),
apellido_contacto VARCHAR(30),
telefono VARCHAR(15),
fax VARCHAR(15),
id_direccion INT(5),
id_ciudad INT(5),
id_empleado_rep_ventas INT(11),
limite_credito DECIMAL(15,2),
PRIMARY KEY (id_cliente),
FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad),
FOREIGN KEY (id_empleado_rep_ventas) REFERENCES empleado(id_empleado)
);

CREATE TABLE forma_de_pago (
id_forma_de_pago INT(5),
nombre_forma_de_pago VARCHAR(50),
PRIMARY KEY (id_forma_de_pago)
);

CREATE TABLE pago (
id_transaccion VARCHAR(50),
id_cliente INT(11),
id_forma_pago INT(5),
fecha_pago DATE,
total DECIMAL(15,2),
PRIMARY KEY (id_transaccion),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_forma_pago) REFERENCES forma_de_pago(id_forma_de_pago)
);

CREATE TABLE pedido (
id_pedido INT(11),
fecha_pedido DATE,
fecha_esperada DATE,
fecha_entrega DATE,
estado VARCHAR(15),
comentarios TEXT,
id_cliente INT(11),
PRIMARY KEY (id_pedido),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE gama_producto (
gama VARCHAR(50),
descripcion_texto TEXT,
descripcion_html TEXT,
imagen VARCHAR(256),
PRIMARY KEY (gama)
);

CREATE TABLE proveedor (
id_proveedor VARCHAR(50),
nombre VARCHAR(70),
id_ciudad INT(5),
PRIMARY KEY (id_proveedor),
FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE producto (
id_producto VARCHAR(15),
nombre VARCHAR(70),
gama VARCHAR(50),
dimensiones VARCHAR(25),
id_proveedor VARCHAR(50),
descripcion TEXT,
cantidad_en_stock SMALLINT(6),
precio_venta DECIMAL(15,2),
precio_proveedor DECIMAL(15,2),
PRIMARY KEY (id_producto),
FOREIGN KEY (gama) REFERENCES gama_producto(gama),
FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)
);

CREATE TABLE detalle_pedido (
id_pedido INT(11),
id_producto VARCHAR(15),
cantidad INT(11),
precio_unidad DECIMAL(15,2),
numero_linea SMALLINT(6),
PRIMARY KEY (id_pedido, id_producto),
FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

-- INSERCIÓN DE DATOS

INSERT INTO pais (id_pais, nombre_pais) VALUES
(1, 'Estados Unidos'),
(2, 'Francia'),
(3, 'España'),
(4, 'Colombia');

INSERT INTO region (id_region, nombre_region, id_pais) VALUES
(1, 'California', 1),
(2, 'Nueva York', 1),
(3, 'Isère', 2),
(4, 'Valle del Loira', 2),
(5, 'Andalucía', 3),
(6, 'Cataluña', 3),
(7, 'Bogotá D.C.', 4),
(8, 'Antioquia', 4);

INSERT INTO ciudad (id_ciudad, nombre_ciudad, codigo_postal, id_region) VALUES
(1, 'Los Angeles', '90001', 1),
(2, 'San Francisco', '94102', 1),
(3, 'New York', '10001', 2),
(4, 'Buffalo', '14201', 2),
(5, 'Grenoble', '38000', 3),
(6, 'Lyon', '69001', 3),
(7, 'Tours', '37000', 4),
(8, 'Orléans', '45000', 4),
(9, 'Sevilla', '41001', 5),
(10, 'Málaga', '29001', 5),
(11, 'Barcelona', '08001', 6),
(12, 'Girona', '17001', 6),
(13, 'Bogotá', '11001', 7),
(14, 'Medellín', '05001', 8),
(15, 'Madrid', '28001', 1);

INSERT INTO direccion (id_direccion, tipo_direccion, direccion, descripcion, id_ciudad) VALUES
(1, 'Oficina', '123 Main Street', 'Oficina principal', 1),
(2, 'Casa', '456 Elm Street', 'Casa de ejemplo', 2),
(3, 'Oficina', '789 Oak Street', 'Oficina céntrica', 3),
(4, 'Casa', '101 Maple Street', 'Casa de muestra', 4),
(5, 'Oficina', '123 Rue de la République', 'Oficina principal', 5),
(6, 'Casa', '456 Rue du Docteur Valois', 'Casa de ejemplo', 6),
(7, 'Oficina', '789 Rue de la Soie', 'Oficina céntrica', 7),
(8, 'Casa', '101 Rue du Commerce', 'Casa de muestra', 8),
(9, 'Oficina', '123 Avenida de la Constitución', 'Oficina principal', 9),
(10, 'Casa', '456 Calle Larios', 'Casa de ejemplo', 10),
(11, 'Oficina', '789 Passeig de Gràcia', 'Oficina céntrica', 11),
(12, 'Casa', '101 Carrer dels Arcs', 'Casa de muestra', 12),
(13, 'Oficina', '123 Calle 7', 'Oficina principal', 13),
(14, 'Casa', '456 Carrera 70', 'Casa de ejemplo', 14);

INSERT INTO oficina (id_oficina, id_ciudad, telefono, id_direccion) VALUES
('OF001', 1, '123-456-7890', 1),
('OF002', 2, '987-654-3210', 2),
('OF003', 3, '111-222-3333', 3),
('OF004', 4, '444-555-6666', 4),
('OF005', 5, '777-888-9999', 5),
('OF006', 6, '000-111-2222', 6),
('OF007', 7, '333-444-5555', 7),
('OF008', 8, '666-777-8888', 8),
('OF009', 9, '999-000-1111', 9),
('OF010', 10, '222-333-4444', 10),
('OF011', 11, '555-666-7777', 11),
('OF012', 12, '888-999-0000', 12),
('OF013', 13, '121-314-1516', 13),
('OF014', 14, '161-718-1920', 14);

INSERT INTO empleado (id_empleado, nombre, apellido1, apellido2, extension, email, id_oficina, id_jefe, puesto) VALUES
(1, 'Juan', 'García', 'López', '123', 'juan.garcia@example.com', 'OF001', NULL, 'Gerente'),
(2, 'María', 'Martínez', 'Rodríguez', '456', 'maria.martinez@example.com', 'OF002', 1, 'Representante de ventas'),
(3, 'Pedro', 'Hernández', 'Pérez', '789', 'pedro.hernandez@example.com', 'OF003', 1, 'Representante de ventas'),
(4, 'Ana', 'López', 'Gómez', '012', 'ana.lopez@example.com', 'OF004', 2, 'Asistente'),
(5, 'Carlos', 'Díaz', 'Sánchez', '345', 'carlos.diaz@example.com', 'OF005', 2, 'Asistente'),
(6, 'Laura', 'Rodríguez', 'Fernández', '678', 'laura.rodriguez@example.com', 'OF006', 3, 'Asistente'),
(7, 'Javier', 'Gómez', 'Martínez', '901', 'javier.gomez@example.com', 'OF007', 3, 'Asistente'),
(8, 'Sofía', 'Pérez', 'González', '234', 'sofia.perez@example.com', 'OF008', 4, 'Asistente'),
(9, 'Diego', 'Fernández', 'López', '567', 'diego.fernandez@example.com', 'OF009', 4, 'Asistente'),
(10, 'Elena', 'Sánchez', 'Martínez', '890', 'elena.sanchez@example.com', 'OF010', 5, 'Asistente'),
(11, 'Pablo', 'González', 'Hernández', '123', 'pablo.gonzalez@example.com', 'OF011', 5, 'Representante de ventas'),
(12, 'Isabel', 'Gómez', 'Rodríguez', '456', 'isabel.gomez@example.com', 'OF012', 6, 'Asistente'),
(13, 'Andrés', 'Martínez', 'Díaz', '789', 'andres.martinez@example.com', 'OF013', 6, 'Asistente'),
(14, 'Luisa', 'Hernández', 'Sánchez', '012', 'luisa.hernandez@example.com', 'OF014', 7, 'Asistente'),
(15, 'Samuel', 'Rubiano', 'Orjuela', '1234', 'correo@ejemplo.com', NULL, NULL, 'CEO');

INSERT INTO cliente (id_cliente, nombre_cliente, nombre_contacto, apellido_contacto, telefono, fax, id_direccion, id_ciudad, id_empleado_rep_ventas, limite_credito) VALUES
(1, 'Cliente A', 'Juan', 'Pérez', '123-456-7890', '123-456-7890', 1, 1, 1, 10000.00),
(2, 'Cliente B', 'María', 'Gómez', '987-654-3210', '987-654-3210', 2, 2, 2, 15000.00),
(3, 'Cliente C', 'Pedro', 'Rodríguez', '111-222-3333', '111-222-3333', 3, 3, 3, 20000.00),
(4, 'Cliente D', 'Ana', 'López', '444-555-6666', '444-555-6666', 4, 4, 4, 25000.00),
(5, 'Cliente E', 'Carlos', 'Martínez', '777-888-9999', '777-888-9999', 5, 5, 5, 30000.00),
(6, 'Cliente F', 'Laura', 'Fernández', '000-111-2222', '000-111-2222', 6, 6, 6, 35000.00),
(7, 'Cliente G', 'Javier', 'Gómez', '333-444-5555', '333-444-5555', 7, 7, 7, 40000.00),
(8, 'Cliente H', 'Sofía', 'Pérez', '666-777-8888', '666-777-8888', 8, 8, 8, 45000.00),
(9, 'Cliente I', 'Diego', 'Hernández', '999-000-1111', '999-000-1111', 9, 9, 9, 50000.00),
(10, 'Cliente J', 'Elena', 'Sánchez', '222-333-4444', '222-333-4444', 10, 10, 10, 55000.00),
(11, 'Cliente Madrid', 'Juan', 'López', '123456789', '987654321', 1, 15, 11, 5000.00),
(12, 'Cliente Nuevo 1', 'Angel', 'Gomez', '123456789', '987654321', NULL, 1, 1, 1000.00),
(13, 'Cliente Nuevo 2', 'Claudia', 'Rodriguez', '987654321', '123456789', NULL, 2, 2, 2000.00),
(14, 'Cliente Nuevo 3', 'Juan', 'Ramirez', '66061005', '160020265', 13, 13, NULL, 35000.00),
(15, 'Cliente Nuevo 4', 'Mario', 'Bros', '66161516', '516156115', 1, 1, NULL, 2.00);

INSERT INTO forma_de_pago (id_forma_de_pago, nombre_forma_de_pago) VALUES
(1, 'Efectivo'),
(2, 'Tarjeta de crédito'),
(3, 'Paypal'),
(4, 'Pago móvil');

INSERT INTO pago (id_transaccion, id_cliente, id_forma_pago, fecha_pago, total) VALUES
('TRX001', 1, 1, '2024-04-19', 250.00),
('TRX002', 2, 2, '2024-01-18', 150.00),
('TRX003', 3, 3, '2008-05-04', 300.00),
('TRX004', 4, 1, '2009-04-18', 200.00),
('TRX005', 5, 2, '2024-04-15', 180.00);

INSERT INTO pedido (id_pedido, fecha_pedido, fecha_esperada, fecha_entrega, estado, comentarios, id_cliente) VALUES
(1, '2024-04-19', '2024-04-25', NULL, 'En proceso', 'Pedido urgente', 1),
(2, '2024-01-18', '2024-01-24', '2024-01-22', 'Entregado', 'Pedido estándar', 2),
(3, '2008-05-04', '2008-05-10', '2008-05-10', 'Entregado', 'Pedido regular', 3),
(4, '2009-04-18', '2009-04-22', NULL, 'Rechazado', 'Pedido urgente', 4),
(5, '2024-04-15', '2024-04-21', NULL, 'En proceso', 'Pedido estándar', 5),
(6, '2024-02-13', '2024-02-15', '2024-02-16', 'Entregado', 'Pedido estándar', 12),
(7, '2024-03-02', '2024-03-05', '2024-03-05', 'Entregado', 'Pedido urgente', 13);

INSERT INTO gama_producto (gama, descripcion_texto, descripcion_html, imagen) VALUES
('Clásico', 'Productos con estilo clásico y elegante.', '<p>Productos con estilo clásico y elegante.</p>', 'imagen_clasico.jpg'),
('Deportivo', 'Productos diseñados para el rendimiento deportivo.', '<p>Productos diseñados para el rendimiento deportivo.</p>', 'imagen_deportivo.jpg'),
('Lujo', 'Productos de alta gama y calidad premium.', '<p>Productos de alta gama y calidad premium.</p>', 'imagen_lujo.jpg'),
('Ornamental', 'Descripción de la gama Ornamental', 'Descripción HTML de la gama Ornamental', 'imagen_ornamental.jpg'),
('Vintage', 'Productos con un estilo retro y nostálgico.', '<p>Productos con un estilo retro y nostálgico.</p>', 'imagen_vintage.jpg');

INSERT INTO proveedor (id_proveedor, nombre, id_ciudad) VALUES
('PROV001', 'Fresh Foods Inc.', 1),
('PROV002', 'Gourmet Grocers', 2),
('PROV003', 'Tasty Treats Co.', 3),
('PROV004', 'Delicious Delights Ltd.', 4),
('PROV005', 'Healthy Harvest Farms', 5),
('PROV006', 'Savory Spices LLC', 6),
('PROV007', 'Green Garden Produce', 7),
('PROV008', 'Quality Quench Beverages', 8),
('PROV009', 'Fresh Fusion Foods', 9),
('PROV010', 'Eco Eats Distribution', 10),
('PROV011', 'Organic Oasis', 11),
('PROV012', 'Farmers Fields', 12),
('PROV013', 'Tasty Tacos Inc.', 13),
('PROV014', 'Mega Meals', 14);

INSERT INTO producto (id_producto, nombre, gama, dimensiones, id_proveedor, descripcion, cantidad_en_stock, precio_venta, precio_proveedor) VALUES
('PROD001', 'Organic Vegetables Box', 'Clásico', '25x25x10 cm', 'PROV005', 'Caja de verduras orgánicas frescas', 100, 25.99, 15.00),
('PROD002', 'Premium Steak Selection', 'Lujo', '30x20x5 cm', 'PROV003', 'Selección de filetes de primera calidad', 50, 49.99, 35.00),
('PROD003', 'Artisanal Cheese Platter', 'Deportivo', '40x30x5 cm', 'PROV002', 'Tabla de quesos artesanales variados', 30, 39.99, 28.00),
('PROD004', 'Organic Fruit Basket', 'Clásico', '35x35x15 cm', 'PROV005', 'Cesta de frutas orgánicas de temporada', 80, 29.99, 20.00),
('PROD005', 'Gourmet Chocolate Assortment', 'Deportivo', '25x25x5 cm', 'PROV002', 'Surtido de chocolates gourmet', 60, 19.99, 15.00),
('PROD006', 'Fresh Squeezed Juice Pack', 'Lujo', '20x20x10 cm', 'PROV008', 'Paquete de jugos naturales recién exprimidos', 120, 15.99, 10.00),
('PROD007', 'Artisanal Bread Selection', 'Vintage', '40x20x10 cm', 'PROV006', 'Selección de panes artesanales recién horneados', 40, 9.99, 6.50),
('PROD008', 'Superfood Smoothie Mix', 'Vintage', '15x15x15 cm', 'PROV008', 'Mezcla de superalimentos para batidos', 100, 12.99, 8.50),
('PROD009', 'Farm Fresh Eggs Carton', 'Clásico', '15x15x10 cm', 'PROV012', 'Cartón de huevos frescos de granja', 150, 7.99, 5.00),
('PROD010', 'Handcrafted Pasta Assortment', 'Vintage', '30x30x10 cm', 'PROV006', 'Surtido de pastas artesanales', 70, 14.99, 9.00),
('PROD012', 'Producto Ornamental', 'Ornamental', '20x20x20', 'PROV002', 'Descripción del producto Ornamental 2', 150, 29.99, 25.00);

INSERT INTO detalle_pedido (id_pedido, id_producto, cantidad, precio_unidad, numero_linea) VALUES
(1, 'PROD001', 2, 25.99, 1),
(1, 'PROD002', 1, 49.99, 2),
(2, 'PROD001', 3, 25.99, 1),
(2, 'PROD003', 3, 39.99, 1),
(2, 'PROD004', 1, 29.99, 2),
(3, 'PROD004', 2, 29.99, 1),
(4, 'PROD001', 1, 25.99, 2),
(4, 'PROD002', 3, 49.99, 1),
(4, 'PROD003', 1, 39.99, 2),
(4, 'PROD005', 1, 19.99, 1),
(5, 'PROD006', 2, 15.99, 1);