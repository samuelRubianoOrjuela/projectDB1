# Proyecto Bases de Datos #1

1. Realice el proceso de normalizacion de base de datos que permita cumplir hasta la 4fn.

    ```sql
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

    ```
    ---

### Consultas sobre una tabla
---

1. Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
    ```sql
    SELECT o.id_oficina, c.nombre_ciudad
    FROM oficina o
    JOIN ciudad c ON o.id_ciudad = c.id_ciudad;

    +------------+---------------+
    | id_oficina | nombre_ciudad |
    +------------+---------------+
    | OF001      | Los Angeles   |
    | OF002      | San Francisco |
    | OF003      | New York      |
    | OF004      | Buffalo       |
    | OF005      | Grenoble      |
    | OF006      | Lyon          |
    | OF007      | Tours         |
    | OF008      | Orléans       |
    | OF009      | Sevilla       |
    | OF010      | Málaga        |
    | OF011      | Barcelona     |
    | OF012      | Girona        |
    | OF013      | Bogotá        |
    | OF014      | Medellín      |
    +------------+---------------+
    ```
    ---

2. Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
    ```sql
    SELECT c.nombre_ciudad, o.telefono
    FROM oficina o
    JOIN ciudad c ON o.id_ciudad = c.id_ciudad
    JOIN region r ON c.id_region = r.id_region
    JOIN pais p ON r.id_pais = p.id_pais
    WHERE p.nombre_pais = "España";
    
    +---------------+--------------+
    | nombre_ciudad | telefono     |
    +---------------+--------------+
    | Sevilla       | 999-000-1111 |
    | Málaga        | 222-333-4444 |
    | Barcelona     | 555-666-7777 |
    | Girona        | 888-999-0000 |
    +---------------+--------------+
    ```
    ---

3. Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
    ```sql
    SELECT e.nombre, CONCAT(e.apellido1, ' ', e.apellido2) AS apellidos, e.email
    FROM empleado e
    WHERE e.id_jefe = 7;
    
    +--------+-------------------+-----------------------------+
    | nombre | apellidos         | email                       |
    +--------+-------------------+-----------------------------+
    | Luisa  | Hernández Sánchez | luisa.hernandez@example.com |
    +--------+-------------------+-----------------------------+
    ```
    ---

4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
    ```sql
    SELECT e.puesto, e.nombre, CONCAT(e.apellido1, ' ', e.apellido2) AS apellidos, e.email
    FROM empleado e
    WHERE e.puesto = 'Gerente';

    +---------+--------+--------------+-------------------------+
    | puesto  | nombre | apellidos    | email                   |
    +---------+--------+--------------+-------------------------+
    | Gerente | Juan   | García López | juan.garcia@example.com |
    +---------+--------+--------------+-------------------------+
    ```
    ---

5. Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
    ```sql
    SELECT e.nombre, CONCAT(e.apellido1, ' ', e.apellido2) AS apellidos, e.puesto
    FROM empleado e
    WHERE e.puesto <> 'Representante de ventas';

    +--------+---------------------+-----------+
    | nombre | apellidos           | puesto    |
    +--------+---------------------+-----------+
    | Juan   | García López        | Gerente   |
    | Ana    | López Gómez         | Asistente |
    | Carlos | Díaz Sánchez        | Asistente |
    | Laura  | Rodríguez Fernández | Asistente |
    | Javier | Gómez Martínez      | Asistente |
    | Sofía  | Pérez González      | Asistente |
    | Diego  | Fernández López     | Asistente |
    | Elena  | Sánchez Martínez    | Asistente |
    | Isabel | Gómez Rodríguez     | Asistente |
    | Andrés | Martínez Díaz       | Asistente |
    | Luisa  | Hernández Sánchez   | Asistente |
    | Samuel | Rubiano Orjuela     | CEO       |
    +--------+---------------------+-----------+
    ```
    ---

6. Devuelve un listado con el nombre de los todos los clientes españoles.
    ```sql
    SELECT cl.nombre_cliente
    FROM cliente cl
    JOIN ciudad c ON cl.id_ciudad = c.id_ciudad
    JOIN region r ON c.id_region = r.id_region
    JOIN pais p ON r.id_pais = p.id_pais
    WHERE p.nombre_pais = "España";

    +----------------+
    | nombre_cliente |
    +----------------+
    | Cliente I      |
    | Cliente J      |
    +----------------+
    ```
    ---

7. Devuelve un listado con los distintos estados por los que puede pasar un pedido.
    ```sql
    SELECT DISTINCT p.estado
    FROM pedido p;

    +------------+
    | estado     |
    +------------+
    | En proceso |
    | Entregado  |
    | Rechazado  |
    +------------+
    ```
    ---

8. Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:

- Utilizando la función YEAR de MySQL.
    ```sql
    SELECT id_cliente
    FROM pago 
    WHERE YEAR(fecha_pago) = 2008;

    +------------+
    | id_cliente |
    +------------+
    |          3 |
    +------------+
    ```
    ---

- Utilizando la función DATE_FORMAT de MySQL.
    ```sql
    SELECT DISTINCT id_cliente
    FROM pago
    WHERE DATE_FORMAT(fecha_pago, '%Y') = '2008';

    +------------+
    | id_cliente |
    +------------+
    |          3 |
    +------------+
    ```
    ---

- Sin utilizar ninguna de las funciones anteriores.
    ```sql
    SELECT DISTINCT id_cliente
    FROM pago
    WHERE fecha_pago BETWEEN '2008-01-01' AND '2008-12-31';

    +------------+
    | id_cliente |
    +------------+
    |          3 |
    +------------+
    ```
    ---

9. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
    ```sql
    SELECT p.id_pedido, p.id_cliente, p.fecha_esperada, p.fecha_entrega
    FROM pedido p
    WHERE p.fecha_esperada < p.fecha_entrega;
    
    +-----------+------------+----------------+---------------+
    | id_pedido | id_cliente | fecha_esperada | fecha_entrega |
    +-----------+------------+----------------+---------------+
    |         6 |         12 | 2024-02-15     | 2024-02-16    |
    +-----------+------------+----------------+---------------+
    ```
    ---
10. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.
- Utilizando la función ADDDATE de MySQL.
    ```sql
    SELECT p.id_pedido, p.id_cliente, p.fecha_esperada, p.fecha_entrega
    FROM pedido p
    WHERE p.fecha_entrega = ADDDATE(p.fecha_esperada, -2);
    
    +-----------+------------+----------------+---------------+
    | id_pedido | id_cliente | fecha_esperada | fecha_entrega |
    +-----------+------------+----------------+---------------+
    |         2 |          2 | 2024-01-24     | 2024-01-22    |
    +-----------+------------+----------------+---------------+
    ```
    ---
- Utilizando la función DATEDIFF de MySQL.
    ```sql
    SELECT p.id_pedido, p.id_cliente, p.fecha_esperada, p.fecha_entrega
    FROM pedido p
    WHERE DATEDIFF(p.fecha_esperada, p.fecha_entrega) >= 2;


    +-----------+------------+----------------+---------------+
    | id_pedido | id_cliente | fecha_esperada | fecha_entrega |
    +-----------+------------+----------------+---------------+
    |         2 |          2 | 2024-01-24     | 2024-01-22    |
    +-----------+------------+----------------+---------------+
    ```
    ---
- ¿Sería posible resolver esta consulta utilizando el operador de suma + o resta -?
    ```sql
    SELECT p.id_pedido, p.id_cliente, p.fecha_esperada, p.fecha_entrega
    FROM pedido p
    WHERE p.fecha_entrega = p.fecha_esperada - 2;
    
    +-----------+------------+----------------+---------------+
    | id_pedido | id_cliente | fecha_esperada | fecha_entrega |
    +-----------+------------+----------------+---------------+
    |         2 |          2 | 2024-01-24     | 2024-01-22    |
    +-----------+------------+----------------+---------------+
    ```
    ---
11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
    ```sql
    SELECT p.id_pedido, p.id_cliente, p.fecha_pedido, p.fecha_esperada, p.estado
    FROM pedido p
    WHERE p.estado = 'Rechazado' AND YEAR(p.fecha_pedido
    ) = 2009;
    
    +-----------+------------+--------------+----------------+-----------+
    | id_pedido | id_cliente | fecha_pedido | fecha_esperada | estado    |
    +-----------+------------+--------------+----------------+-----------+
    |         4 |          4 | 2009-04-18   | 2009-04-22     | Rechazado |
    +-----------+------------+--------------+----------------+-----------+
    ```
    ---
12. Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.
    ```sql
    SELECT p.id_pedido, p.id_cliente, p.fecha_pedido, p.fecha_esperada, fecha_entrega, p.estado
    FROM pedido p
    WHERE p.estado = 'Entregado' AND MONTH(p.fecha_entrega
    ) = '01';
    
    +-----------+------------+--------------+----------------+---------------+-----------+
    | id_pedido | id_cliente | fecha_pedido | fecha_esperada | fecha_entrega | estado    |
    +-----------+------------+--------------+----------------+---------------+-----------+
    |         2 |          2 | 2024-01-18   | 2024-01-24     | 2024-01-22    | Entregado |
    +-----------+------------+--------------+----------------+---------------+-----------+
    ```
    ---

13. Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.
    ```sql
    SELECT p.id_transaccion, p.id_cliente, p.id_forma_de_pago, f.nombre_forma_de_pago, p.fecha_pago, p.total
    FROM pago p
    JOIN forma_de_pago f ON f.id_forma_de_pago = p.id_forma_de_pago
    WHERE p.id_forma_de_pago = 3 AND YEAR(p.fecha_pago) = 2008;
    
    +----------------+------------+------------------+----------------------+------------+--------+
    | id_transaccion | id_cliente | id_forma_de_pago | nombre_forma_de_pago | fecha_pago | total  |
    +----------------+------------+------------------+----------------------+------------+--------+
    | TRX003         |          3 |                3 | Paypal               | 2008-05-04 | 300.00 |
    +----------------+------------+------------------+----------------------+------------+--------+
    ```
    ---
14. Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.
    ```sql
    SELECT DISTINCT p.id_forma_de_pago, f.nombre_forma_de_pago
    FROM pago p
    JOIN forma_de_pago f ON f.id_forma_de_pago = p.id_forma_de_pago;
    
    +------------------+----------------------+
    | id_forma_de_pago | nombre_forma_de_pago |
    +------------------+----------------------+
    |                1 | Efectivo             |
    |                2 | Tarjeta de crédito   |
    |                3 | Paypal               |
    +------------------+----------------------+
    ```
    ---
15. Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.
    ```sql
    SELECT p.id_producto, p.nombre, p.gama, p.cantidad_en_stock, p.precio_venta
    FROM producto p
    WHERE gama = 'Ornamental' AND cantidad_en_stock > 100
    ORDER BY p.precio_venta ASC;
    
    +-------------+-----------------------+------------+-------------------+--------------+
    | id_producto | nombre                | gama       | cantidad_en_stock | precio_venta |
    +-------------+-----------------------+------------+-------------------+--------------+
    | PROD012     | Producto Ornamental 2 | Ornamental |               150 |        29.99 |
    +-------------+-----------------------+------------+-------------------+--------------+
    ```
    ---
16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.
    ```sql
    SELECT cl.id_cliente, cl.nombre_cliente, cl.telefono, cl.id_ciudad, c.nombre_ciudad, cl.id_empleado_rep_ventas
    FROM cliente cl
    JOIN ciudad c ON cl.id_ciudad = c.id_ciudad
    WHERE c.nombre_ciudad = 'Madrid' AND cl.id_empleado_rep_ventas IN (11, 30); 
    
    +------------+----------------+-----------+-----------+---------------+------------------------+
    | id_cliente | nombre_cliente | telefono  | id_ciudad | nombre_ciudad | id_empleado_rep_ventas |
    +------------+----------------+-----------+-----------+---------------+------------------------+
    |         11 | Cliente Madrid | 123456789 |        15 | Madrid        |                     11 |
    +------------+----------------+-----------+-----------+---------------+------------------------+
    ```
    ---

### Consultas multitabla (Composición interna)
Resuelva todas las consultas utilizando la sintaxis de SQL1 y SQL2. Las consultas con sintaxis de SQL2 se deben resolver con INNER JOIN y NATURAL JOIN.

---

1. Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
    ```sql
    SELECT cl.nombre_cliente, e.nombre, e.apellido1, e.apellido2
    FROM cliente cl
    JOIN empleado e ON e.id_empleado = cl.id_empleado_rep_ventas; 

    +----------------+--------+-----------+-----------+
    | nombre_cliente | nombre | apellido1 | apellido2 |
    +----------------+--------+-----------+-----------+
    | Cliente A      | Juan   | García    | López     |
    | Cliente B      | María  | Martínez  | Rodríguez |
    | Cliente C      | Pedro  | Hernández | Pérez     |
    | Cliente D      | Ana    | López     | Gómez     |
    | Cliente E      | Carlos | Díaz      | Sánchez   |
    | Cliente F      | Laura  | Rodríguez | Fernández |
    | Cliente G      | Javier | Gómez     | Martínez  |
    | Cliente H      | Sofía  | Pérez     | González  |
    | Cliente I      | Diego  | Fernández | López     |
    | Cliente J      | Elena  | Sánchez   | Martínez  |
    | Cliente Madrid | Pablo  | González  | Hernández |
    +----------------+--------+-----------+-----------+
    ```
    ---
2. Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
    ```sql
    SELECT cl.nombre_cliente, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_rep_ventas
    FROM cliente cl
    JOIN pago p ON cl.id_cliente = p.id_cliente
    JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado;

    +----------------+--------------------------+
    | nombre_cliente | nombre_rep_ventas        |
    +----------------+--------------------------+
    | Cliente A      | Juan García López        |
    | Cliente B      | María Martínez Rodríguez |
    | Cliente C      | Pedro Hernández Pérez    |
    | Cliente D      | Ana López Gómez          |
    | Cliente E      | Carlos Díaz Sánchez      |
    +----------------+--------------------------+
    ```
    ---
3. Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
    ```sql
    SELECT cl.nombre_cliente, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_rep_ventas
    FROM cliente cl
    JOIN empleado e ON e.id_empleado = cl.id_empleado_rep_ventas
    WHERE id_cliente NOT IN (SELECT id_cliente FROM pago);

    +----------------+---------------------------+
    | nombre_cliente | nombre_rep_ventas         |
    +----------------+---------------------------+
    | Cliente F      | Laura Rodríguez Fernández |
    | Cliente G      | Javier Gómez Martínez     |
    | Cliente H      | Sofía Pérez González      |
    | Cliente I      | Diego Fernández López     |
    | Cliente J      | Elena Sánchez Martínez    |
    | Cliente Madrid | Pablo González Hernández  |
    +----------------+---------------------------+
    ```
    ---
4. Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
    ```sql
    SELECT cl.nombre_cliente, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_representante, c.nombre_ciudad AS ciudad_oficina
    FROM cliente cl
    JOIN pago p ON cl.id_cliente = p.id_cliente
    JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado
    JOIN oficina o ON e.id_oficina = o.id_oficina
    JOIN ciudad c ON o.id_ciudad = c.id_ciudad;

    +----------------+--------------------------+----------------+
    | nombre_cliente | nombre_representante     | ciudad_oficina |
    +----------------+--------------------------+----------------+
    | Cliente A      | Juan García López        | Los Angeles    |
    | Cliente B      | María Martínez Rodríguez | San Francisco  |
    | Cliente C      | Pedro Hernández Pérez    | New York       |
    | Cliente D      | Ana López Gómez          | Buffalo        |
    | Cliente E      | Carlos Díaz Sánchez      | Grenoble       |
    +----------------+--------------------------+----------------+
    ```
    ---
5. Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
    ```sql
    SELECT cl.nombre_cliente, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_representante, c.nombre_ciudad AS ciudad_oficina
    FROM cliente cl
    JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado
    JOIN oficina o ON e.id_oficina = o.id_oficina
    JOIN ciudad c ON o.id_ciudad = c.id_ciudad
    WHERE id_cliente NOT IN (SELECT id_cliente FROM pago);

    +-----------------+---------------------------+----------------+
    | nombre_cliente  | nombre_representante      | ciudad_oficina |
    +-----------------+---------------------------+----------------+
    | Cliente Nuevo 1 | Juan García López         | Los Angeles    |
    | Cliente Nuevo 2 | María Martínez Rodríguez  | San Francisco  |
    | Cliente F       | Laura Rodríguez Fernández | Lyon           |
    | Cliente G       | Javier Gómez Martínez     | Tours          |
    | Cliente H       | Sofía Pérez González      | Orléans        |
    | Cliente I       | Diego Fernández López     | Sevilla        |
    | Cliente J       | Elena Sánchez Martínez    | Málaga         |
    | Cliente Madrid  | Pablo González Hernández  | Barcelona      |
    +-----------------+---------------------------+----------------+
    ```
    ---
6. Lista la dirección de las oficinas que tengan clientes en Bogotá.
    ```sql
    SELECT d.direccion
    FROM direccion d
    JOIN oficina o ON d.id_direccion = o.id_direccion 
    JOIN ciudad c ON o.id_ciudad = c.id_ciudad
    WHERE c.nombre_ciudad = 'Bogotá';

    +-------------+
    | direccion   |
    +-------------+
    | 123 Calle 7 |
    +-------------+
    ```
    ---
7. Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
    ```sql
    SELECT cl.nombre_cliente, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_rep_ventas, c.nombre_ciudad AS ciudad_oficina_rep
    FROM cliente cl
    JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado
    JOIN oficina o ON e.id_oficina = o.id_oficina 
    JOIN ciudad c ON o.id_ciudad = c.id_ciudad;

    +----------------+---------------------------+--------------------+
    | nombre_cliente | nombre_rep_ventas         | ciudad_oficina_rep |
    +----------------+---------------------------+--------------------+
    | Cliente A      | Juan García López         | Los Angeles        |
    | Cliente B      | María Martínez Rodríguez  | San Francisco      |
    | Cliente C      | Pedro Hernández Pérez     | New York           |
    | Cliente D      | Ana López Gómez           | Buffalo            |
    | Cliente E      | Carlos Díaz Sánchez       | Grenoble           |
    | Cliente F      | Laura Rodríguez Fernández | Lyon               |
    | Cliente G      | Javier Gómez Martínez     | Tours              |
    | Cliente H      | Sofía Pérez González      | Orléans            |
    | Cliente I      | Diego Fernández López     | Sevilla            |
    | Cliente J      | Elena Sánchez Martínez    | Málaga             |
    | Cliente Madrid | Pablo González Hernández  | Barcelona          |
    +----------------+---------------------------+--------------------+
    ```
    ---
8. Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
    ```sql
    SELECT CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_empleado, CONCAT(j.nombre, ' ', j.apellido1, ' ', j.apellido2) AS nombre_jefe
    FROM empleado e
    LEFT JOIN empleado j ON e.id_jefe = j.id_empleado;

    +---------------------------+---------------------------+
    | nombre_empleado           | nombre_jefe               |
    +---------------------------+---------------------------+
    | Juan García López         | NULL                      |
    | María Martínez Rodríguez  | Juan García López         |
    | Pedro Hernández Pérez     | Juan García López         |
    | Ana López Gómez           | María Martínez Rodríguez  |
    | Carlos Díaz Sánchez       | María Martínez Rodríguez  |
    | Laura Rodríguez Fernández | Pedro Hernández Pérez     |
    | Javier Gómez Martínez     | Pedro Hernández Pérez     |
    | Sofía Pérez González      | Ana López Gómez           |
    | Diego Fernández López     | Ana López Gómez           |
    | Elena Sánchez Martínez    | Carlos Díaz Sánchez       |
    | Pablo González Hernández  | Carlos Díaz Sánchez       |
    | Isabel Gómez Rodríguez    | Laura Rodríguez Fernández |
    | Andrés Martínez Díaz      | Laura Rodríguez Fernández |
    | Luisa Hernández Sánchez   | Javier Gómez Martínez     |
    +---------------------------+---------------------------+
    ```
    ---
9. Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.
    ```sql
    SELECT CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_empleado, CONCAT(j.nombre, ' ', j.apellido1, ' ', j.apellido2) AS nombre_jefe, CONCAT(jj.nombre, ' ', jj.apellido1, ' ', jj.apellido2) AS nombre_jefe_jefe
    FROM empleado e
    LEFT JOIN empleado j ON e.id_jefe = j.id_empleado
    LEFT JOIN empleado jj ON j.id_jefe = jj.id_empleado;

    +---------------------------+---------------------------+--------------------------+
    | nombre_empleado           | nombre_jefe               | nombre_jefe_jefe         |
    +---------------------------+---------------------------+--------------------------+
    | Juan García López         | NULL                      | NULL                     |
    | María Martínez Rodríguez  | Juan García López         | NULL                     |
    | Pedro Hernández Pérez     | Juan García López         | NULL                     |
    | Ana López Gómez           | María Martínez Rodríguez  | Juan García López        |
    | Carlos Díaz Sánchez       | María Martínez Rodríguez  | Juan García López        |
    | Laura Rodríguez Fernández | Pedro Hernández Pérez     | Juan García López        |
    | Javier Gómez Martínez     | Pedro Hernández Pérez     | Juan García López        |
    | Sofía Pérez González      | Ana López Gómez           | María Martínez Rodríguez |
    | Diego Fernández López     | Ana López Gómez           | María Martínez Rodríguez |
    | Elena Sánchez Martínez    | Carlos Díaz Sánchez       | María Martínez Rodríguez |
    | Pablo González Hernández  | Carlos Díaz Sánchez       | María Martínez Rodríguez |
    | Isabel Gómez Rodríguez    | Laura Rodríguez Fernández | Pedro Hernández Pérez    |
    | Andrés Martínez Díaz      | Laura Rodríguez Fernández | Pedro Hernández Pérez    |
    | Luisa Hernández Sánchez   | Javier Gómez Martínez     | Pedro Hernández Pérez    |
    +---------------------------+---------------------------+--------------------------+
    ```
    ---
10. Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.
    ```sql
    SELECT cl.nombre_cliente, p.estado AS estado_pedido
    FROM cliente cl
    JOIN pedido p ON cl.id_cliente = p.id_cliente
    WHERE p.estado <> 'Entregado';

    +----------------+---------------+
    | nombre_cliente | estado_pedido |
    +----------------+---------------+
    | Cliente A      | En proceso    |
    | Cliente D      | Rechazado     |
    | Cliente E      | En proceso    |
    +----------------+---------------+
    ```
    ---
11. Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.
    ```sql
    SELECT c.nombre_cliente, GROUP_CONCAT(DISTINCT pr.gama) AS gamas_compradas
    FROM cliente c
    JOIN pedido p ON c.id_cliente = p.id_cliente
    JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
    JOIN producto pr ON dp.id_producto = pr.id_producto
    GROUP BY c.id_cliente;
    
    
    +----------------+-----------------+
    | nombre_cliente | gamas_compradas |
    +----------------+-----------------+
    | Cliente A      | Lujo,Orgánico   |
    | Cliente B      | Gourmet         |
    | Cliente C      | Orgánico        |
    | Cliente D      | Gourmet         |
    | Cliente E      | Saludable       |
    +----------------+-----------------+
    ```
    ---

### Consultas multitabla (Composición externa)
Resuelva todas las consultas utilizando las cláusulas LEFT JOIN, RIGHT JOIN, NATURAL LEFT JOIN y NATURAL RIGHT JOIN.

---

1. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
    ```sql
    SELECT c.nombre_cliente
    FROM cliente c
    LEFT JOIN pago p ON c.id_cliente = p.id_cliente
    WHERE p.id_transaccion IS NULL;

    +----------------+
    | nombre_cliente |
    +----------------+
    | Cliente F      |
    | Cliente G      |
    | Cliente H      |
    | Cliente I      |
    | Cliente J      |
    | Cliente Madrid |
    +----------------+
    ```
    ---
2. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.
    ```sql
    SELECT c.id_cliente, c.nombre_cliente
    FROM cliente c
    LEFT JOIN pedido p ON c.id_cliente = p.id_cliente
    WHERE p.id_pedido IS NULL;

    +------------+----------------+
    | id_cliente | nombre_cliente |
    +------------+----------------+
    |          6 | Cliente F      |
    |          7 | Cliente G      |
    |          8 | Cliente H      |
    |          9 | Cliente I      |
    |         10 | Cliente J      |
    |         11 | Cliente Madrid |
    +------------+----------------+
    ```
    ---
3. Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.
    ```sql
    SELECT c.id_cliente, c.nombre_cliente
    FROM cliente c
    LEFT JOIN pago p ON c.id_cliente = p.id_cliente
    LEFT JOIN pedido pd ON c.id_cliente = pd.id_cliente
    WHERE p.id_transaccion IS NULL AND pd.id_pedido IS NULL;

    +------------+----------------+
    | id_cliente | nombre_cliente |
    +------------+----------------+
    |          6 | Cliente F      |
    |          7 | Cliente G      |
    |          8 | Cliente H      |
    |          9 | Cliente I      |
    |         10 | Cliente J      |
    |         11 | Cliente Madrid |
    +------------+----------------+
    ```
    ---
4. Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.
    ```sql
    SELECT e.id_empleado, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_empleado
    FROM empleado e
    LEFT JOIN oficina o ON e.id_oficina = o.id_oficina
    WHERE o.id_oficina IS NULL;

    +-------------+------------------------+
    | id_empleado | nombre_empleado        |
    +-------------+------------------------+
    |          15 | Samuel Rubiano Orjuela |
    +-------------+------------------------+
    ```
    ---
5. Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.
    ```sql
    SELECT e.id_empleado, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_empleado
    FROM empleado e
    LEFT JOIN cliente c ON e.id_empleado = c.id_empleado_rep_ventas
    WHERE c.id_cliente IS NULL;

    +-------------+-------------------------+
    | id_empleado | nombre_empleado         |
    +-------------+-------------------------+
    |          12 | Isabel Gómez Rodríguez  |
    |          13 | Andrés Martínez Díaz    |
    |          14 | Luisa Hernández Sánchez |
    |          15 | Samuel Rubiano Orjuela  |
    +-------------+-------------------------+
    ```
    ---
6. Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.
    ```sql
    SELECT e.id_empleado, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_empleado, d.direccion AS direccion_oficina
    FROM empleado e
    LEFT JOIN cliente cl ON e.id_empleado = cl.id_empleado_rep_ventas
    LEFT JOIN oficina o ON e.id_oficina = o.id_oficina
    LEFT JOIN direccion d ON o.id_direccion = d.id_direccion
    WHERE cl.id_cliente IS NULL;

    +-------------+-------------------------+----------------------+
    | id_empleado | nombre_empleado         | direccion_oficina    |
    +-------------+-------------------------+----------------------+
    |          12 | Isabel Gómez Rodríguez  | 101 Carrer dels Arcs |
    |          13 | Andrés Martínez Díaz    | 123 Calle 7          |
    |          14 | Luisa Hernández Sánchez | 456 Carrera 70       |
    |          15 | Samuel Rubiano Orjuela  | NULL                 |
    +-------------+-------------------------+----------------------+
    ```
    ---
7. Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.
    ```sql
    SELECT e.id_empleado, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_empleado
    FROM empleado e
    LEFT JOIN cliente cl ON e.id_empleado = cl.id_empleado_rep_ventas
    LEFT JOIN oficina o ON e.id_oficina = o.id_oficina
    WHERE cl.id_cliente IS NULL AND o.id_oficina IS NULL;

    +-------------+------------------------+
    | id_empleado | nombre_empleado        |
    +-------------+------------------------+
    |          15 | Samuel Rubiano Orjuela |
    +-------------+------------------------+
    ```
    ---
8. Devuelve un listado de los productos que nunca han aparecido en un pedido.
    ```sql
    SELECT p.id_producto, p.nombre AS nombre_producto
    FROM producto p
    LEFT JOIN detalle_pedido dp ON p.id_producto = dp.id_producto
    WHERE dp.id_producto IS NULL;

    +-------------+------------------------------+
    | id_producto | nombre_producto              |
    +-------------+------------------------------+
    | PROD007     | Artisanal Bread Selection    |
    | PROD008     | Superfood Smoothie Mix       |
    | PROD009     | Farm Fresh Eggs Carton       |
    | PROD010     | Handcrafted Pasta Assortment |
    | PROD012     | Producto Ornamental 2        |
    +-------------+------------------------------+
    ```
    ---
9. Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre, la descripción y la imagen del producto.
    ```sql
    SELECT p.nombre AS nombre_producto, g.imagen
    FROM producto p
    LEFT JOIN gama_producto g ON p.gama = g.gama
    LEFT JOIN detalle_pedido dp ON p.id_producto = dp.id_producto
    WHERE dp.id_producto IS NULL;

    +------------------------------+-----------------------+
    | nombre_producto              | imagen                |
    +------------------------------+-----------------------+
    | Artisanal Bread Selection    | NULL                  |
    | Superfood Smoothie Mix       | NULL                  |
    | Farm Fresh Eggs Carton       | NULL                  |
    | Handcrafted Pasta Assortment | NULL                  |
    | Producto Ornamental 2        | imagen_ornamental.jpg |
    +------------------------------+-----------------------+
    ```
    ---
10. Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.
    ```sql
    SELECT e.id_oficina, o.telefono
    FROM empleado e
    LEFT JOIN oficina o ON e.id_oficina = o.id_oficina 
    LEFT JOIN cliente cl ON e.id_empleado = cl.id_empleado_rep_ventas 
    LEFT JOIN pedido p ON cl.id_cliente = p.id_cliente
    LEFT JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
    LEFT JOIN producto pr ON dp.id_producto = pr.id_producto
    WHERE pr.gama <> 'Frutales' AND e.id_empleado IS NULL;

    +------------+--------------+
    | id_oficina | telefono     |
    +------------+--------------+
    | OF001      | 123-456-7890 |
    +------------+--------------+
    ```
    ---
11. Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
    ```sql
    SELECT cl.id_cliente, cl.nombre_cliente
    FROM cliente cl
    LEFT JOIN pedido p ON cl.id_cliente = p.id_cliente
    LEFT JOIN pago pa ON cl.id_cliente = pa.id_cliente
    WHERE p.id_pedido IS NOT NULL AND pa.id_transaccion IS NULL;

    +------------+-----------------+
    | id_cliente | nombre_cliente  |
    +------------+-----------------+
    |         12 | Cliente Nuevo 1 |
    |         13 | Cliente Nuevo 2 |
    +------------+-----------------+
    ```
    ---
12. Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado. 
    ```sql
    SELECT e.id_empleado, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_empleado, j.id_empleado AS id_jefe, CONCAT(j.nombre, ' ', j.apellido1, ' ', j.apellido2) AS nombre_jefe
    FROM empleado e
    LEFT JOIN empleado j ON e.id_jefe = j.id_empleado
    LEFT JOIN cliente cl ON e.id_empleado = cl.id_empleado_rep_ventas
    WHERE cl.id_empleado_rep_ventas IS NULL;

    +-------------+-------------------------+---------+---------------------------+
    | id_empleado | nombre_empleado         | id_jefe | nombre_jefe               |
    +-------------+-------------------------+---------+---------------------------+
    |          12 | Isabel Gómez Rodríguez  |       6 | Laura Rodríguez Fernández |
    |          13 | Andrés Martínez Díaz    |       6 | Laura Rodríguez Fernández |
    |          14 | Luisa Hernández Sánchez |       7 | Javier Gómez Martínez     |
    |          15 | Samuel Rubiano Orjuela  |    NULL | NULL                      |
    +-------------+-------------------------+---------+---------------------------+
    ```
    ---

### Consultas resumen
---
1. ¿Cuántos empleados hay en la compañía?
	```sql
    SELECT COUNT(id_empleado) AS cantidad_empleados
    FROM empleado;

    +--------------------+
    | cantidad_empleados |
    +--------------------+
    |                 15 |
    +--------------------+
	```
	---
2. ¿Cuántos clientes tiene cada país?
	```sql
    SELECT p.id_pais, p.nombre_pais, COUNT(cl.id_cliente) AS cantidad_clientes
    FROM cliente cl
    JOIN ciudad c ON cl.id_ciudad = c.id_ciudad
    JOIN region r ON c.id_region = r.id_region
    JOIN pais p ON r.id_pais = p.id_pais
    GROUP BY p.nombre_pais;

    +----------------+-------------------+
    | nombre_pais    | cantidad_clientes |
    +----------------+-------------------+
    | Estados Unidos |                 7 |
    | Francia        |                 4 |
    | España         |                 2 |
    +----------------+-------------------+
	```
	---
3. ¿Cuál fue el pago medio en 2009?
	```sql
    SELECT CONCAT('$',ROUND(SUM(total) / COUNT(total), 2)) AS promedio_pagos_2009
    FROM pago
    WHERE YEAR(fecha_pago) = 2009;

    +---------------------+
    | promedio_pagos_2009 |
    +---------------------+
    | $200.00             |
    +---------------------+
	```
	---
4. ¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.
	```sql
    SELECT r.nombre_region, COUNT(id_pedido) AS cantidad_pedidos_region
    FROM pedido p
    JOIN cliente cl ON p.id_cliente = cl.id_cliente
    JOIN ciudad c ON cl.id_ciudad = c.id_ciudad
    JOIN region r ON c.id_region = r.id_region
    GROUP BY r.nombre_region
    ORDER BY cantidad_pedidos_region DESC;

    +---------------+-------------------------+
    | nombre_region | cantidad_pedidos_region |
    +---------------+-------------------------+
    | California    |                       4 |
    | Nueva York    |                       2 |
    | Isère         |                       1 |
    +---------------+-------------------------+
	```
	---
5. Calcula el precio de venta del producto más caro y más barato en una misma consulta.
	```sql
    SELECT MAX(precio_venta) AS precio_mas_caro, MIN(precio_venta) AS precio_mas_barato
    FROM producto;

    +-----------------+-------------------+
    | precio_mas_caro | precio_mas_barato |
    +-----------------+-------------------+
    |           49.99 |              7.99 |
    +-----------------+-------------------+
	```
	---
6. Calcula el número de clientes que tiene la empresa.
	```sql
    SELECT COUNT(id_cliente) AS cantidad_clientes
    FROM cliente;

    +-------------------+
    | cantidad_clientes |
    +-------------------+
    |                13 |
    +-------------------+
	```
	---
7. ¿Cuántos clientes existen con domicilio en la ciudad de Madrid?
	```sql
    SELECT COUNT(cl.id_cliente) AS cantidad_clientes_madrid
    FROM cliente cl
    JOIN ciudad c ON cl.id_ciudad = c.id_ciudad
    WHERE c.nombre_ciudad = 'Madrid';

    +--------------------------+
    | cantidad_clientes_madrid |
    +--------------------------+
    |                        1 |
    +--------------------------+
	```
	---
8. ¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?
	```sql
    SELECT COUNT(cl.id_cliente) AS cantidad_clientes_M
    FROM cliente cl
    JOIN ciudad c ON cl.id_ciudad = c.id_ciudad
    WHERE LEFT(c.nombre_ciudad, 1) = 'M';

    +---------------------+
    | cantidad_clientes_M |
    +---------------------+
    |                   2 |
    +---------------------+
	```
	---
9. Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.
	```sql
    SELECT CONCAT(nombre, ' ', apellido1, ' ', apellido2) AS nombre_rep_ventas,
    COUNT(cl.id_cliente) AS cant_clientes_encargados
    FROM empleado e
    JOIN cliente cl ON e.id_empleado = cl.id_empleado_rep_ventas
    GROUP BY nombre_rep_ventas;

    +---------------------------+--------------------------+
    | nombre_rep_ventas         | cant_clientes_encargados |
    +---------------------------+--------------------------+
    | Juan García López         |                        2 |
    | María Martínez Rodríguez  |                        2 |
    | Pedro Hernández Pérez     |                        1 |
    | Ana López Gómez           |                        1 |
    | Carlos Díaz Sánchez       |                        1 |
    | Laura Rodríguez Fernández |                        1 |
    | Javier Gómez Martínez     |                        1 |
    | Sofía Pérez González      |                        1 |
    | Diego Fernández López     |                        1 |
    | Elena Sánchez Martínez    |                        1 |
    | Pablo González Hernández  |                        1 |
    +---------------------------+--------------------------+
	```
	---
10. Calcula el número de clientes que no tiene asignado representante de ventas.
	```sql
    SELECT telefono
    FROM cliente cl
    LEFT JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado
    WHERE cl.id_empleado_rep_ventas IS NULL;

    +----------+
    | telefono |
    +----------+
    | 66061005 |
    | 66161516 |
    +----------+
	```
	---
11. Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.
	```sql
    SELECT CONCAT(cl.nombre_contacto, ' ',cl.apellido_contacto) AS nombre_cliente,
    MIN(p.fecha_pago) AS primer_pago,
    MAX(p.fecha_pago) AS ultimo_pago
    FROM cliente cl
    LEFT JOIN pago p ON cl.id_cliente = p.id_cliente
    GROUP BY cl.nombre_contacto, cl.apellido_contacto;
    
    +-------------------+-------------+-------------+
    | nombre_cliente    | primer_pago | ultimo_pago |
    +-------------------+-------------+-------------+
    | Juan Pérez        | 2024-04-19  | 2024-04-19  |
    | María Gómez       | 2024-01-18  | 2024-01-18  |
    | Pedro Rodríguez   | 2008-05-04  | 2008-05-04  |
    | Ana López         | 2009-04-18  | 2009-04-18  |
    | Carlos Martínez   | 2024-04-15  | 2024-04-15  |
    | Laura Fernández   | NULL        | NULL        |
    | Javier Gómez      | NULL        | NULL        |
    | Sofía Pérez       | NULL        | NULL        |
    | Diego Hernández   | NULL        | NULL        |
    | Elena Sánchez     | NULL        | NULL        |
    | Juan López        | NULL        | NULL        |
    | Angel Gomez       | NULL        | NULL        |
    | Claudia Rodriguez | NULL        | NULL        |
    | Juan Ramirez      | NULL        | NULL        |
    | Mario Bros        | NULL        | NULL        |
    +-------------------+-------------+-------------+
	```
	---
12. Calcula el número de productos diferentes que hay en cada uno de los pedidos. 
    ```sql
    SELECT p.id_pedido, COUNT(dp.id_producto) as cantidad_productos
    FROM pedido p
    JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
    GROUP BY p.id_pedido;

    +-----------+--------------------+
    | id_pedido | cantidad_productos |
    +-----------+--------------------+
    |         1 |                  2 |
    |         2 |                  3 |
    |         3 |                  1 |
    |         4 |                  4 |
    |         5 |                  1 |
    +-----------+--------------------+
	```
	---
13. Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.
	```sql
    SELECT p.id_pedido, SUM(dp.cantidad) as cantidad_productos
    FROM pedido p
    JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
    GROUP BY p.id_pedido;

    +-----------+--------------------+
    | id_pedido | cantidad_productos |
    +-----------+--------------------+
    |         1 |                  3 |
    |         2 |                  7 |
    |         3 |                  2 |
    |         4 |                  6 |
    |         5 |                  2 |
    +-----------+--------------------+
	```
	---
14. Devuelve un listado de los 3 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.
    ```sql
    SELECT p.id_producto, p.nombre AS nombre_producto, COUNT(dp.id_producto) AS cantidad_vendida
    FROM producto p
    JOIN detalle_pedido dp ON p.id_producto = dp.id_producto
    GROUP BY p.id_producto, nombre_producto
    ORDER BY cantidad_vendida DESC
    LIMIT 3;

    +-------------+--------------------------+------------------+
    | id_producto | nombre_producto          | cantidad_vendida |
    +-------------+--------------------------+------------------+
    | PROD001     | Organic Vegetables Box   |                3 |
    | PROD002     | Premium Steak Selection  |                2 |
    | PROD003     | Artisanal Cheese Platter |                2 |
    +-------------+--------------------------+------------------+
	```
	---
15. La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IVA y el total facturado. La base imponible se calcula sumando el coste del producto por el número de unidades vendidas de la tabla detalle_pedido. El IVA es el 21 % de la base imponible, y el total la suma de los dos campos anteriores.
	```sql
    SELECT SUM(dp.cantidad * dp.precio_unidad) AS base_imponible,
    SUM(dp.cantidad * dp.precio_unidad) * 0.21 AS IVA, 
    SUM(dp.cantidad * dp.precio_unidad) * 1.21 AS TOTAL
    FROM detalle_pedido dp;

    +----------------+----------+----------+
    | base_imponible | IVA      | TOTAL    |
    +----------------+----------+----------+
    |         657.80 | 138.1380 | 795.9380 |
    +----------------+----------+----------+
	```
	---
16. La misma información que en la pregunta anterior, pero agrupada por código de producto.
    ```sql
    SELECT dp.id_producto, SUM(dp.cantidad * dp.precio_unidad) AS base_imponible,
    0.21 * SUM(dp.cantidad * dp.precio_unidad) AS IVA, 
    SUM(dp.cantidad * dp.precio_unidad) * 1.21 AS TOTAL
    FROM detalle_pedido dp
    GROUP BY dp.id_producto;

    +-------------+----------------+---------+----------+
    | id_producto | base_imponible | IVA     | TOTAL    |
    +-------------+----------------+---------+----------+
    | PROD001     |         155.94 | 32.7474 | 188.6874 |
    | PROD002     |         199.96 | 41.9916 | 241.9516 |
    | PROD003     |         159.96 | 33.5916 | 193.5516 |
    | PROD004     |          89.97 | 18.8937 | 108.8637 |
    | PROD005     |          19.99 |  4.1979 |  24.1879 |
    | PROD006     |          31.98 |  6.7158 |  38.6958 |
    +-------------+----------------+---------+----------+
	```
	---
17. La misma información que en la pregunta anterior, pero agrupada por código de producto filtrada por los códigos que empiecen por PR.
	```sql
    SELECT dp.id_producto, SUM(dp.cantidad * dp.precio_unidad) AS base_imponible,
    0.21 * SUM(dp.cantidad * dp.precio_unidad) AS IVA, 
    SUM(dp.cantidad * dp.precio_unidad) * 1.21 AS TOTAL
    FROM detalle_pedido dp
    WHERE LEFT (dp.id_producto, 2) = 'PR'
    GROUP BY dp.id_producto;

    +-------------+----------------+---------+----------+
    | id_producto | base_imponible | IVA     | TOTAL    |
    +-------------+----------------+---------+----------+
    | PROD001     |         155.94 | 32.7474 | 188.6874 |
    | PROD002     |         199.96 | 41.9916 | 241.9516 |
    | PROD003     |         159.96 | 33.5916 | 193.5516 |
    | PROD004     |          89.97 | 18.8937 | 108.8637 |
    | PROD005     |          19.99 |  4.1979 |  24.1879 |
    | PROD006     |          31.98 |  6.7158 |  38.6958 |
    +-------------+----------------+---------+----------+
	```
	---
18. Lista las ventas totales de los productos que hayan facturado más de 150 euros. Se mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (21% IVA).
	```sql
    SELECT pr.nombre, 
    SUM(dp.cantidad) AS unidades_vendidas, 
    SUM(dp.cantidad * dp.precio_unidad) AS total_facturado,
    SUM(dp.cantidad * dp.precio_unidad) * 1.21 AS total_facturado_impuestos
    FROM detalle_pedido dp
    JOIN producto pr ON dp.id_producto = pr.id_producto
    GROUP BY pr.nombre
    HAVING SUM(dp.cantidad * dp.precio_unidad) + 0.21 * SUM(dp.cantidad * dp.precio_unidad) > 150;

    +--------------------------+-------------------+-----------------+---------------------------+
    | nombre                   | unidades_vendidas | total_facturado | total_facturado_impuestos |
    +--------------------------+-------------------+-----------------+---------------------------+
    | Organic Vegetables Box   |                 6 |          155.94 |                  188.6874 |
    | Premium Steak Selection  |                 4 |          199.96 |                  241.9516 |
    | Artisanal Cheese Platter |                 4 |          159.96 |                  193.5516 |
    +--------------------------+-------------------+-----------------+---------------------------+
	```
	---
19. Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.
	```sql
    SELECT YEAR(p.fecha_pago) AS año, SUM(p.total) AS total_pagos
    FROM pago p
    GROUP BY año;

    +------+-------------+
    | año  | total_pagos |
    +------+-------------+
    | 2024 |      580.00 |
    | 2008 |      300.00 |
    | 2009 |      200.00 |
    +------+-------------+
	```
	---

### Subconsultas
---
Con operadores básicos de comparación

1. Devuelve el nombre del cliente con mayor límite de crédito.
	```sql
    SELECT nombre_cliente
    FROM cliente
    WHERE limite_credito = (
        SELECT limite_credito
        FROM cliente
        ORDER BY limite_credito DESC
        LIMIT 1
    );

    +----------------+
    | nombre_cliente |
    +----------------+
    | Cliente J      |
    +----------------+
	```
	---

2. Devuelve el nombre del producto que tenga el precio de venta más caro.
	```sql
    SELECT nombre
    FROM producto
    WHERE precio_venta = (
        SELECT precio_venta
        FROM producto
        ORDER BY precio_venta DESC
        LIMIT 1
    );

    +-------------------------+
    | nombre_producto         |
    +-------------------------+
    | Premium Steak Selection |
    +-------------------------+
	```
	---

3. Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a partir de los datos de la tabla detalle_pedido)
	```sql
    SELECT nombre AS nombre_producto
    FROM producto
    WHERE id_producto = (
        SELECT id_producto
        FROM detalle_pedido
        GROUP BY id_producto
        ORDER BY SUM(cantidad) DESC
        LIMIT 1
    );

    +------------------------+
    | nombre_producto        |
    +------------------------+
    | Organic Vegetables Box |
    +------------------------+
	```
	---

4. Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).
	```sql
    SELECT c.nombre_cliente
    FROM cliente c
    WHERE c.limite_credito > (
        SELECT p.total
        FROM pago p
        WHERE c.id_cliente = p.id_cliente
    );

    +----------------+
    | nombre_cliente |
    +----------------+
    | Cliente A      |
    | Cliente B      |
    | Cliente C      |
    | Cliente D      |
    | Cliente E      |
    +----------------+
	```
	---

5. Devuelve el producto que más unidades tiene en stock.
	```sql
    SELECT nombre AS nombre_producto
    FROM producto
    WHERE id_producto = (
        SELECT id_producto
        FROM producto
        ORDER BY cantidad_en_stock DESC
        LIMIT 1
    );

    +------------------------+
    | nombre_producto        |
    +------------------------+
    | Farm Fresh Eggs Carton |
    +------------------------+
	```
	---

6. Devuelve el producto que menos unidades tiene en stock.
	```sql
    SELECT nombre AS nombre_producto
    FROM producto
    WHERE id_producto = (
        SELECT id_producto
        FROM producto
        ORDER BY cantidad_en_stock ASC
        LIMIT 1
    );

    +--------------------------+
    | nombre_producto          |
    +--------------------------+
    | Artisanal Cheese Platter |
    +--------------------------+
	```
	---

7. Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Ana López. 
	```sql
    SELECT nombre, CONCAT(apellido1, ' ', apellido2) AS apellidos, email
    FROM empleado
    WHERE id_empleado = (
        SELECT id_jefe
        FROM empleado
        WHERE nombre = "Ana" AND apellido1 = "López"
    );

    +--------+--------------------+----------------------------+
    | nombre | apellidos          | email                      |
    +--------+--------------------+----------------------------+
    | María  | Martínez Rodríguez | maria.martinez@example.com |
    +--------+--------------------+----------------------------+
	```
	---


Subconsultas con ALL y ANY

8. Devuelve el nombre del cliente con mayor límite de crédito.
	```sql
    SELECT nombre_cliente
    FROM cliente 
    WHERE limite_credito >= ALL (
        SELECT limite_credito
        FROM cliente
    );

    +----------------+
    | nombre_cliente |
    +----------------+
    | Cliente J      |
    +----------------+
	```
	---

9. Devuelve el nombre del producto que tenga el precio de venta más caro.
	```sql
        SELECT nombre AS nombre_producto
    FROM producto 
    WHERE precio_venta >= ALL (
        SELECT precio_venta
        FROM producto
    );

    +-------------------------+
    | nombre_producto         |
    +-------------------------+
    | Premium Steak Selection |
    +-------------------------+
	```
	---

10. Devuelve el producto que menos unidades tiene en stock. 
	```sql
        SELECT nombre AS nombre_producto
    FROM producto 
    WHERE cantidad_en_stock <= ALL (
        SELECT cantidad_en_stock
        FROM producto
    );

    +--------------------------+
    | nombre_producto          |
    +--------------------------+
    | Artisanal Cheese Platter |
    +--------------------------+
	```
	---


Subconsultas con IN y NOT IN

11. Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún cliente.
	```sql
        SELECT nombre, apellido1, puesto
    FROM empleado 
    WHERE id_empleado NOT IN (
        SELECT id_empleado_rep_ventas
        FROM cliente
        WHERE id_empleado_rep_ventas IS NOT NULL
    );

    +---------+------------+-----------+
    | nombre  | apellido1  | puesto    |
    +---------+------------+-----------+
    | Isabel  | Gómez      | Asistente |
    | Andrés  | Martínez   | Asistente |
    | Luisa   | Hernández  | Asistente |
    | Samuel  | Rubiano    | CEO       |
    +---------+------------+-----------+
	```
	---

12. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
	```sql
        SELECT nombre_cliente
    FROM cliente  
    WHERE id_cliente NOT IN (
        SELECT id_cliente
        FROM pago
    );

    +-----------------+
    | nombre_cliente  |
    +-----------------+
    | Cliente F       |
    | Cliente G       |
    | Cliente H       |
    | Cliente I       |
    | Cliente J       |
    | Cliente Madrid  |
    | Cliente Nuevo 1 |
    | Cliente Nuevo 2 |
    | Cliente Nuevo 3 |
    | Cliente Nuevo 4 |
    +-----------------+
	```
	---

13. Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
	```sql
    SELECT nombre_cliente
    FROM cliente  
    WHERE id_cliente IN (
        SELECT id_cliente
        FROM pago
    );

    +----------------+
    | nombre_cliente |
    +----------------+
    | Cliente A      |
    | Cliente B      |
    | Cliente C      |
    | Cliente D      |
    | Cliente E      |
    +----------------+
	```
	---

14. Devuelve un listado de los productos que nunca han aparecido en un pedido.
	```sql
    SELECT nombre
    FROM producto  
    WHERE id_producto NOT IN (
        SELECT id_producto
        FROM detalle_pedido
    );

    +------------------------------+
    | nombre                       |
    +------------------------------+
    | Artisanal Bread Selection    |
    | Superfood Smoothie Mix       |
    | Farm Fresh Eggs Carton       |
    | Handcrafted Pasta Assortment |
    | Producto Ornamental          |
    +------------------------------+
	```
	---

15. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
	```sql
        SELECT e.nombre, CONCAT(e.apellido1, ' ', e.apellido2) AS apellidos, o.telefono AS telefono_oficina
    FROM empleado e
    JOIN oficina o ON e.id_oficina = o.id_oficina
    WHERE e.id_empleado NOT IN (
        SELECT DISTINCT cl.id_empleado_rep_ventas
        FROM cliente cl
        WHERE id_empleado_rep_ventas IS NOT NULL
    );

    +---------+---------------------+------------------+
    | nombre  | apellidos           | telefono_oficina |
    +---------+---------------------+------------------+
    | Isabel  | Gómez Rodríguez     | 888-999-0000     |
    | Andrés  | Martínez Díaz       | 121-314-1516     |
    | Luisa   | Hernández Sánchez   | 161-718-1920     |
    +---------+---------------------+------------------+
	```
	---

16. Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Clásico.
	```sql
    SELECT o.id_oficina, o.telefono AS telefono_oficina
    FROM oficina o
    WHERE o.id_oficina NOT IN (
        SELECT e.id_oficina
        FROM empleado e
        WHERE e.id_oficina IS NOT NULL AND 
        e.id_empleado NOT IN (
            SELECT cl.id_empleado_rep_ventas
            FROM cliente cl 
            JOIN pedido p ON cl.id_cliente = p.id_cliente
            JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
            JOIN producto pr ON dp.id_producto = pr.id_producto
            WHERE pr.gama = "Clásico"
        )
    );

    +------------+------------------+
    | id_oficina | telefono_oficina |
    +------------+------------------+
    | OF001      | 123-456-7890     |
    | OF002      | 987-654-3210     |
    | OF003      | 111-222-3333     |
    | OF004      | 444-555-6666     |
    +------------+------------------+
	```
	---

17. Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.
	```sql
    SELECT cl.id_cliente, cl.nombre_cliente
    FROM cliente cl
    WHERE cl.id_cliente IN (
        SELECT p.id_cliente
        FROM pedido p
    ) AND cl.id_cliente NOT IN (
        SELECT pg.id_cliente
        FROM pago pg
    );

    +------------+-----------------+
    | id_cliente | nombre_cliente  |
    +------------+-----------------+
    |         12 | Cliente Nuevo 1 |
    |         13 | Cliente Nuevo 2 |
    +------------+-----------------+
	```
	---


Subconsultas con EXISTS y NOT EXISTS

18. Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.
	```sql
        SELECT cl.id_cliente, cl.nombre_cliente
    FROM cliente cl
    WHERE NOT EXISTS (
        SELECT 1
        FROM pago p
        WHERE p.id_cliente = cl.id_cliente
    );

    +------------+-----------------+
    | id_cliente | nombre_cliente  |
    +------------+-----------------+
    |          6 | Cliente F       |
    |          7 | Cliente G       |
    |          8 | Cliente H       |
    |          9 | Cliente I       |
    |         10 | Cliente J       |
    |         11 | Cliente Madrid  |
    |         12 | Cliente Nuevo 1 |
    |         13 | Cliente Nuevo 2 |
    |         14 | Cliente Nuevo 3 |
    |         15 | Cliente Nuevo 4 |
    +------------+-----------------+
	```
	---

19. Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
	```sql
        
    SELECT cl.id_cliente, cl.nombre_cliente
    FROM cliente cl
    WHERE EXISTS (
        SELECT 1
        FROM pago p
        WHERE p.id_cliente = cl.id_cliente
    );

    +------------+----------------+
    | id_cliente | nombre_cliente |
    +------------+----------------+
    |          1 | Cliente A      |
    |          2 | Cliente B      |
    |          3 | Cliente C      |
    |          4 | Cliente D      |
    |          5 | Cliente E      |
    +------------+----------------+
	```
	---

20. Devuelve un listado de los productos que nunca han aparecido en un pedido.
	```sql
    SELECT pr.id_producto, pr.nombre AS nombre_producto
    FROM producto pr
    WHERE NOT EXISTS (
        SELECT 1
        FROM detalle_pedido dp
        WHERE pr.id_producto = dp. id_producto
    );

    +-------------+------------------------------+
    | id_producto | nombre_producto              |
    +-------------+------------------------------+
    | PROD007     | Artisanal Bread Selection    |
    | PROD008     | Superfood Smoothie Mix       |
    | PROD009     | Farm Fresh Eggs Carton       |
    | PROD010     | Handcrafted Pasta Assortment |
    | PROD012     | Producto Ornamental          |
    +-------------+------------------------------+
	```
	---

21. Devuelve un listado de los productos que han aparecido en un pedido alguna vez.
	```sql
    SELECT pr.id_producto, pr.nombre AS nombre_producto
    FROM producto pr
    WHERE EXISTS (
        SELECT 1
        FROM detalle_pedido dp
        WHERE pr.id_producto = dp. id_producto
    );

    +-------------+------------------------------+
    | id_producto | nombre_producto              |
    +-------------+------------------------------+
    | PROD001     | Organic Vegetables Box       |
    | PROD002     | Premium Steak Selection      |
    | PROD003     | Artisanal Cheese Platter     |
    | PROD004     | Organic Fruit Basket         |
    | PROD005     | Gourmet Chocolate Assortment |
    | PROD006     | Fresh Squeezed Juice Pack    |
    +-------------+------------------------------+
	```
	---

### Consultas variadas
---

1. Devuelve el listado de clientes indicando el nombre del cliente y cuántos pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.
	```sql
    SELECT cl.nombre_cliente, COUNT(id_pedido) AS cantidad_pedidos
    FROM cliente cl
    LEFT JOIN pedido p ON cl.id_cliente = p.id_cliente
    GROUP BY cl.nombre_cliente;

    +-----------------+------------------+
    | nombre_cliente  | cantidad_pedidos |
    +-----------------+------------------+
    | Cliente A       |                1 |
    | Cliente B       |                1 |
    | Cliente C       |                1 |
    | Cliente D       |                1 |
    | Cliente E       |                1 |
    | Cliente F       |                0 |
    | Cliente G       |                0 |
    | Cliente H       |                0 |
    | Cliente I       |                0 |
    | Cliente J       |                0 |
    | Cliente Madrid  |                0 |
    | Cliente Nuevo 1 |                1 |
    | Cliente Nuevo 2 |                1 |
    | Cliente Nuevo 3 |                0 |
    | Cliente Nuevo 4 |                0 |
    +-----------------+------------------+
	```
	---
2. Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.
	```sql
    SELECT cl.nombre_cliente, SUM(p.total) AS total_pagado
    FROM cliente cl
    LEFT JOIN pago p ON cl.id_cliente = p.id_cliente
    GROUP BY cl.nombre_cliente;

    +-----------------+--------------+
    | nombre_cliente  | total_pagado |
    +-----------------+--------------+
    | Cliente A       |       250.00 |
    | Cliente B       |       150.00 |
    | Cliente C       |       300.00 |
    | Cliente D       |       200.00 |
    | Cliente E       |       180.00 |
    | Cliente F       |         NULL |
    | Cliente G       |         NULL |
    | Cliente H       |         NULL |
    | Cliente I       |         NULL |
    | Cliente J       |         NULL |
    | Cliente Madrid  |         NULL |
    | Cliente Nuevo 1 |         NULL |
    | Cliente Nuevo 2 |         NULL |
    | Cliente Nuevo 3 |         NULL |
    | Cliente Nuevo 4 |         NULL |
    +-----------------+--------------+
	```
	---
3. Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor.
	```sql
    SELECT cl.nombre_cliente
    FROM cliente cl
    LEFT JOIN pedido p ON cl.id_cliente = p.id_cliente
    WHERE YEAR(p.fecha_pedido) = 2008
    ORDER BY cl.nombre_cliente ASC;

    +----------------+
    | nombre_cliente |
    +----------------+
    | Cliente C      |
    +----------------+
	```
	---
4. Devuelve el nombre del cliente, el nombre y primer apellido de su representante de ventas y el número de teléfono de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.
	```sql
    SELECT cl.nombre_cliente, 
    CONCAT(e.nombre, ' ', e.apellido1) AS nombre_rep_ventas,
    o.telefono	
    FROM cliente cl
    LEFT JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado
    LEFT JOIN oficina o ON e.id_oficina = o.id_oficina
    LEFT JOIN pago p ON cl.id_cliente = p.id_cliente
    WHERE p.id_transaccion IS NULL;

    +-----------------+-------------------+--------------+
    | nombre_cliente  | nombre_rep_ventas | telefono     |
    +-----------------+-------------------+--------------+
    | Cliente F       | Laura Rodríguez   | 000-111-2222 |
    | Cliente G       | Javier Gómez      | 333-444-5555 |
    | Cliente H       | Sofía Pérez       | 666-777-8888 |
    | Cliente I       | Diego Fernández   | 999-000-1111 |
    | Cliente J       | Elena Sánchez     | 222-333-4444 |
    | Cliente Madrid  | Pablo González    | 555-666-7777 |
    | Cliente Nuevo 1 | Juan García       | 123-456-7890 |
    | Cliente Nuevo 2 | María Martínez    | 987-654-3210 |
    | Cliente Nuevo 3 | NULL              | NULL         |
    | Cliente Nuevo 4 | NULL              | NULL         |
    +-----------------+-------------------+--------------+
	```
	---
5. Devuelve el listado de clientes donde aparezca el nombre del cliente, el nombre y primer apellido de su representante de ventas y la ciudad donde está su oficina.
	```sql
    SELECT cl.nombre_cliente, 
    CONCAT(e.nombre, ' ', e.apellido1) AS nombre_rep_ventas,
    c.nombre_ciudad	
    FROM cliente cl
    LEFT JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado
    LEFT JOIN oficina o ON e.id_oficina = o.id_oficina
    LEFT JOIN ciudad c ON o.id_ciudad = c.id_ciudad;
    
    +-----------------+-------------------+---------------+
    | nombre_cliente  | nombre_rep_ventas | nombre_ciudad |
    +-----------------+-------------------+---------------+
    | Cliente A       | Juan García       | Los Angeles   |
    | Cliente B       | María Martínez    | San Francisco |
    | Cliente C       | Pedro Hernández   | New York      |
    | Cliente D       | Ana López         | Buffalo       |
    | Cliente E       | Carlos Díaz       | Grenoble      |
    | Cliente F       | Laura Rodríguez   | Lyon          |
    | Cliente G       | Javier Gómez      | Tours         |
    | Cliente H       | Sofía Pérez       | Orléans       |
    | Cliente I       | Diego Fernández   | Sevilla       |
    | Cliente J       | Elena Sánchez     | Málaga        |
    | Cliente Madrid  | Pablo González    | Barcelona     |
    | Cliente Nuevo 1 | Juan García       | Los Angeles   |
    | Cliente Nuevo 2 | María Martínez    | San Francisco |
    | Cliente Nuevo 3 | NULL              | NULL          |
    | Cliente Nuevo 4 | NULL              | NULL          |
    +-----------------+-------------------+---------------+
	```
	---
6. Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.
	```sql
    SELECT CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_rep_ventas,
    e.puesto, o.telefono	
    FROM empleado e
    LEFT JOIN oficina o ON e.id_oficina = o.id_oficina
    LEFT JOIN cliente cl ON e.id_empleado = cl.id_empleado_rep_ventas
    WHERE cl.id_cliente IS NULL;

    +-------------------------+-----------+--------------+
    | nombre_rep_ventas       | puesto    | telefono     |
    +-------------------------+-----------+--------------+
    | Isabel Gómez Rodríguez  | Asistente | 888-999-0000 |
    | Andrés Martínez Díaz    | Asistente | 121-314-1516 |
    | Luisa Hernández Sánchez | Asistente | 161-718-1920 |
    | Samuel Rubiano Orjuela  | CEO       | NULL         |
    +-------------------------+-----------+--------------+
	```
	---
7. Devuelve un listado indicando todas las ciudades donde hay oficinas y el número de empleados que tiene.
	```sql
    SELECT c.nombre_ciudad, COUNT(e.id_empleado) AS cant_empleados
    FROM ciudad c
    JOIN oficina o ON c.id_ciudad = o.id_ciudad
    JOIN empleado e ON o.id_oficina = e.id_oficina
    GROUP BY c.nombre_ciudad;

    +---------------+----------------+
    | nombre_ciudad | cant_empleados |
    +---------------+----------------+
    | Los Angeles   |              1 |
    | San Francisco |              1 |
    | New York      |              1 |
    | Buffalo       |              1 |
    | Grenoble      |              1 |
    | Lyon          |              1 |
    | Tours         |              1 |
    | Orléans       |              1 |
    | Sevilla       |              1 |
    | Málaga        |              1 |
    | Barcelona     |              1 |
    | Girona        |              1 |
    | Bogotá        |              1 |
    | Medellín      |              1 |
    +---------------+----------------+
	```
	---

### Vistas
---

Debe generar 10 vistas por cada Base de datos (Las vistas pueden ser tomadas de los comandos sql ya desarrollados)

1. Devuelve un listado de los productos que nunca han aparecido en un pedido.
	```sql
    CREATE VIEW productos_no_pedidos AS 
    SELECT pr.id_producto, pr.nombre AS nombre_producto
    FROM producto pr
    WHERE NOT EXISTS (
        SELECT 1
        FROM detalle_pedido dp
        WHERE pr.id_producto = dp. id_producto
    );
    SELECT * FROM productos_no_pedidos;

    +-------------+------------------------------+
    | id_producto | nombre_producto              |
    +-------------+------------------------------+
    | PROD007     | Artisanal Bread Selection    |
    | PROD008     | Superfood Smoothie Mix       |
    | PROD009     | Farm Fresh Eggs Carton       |
    | PROD010     | Handcrafted Pasta Assortment |
    | PROD012     | Producto Ornamental          |
    +-------------+------------------------------+
	```
	---

2. Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
	```sql
    CREATE VIEW clientes_pagos AS 
    SELECT cl.nombre_cliente, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_rep_ventas
    FROM cliente cl
    JOIN pago p ON cl.id_cliente = p.id_cliente
    JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado;

    SELECT * FROM clientes_pagos;

    +----------------+--------------------------+
    | nombre_cliente | nombre_rep_ventas        |
    +----------------+--------------------------+
    | Cliente A      | Juan García López        |
    | Cliente B      | María Martínez Rodríguez |
    | Cliente C      | Pedro Hernández Pérez    |
    | Cliente D      | Ana López Gómez          |
    | Cliente E      | Carlos Díaz Sánchez      |
    +----------------+--------------------------+
	```
	---
    
3. Calcula el precio de venta del producto más caro y más barato en una misma consulta.
	```sql
    CREATE VIEW precio_productos AS 
    SELECT MAX(precio_venta) AS precio_mas_caro, MIN(precio_venta) AS precio_mas_barato
    FROM producto;

    SELECT * FROM precio_productos;

    +-----------------+-------------------+
    | precio_mas_caro | precio_mas_barato |
    +-----------------+-------------------+
    |           49.99 |              7.99 |
    +-----------------+-------------------+
	```
	---
    
4. Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.
	```sql
    CREATE VIEW clientes_si_pago AS 
    SELECT cl.id_cliente, cl.nombre_cliente
    FROM cliente cl
    WHERE EXISTS (
        SELECT 1
        FROM pago p
        WHERE p.id_cliente = cl.id_cliente
    );

    SELECT * FROM clientes_si_pago;

    +------------+----------------+
    | id_cliente | nombre_cliente |
    +------------+----------------+
    |          1 | Cliente A      |
    |          2 | Cliente B      |
    |          3 | Cliente C      |
    |          4 | Cliente D      |
    |          5 | Cliente E      |
    +------------+----------------+
	```
	---
    
5. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
	```sql
    CREATE VIEW pedidos_no_a_tiempo AS 
    SELECT p.id_pedido, p.id_cliente, p.fecha_esperada, p.fecha_entrega
    FROM pedido p
    WHERE p.fecha_esperada < p.fecha_entrega;

    SELECT * FROM pedidos_no_a_tiempo;

    +-----------+------------+----------------+---------------+
    | id_pedido | id_cliente | fecha_esperada | fecha_entrega |
    +-----------+------------+----------------+---------------+
    |         6 |         12 | 2024-02-15     | 2024-02-16    |
    +-----------+------------+----------------+---------------+
	```
	---
    
6. Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado. 
	```sql
    CREATE VIEW empleados_sin_clientes AS 
    SELECT e.id_empleado, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_empleado, j.id_empleado AS id_jefe, CONCAT(j.nombre, ' ', j.apellido1, ' ', j.apellido2) AS nombre_jefe
    FROM empleado e
    LEFT JOIN empleado j ON e.id_jefe = j.id_empleado
    LEFT JOIN cliente cl ON e.id_empleado = cl.id_empleado_rep_ventas
    WHERE cl.id_empleado_rep_ventas IS NULL;

    SELECT * FROM empleados_sin_clientes;

    +-------------+-------------------------+---------+---------------------------+
    | id_empleado | nombre_empleado         | id_jefe | nombre_jefe               |
    +-------------+-------------------------+---------+---------------------------+
    |          12 | Isabel Gómez Rodríguez  |       6 | Laura Rodríguez Fernández |
    |          13 | Andrés Martínez Díaz    |       6 | Laura Rodríguez Fernández |
    |          14 | Luisa Hernández Sánchez |       7 | Javier Gómez Martínez     |
    |          15 | Samuel Rubiano Orjuela  |    NULL | NULL                      |
    +-------------+-------------------------+---------+---------------------------+
	```
	---
    
7. Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.
	```sql
    CREATE VIEW pedidos_enero AS 
    SELECT p.id_pedido, p.id_cliente, p.fecha_pedido, p.fecha_esperada, fecha_entrega, p.estado
    FROM pedido p
    WHERE p.estado = 'Entregado' AND MONTH(p.fecha_entrega
    ) = '01';

    SELECT * FROM pedidos_enero;

    +-----------+------------+--------------+----------------+---------------+-----------+
    | id_pedido | id_cliente | fecha_pedido | fecha_esperada | fecha_entrega | estado    |
    +-----------+------------+--------------+----------------+---------------+-----------+
    |         2 |          2 | 2024-01-18   | 2024-01-24     | 2024-01-22    | Entregado |
    +-----------+------------+--------------+----------------+---------------+-----------+
	```
	---
    
8. Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
	```sql
    CREATE VIEW clientes_no_pago AS 
    SELECT cl.nombre_cliente, CONCAT(e.nombre, ' ', e.apellido1, ' ', e.apellido2) AS nombre_representante, c.nombre_ciudad AS ciudad_oficina
    FROM cliente cl
    JOIN empleado e ON cl.id_empleado_rep_ventas = e.id_empleado
    JOIN oficina o ON e.id_oficina = o.id_oficina
    JOIN ciudad c ON o.id_ciudad = c.id_ciudad
    WHERE id_cliente NOT IN (SELECT id_cliente FROM pago);

    SELECT * FROM clientes_no_pago;

    +-----------------+---------------------------+----------------+
    | nombre_cliente  | nombre_representante      | ciudad_oficina |
    +-----------------+---------------------------+----------------+
    | Cliente Nuevo 1 | Juan García López         | Los Angeles    |
    | Cliente Nuevo 2 | María Martínez Rodríguez  | San Francisco  |
    | Cliente F       | Laura Rodríguez Fernández | Lyon           |
    | Cliente G       | Javier Gómez Martínez     | Tours          |
    | Cliente H       | Sofía Pérez González      | Orléans        |
    | Cliente I       | Diego Fernández López     | Sevilla        |
    | Cliente J       | Elena Sánchez Martínez    | Málaga         |
    | Cliente Madrid  | Pablo González Hernández  | Barcelona      |
    +-----------------+---------------------------+----------------+
	```
	---
    
9. Devuelve un listado con el nombre de los todos los clientes españoles.
	```sql
    CREATE VIEW clientes_españa AS 
    SELECT cl.nombre_cliente
    FROM cliente cl
    JOIN ciudad c ON cl.id_ciudad = c.id_ciudad
    JOIN region r ON c.id_region = r.id_region
    JOIN pais p ON r.id_pais = p.id_pais
    WHERE p.nombre_pais = "España";

    SELECT * FROM clientes_españa;

    +----------------+
    | nombre_cliente |
    +----------------+
    | Cliente I      |
    | Cliente J      |
    +----------------+
	```
	---
    
10. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.
	```sql
    CREATE VIEW clientes_madrid AS 
    SELECT cl.id_cliente, cl.nombre_cliente, cl.telefono, cl.id_ciudad, c.nombre_ciudad, cl.id_empleado_rep_ventas
    FROM cliente cl
    JOIN ciudad c ON cl.id_ciudad = c.id_ciudad
    WHERE c.nombre_ciudad = 'Madrid' AND cl.id_empleado_rep_ventas IN (11, 30); 

    SELECT * FROM clientes_madrid;

    +------------+----------------+-----------+-----------+---------------+------------------------+
    | id_cliente | nombre_cliente | telefono  | id_ciudad | nombre_ciudad | id_empleado_rep_ventas |
    +------------+----------------+-----------+-----------+---------------+------------------------+
    |         11 | Cliente Madrid | 123456789 |        15 | Madrid        |                     11 |
    +------------+----------------+-----------+-----------+---------------+------------------------+
	```
	---
    
### Procedimientos almacenados

1. Procedimiento para agregar un cliente
	```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS CrearCliente;
    CREATE PROCEDURE CrearCliente(
        IN p_id_cliente INT(11),
        IN p_nombre_cliente VARCHAR(50),
        IN p_nombre_contacto VARCHAR(30),
        IN p_apellido_contacto VARCHAR(30),
        IN p_telefono VARCHAR(15),
        IN p_fax VARCHAR(15),
        IN p_id_direccion INT(5),
        IN p_id_ciudad INT(5),
        IN p_id_empleado_rep_ventas INT(11),
        IN p_limite_credito DECIMAL(15,2)
    )
    BEGIN
        INSERT INTO cliente (id_cliente, nombre_cliente, nombre_contacto, apellido_contacto, telefono, fax, id_direccion, id_ciudad, id_empleado_rep_ventas, limite_credito) 
        VALUES (p_id_cliente, p_nombre_cliente, p_nombre_contacto, p_apellido_contacto, p_telefono, p_fax, p_id_direccion, p_id_ciudad, p_id_empleado_rep_ventas, p_limite_credito);
        
        SELECT *
        FROM cliente
        WHERE id_cliente = p_id_cliente; 
    END $$
    DELIMITER ; $$

    CALL CrearCliente(16, 'Cliente Nuevo 5', 'Karen', 'Camacho', '111-111-1111', '222-222-2222', 1, 1, 1, 1000.00);

    +------------+-----------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
    | id_cliente | nombre_cliente  | nombre_contacto | apellido_contacto | telefono     | fax          | id_direccion | id_ciudad | id_empleado_rep_ventas | limite_credito |
    +------------+-----------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
    |         16 | Cliente Nuevo 5 | Karen           | Camacho           | 111-111-1111 | 222-222-2222 |            1 |         1 |                      1 |        1000.00 |
    +------------+-----------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
	```
	---
2. Procedimiento para actualizar un cliente
	```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS ActualizarCliente;
    CREATE PROCEDURE ActualizarCliente (
        IN p_id_cliente INT,
        IN p_nombre_cliente VARCHAR(50),
        IN p_nombre_contacto VARCHAR(30),
        IN p_apellido_contacto VARCHAR(30),
        IN p_telefono VARCHAR(15),
        IN p_fax VARCHAR(15),
        IN p_id_direccion INT,
        IN p_id_ciudad INT,
        IN p_id_empleado_rep_ventas INT,
        IN p_limite_credito DECIMAL(15,2)
    )
    BEGIN
        UPDATE cliente
        SET nombre_cliente = p_nombre_cliente,
            nombre_contacto = p_nombre_contacto,
            apellido_contacto = p_apellido_contacto,
            telefono = p_telefono,
            fax = p_fax,
            id_direccion = p_id_direccion,
            id_ciudad = p_id_ciudad,
            id_empleado_rep_ventas = p_id_empleado_rep_ventas,
            limite_credito = p_limite_credito
        WHERE id_cliente = p_id_cliente;

        SELECT *
        FROM cliente
        WHERE id_cliente = p_id_cliente; 
    END $$
    DELIMITER ; $$

    CALL ActualizarCliente(16, 'Cliente Actualizado', 'Liseth', 'Mejia', '777-777-7777', '333-333-3333', 1, 1, 4, 1000.00);

    +------------+---------------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
    | id_cliente | nombre_cliente      | nombre_contacto | apellido_contacto | telefono     | fax          | id_direccion | id_ciudad | id_empleado_rep_ventas | limite_credito |
    +------------+---------------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
    |         16 | Cliente Actualizado | Liseth          | Mejia             | 777-777-7777 | 333-333-3333 |            1 |         1 |                      4 |        1000.00 |
    +------------+---------------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
	```
	---
3. Procedimiento para eliminar un cliente
	```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS EliminarCliente;
    CREATE PROCEDURE EliminarCliente (
        IN p_id_cliente INT
    )
    BEGIN
        DECLARE cliente_eliminado INT;

        DELETE FROM cliente
        WHERE id_cliente = p_id_cliente;

        SELECT COUNT(id_cliente)
        INTO cliente_eliminado
        FROM cliente
        WHERE id_cliente = p_id_cliente;

        IF cliente_eliminado = 0 THEN
            SELECT CONCAT('Se eliminó el cliente de id: ', p_id_cliente) AS Mensaje;
        ELSE
            SELECT 'No se pudo eliminar el cliente' AS Mensaje;
        END IF;
    END $$
    DELIMITER ; $$

    CALL EliminarCliente(16);

    +---------------------------------+
    | Mensaje                         |
    +---------------------------------+
    | Se eliminó el cliente de id: 16 |
    +---------------------------------+
	```
	---
4. Procedimiento para buscar un cliente por ID
	```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS BuscarClientePorID;
    CREATE PROCEDURE BuscarClientePorID (
        IN p_id_cliente INT
    )
    BEGIN
        SELECT *
        FROM cliente
        WHERE id_cliente = p_id_cliente;
    END $$
    DELIMITER ; $$

    CALL BuscarClientePorID(15);

    +------------+-----------------+-----------------+-------------------+----------+-----------+--------------+-----------+------------------------+----------------+
    | id_cliente | nombre_cliente  | nombre_contacto | apellido_contacto | telefono | fax       | id_direccion | id_ciudad | id_empleado_rep_ventas | limite_credito |
    +------------+-----------------+-----------------+-------------------+----------+-----------+--------------+-----------+------------------------+----------------+
    |         15 | Cliente Nuevo 4 | Mario           | Bros              | 66161516 | 516156115 |            1 |         1 |                   NULL |           2.00 |
    +------------+-----------------+-----------------+-------------------+----------+-----------+--------------+-----------+------------------------+----------------+
	```
	---
5. Procedimiento para buscar un cliente por nombre
	```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS BuscarClientePorNombre;
    CREATE PROCEDURE BuscarClientePorNombre (
        IN p_nombre_cliente VARCHAR(50)
    )
    BEGIN
        SELECT *
        FROM cliente
        WHERE nombre_cliente = p_nombre_cliente;
    END $$
    DELIMITER ; $$

    CALL BuscarClientePorNombre("Cliente Nuevo 4");

    +------------+-----------------+-----------------+-------------------+----------+-----------+--------------+-----------+------------------------+----------------+
    | id_cliente | nombre_cliente  | nombre_contacto | apellido_contacto | telefono | fax       | id_direccion | id_ciudad | id_empleado_rep_ventas | limite_credito |
    +------------+-----------------+-----------------+-------------------+----------+-----------+--------------+-----------+------------------------+----------------+
    |         15 | Cliente Nuevo 4 | Mario           | Bros              | 66161516 | 516156115 |            1 |         1 |                   NULL |           2.00 |
    +------------+-----------------+-----------------+-------------------+----------+-----------+--------------+-----------+------------------------+----------------+
	```
	---
6. Procedimiento para buscar un cliente por ciudad
	```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS BuscarClientePorCiudad;

    CREATE PROCEDURE BuscarClientePorCiudad (
        IN p_id_ciudad INT
    )
    BEGIN
        SELECT *
        FROM cliente
        WHERE id_ciudad = p_id_ciudad;
    END $$
    DELIMITER ; $$

    CALL BuscarClientePorCiudad(1);

    +------------+-----------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
    | id_cliente | nombre_cliente  | nombre_contacto | apellido_contacto | telefono     | fax          | id_direccion | id_ciudad | id_empleado_rep_ventas | limite_credito |
    +------------+-----------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
    |          1 | Cliente A       | Juan            | Pérez             | 123-456-7890 | 123-456-7890 |            1 |         1 |                      1 |       10000.00 |
    |         12 | Cliente Nuevo 1 | Angel           | Gomez             | 123456789    | 987654321    |         NULL |         1 |                      1 |        1000.00 |
    |         15 | Cliente Nuevo 4 | Mario           | Bros              | 66161516     | 516156115    |            1 |         1 |                   NULL |           2.00 |
    +------------+-----------------+-----------------+-------------------+--------------+--------------+--------------+-----------+------------------------+----------------+
	```
	---
7. Procedimiento para buscar un cliente por límite de crédito
	```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS BuscarClientePorLimiteCredito;
    CREATE PROCEDURE BuscarClientePorLimiteCredito (
        IN p_limite DECIMAL(15,2)
    )
    BEGIN
        SELECT *
        FROM cliente
        WHERE limite_credito = p_limite;
    END $$
    DELIMITER ; $$

    CALL BuscarClientePorLimiteCredito(1000.00);

    +------------+-----------------+-----------------+-------------------+-----------+-----------+--------------+-----------+------------------------+----------------+
    | id_cliente | nombre_cliente  | nombre_contacto | apellido_contacto | telefono  | fax       | id_direccion | id_ciudad | id_empleado_rep_ventas | limite_credito |
    +------------+-----------------+-----------------+-------------------+-----------+-----------+--------------+-----------+------------------------+----------------+
    |         12 | Cliente Nuevo 1 | Angel           | Gomez             | 123456789 | 987654321 |         NULL |         1 |                      1 |        1000.00 |
    +------------+-----------------+-----------------+-------------------+-----------+-----------+--------------+-----------+------------------------+----------------+
	```
	---
8. Procedimiento para obtener todos los clientes
    ```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS ObtenerIDClientes;
    CREATE PROCEDURE ObtenerIDClientes ()
    BEGIN
        SELECT id_cliente
        FROM cliente
        ORDER BY id_cliente ASC;
    END $$
    DELIMITER ; $$

    CALL ObtenerIDClientes();

    +------------+
    | id_cliente |
    +------------+
    |          1 |
    |          2 |
    |          3 |
    |          4 |
    |          5 |
    |          6 |
    |          7 |
    |          8 |
    |          9 |
    |         10 |
    |         11 |
    |         12 |
    |         13 |
    |         14 |
    |         15 |
    +------------+
	```
	---
9. Procedimiento para obtener el total de clientes
    ```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS ObtenerTotalClientes;
    CREATE PROCEDURE ObtenerTotalClientes ()
    BEGIN
        SELECT COUNT(*) AS total_clientes
        FROM cliente;
    END $$
    DELIMITER ; $$

    CALL ObtenerTotalClientes();

    +----------------+
    | total_clientes |
    +----------------+
    |             15 |
    +----------------+
	```
	---
10. Procedimiento para obtener el promedio del límite de crédito de los clientes
    ```sql
    DELIMITER $$
    DROP PROCEDURE IF EXISTS ObtenerPromedioLimiteCreditoClientes;
    CREATE PROCEDURE ObtenerPromedioLimiteCreditoClientes ()
    BEGIN
        SELECT AVG(limite_credito) AS promedio_limite_credito
        FROM cliente;
    END $$
    DELIMITER ; $$

    CALL ObtenerPromedioLimiteCreditoClientes();
    
    +-------------------------+
    | promedio_limite_credito |
    +-------------------------+
    |            24533.466667 |
    +-------------------------+
	```
	---