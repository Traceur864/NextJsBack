CREATE DATABASE E_COMMERCE;
USE E_COMMERCE;
#DROP DATABASE E_COMMERCE;

CREATE TABLE USERS (
    ID_USER INT AUTO_INCREMENT PRIMARY KEY,
    USERNAME TEXT,
    NAME TEXT NOT NULL,
    LASTNAME TEXT NOT NULL,
    ADDRESS TEXT NOT NULL,
    PHONE TEXT NOT NULL,
    EMAIL TEXT NOT NULL,
    PASSWORD TEXT NOT NULL,
    ROL TEXT NOT NULL,
    PICTURE TEXT,
    STATUS TEXT NOT NULL
);
#DROP TABLE USERS;

CREATE TABLE PRODUCTS (
    ID_PRODUCT INT AUTO_INCREMENT PRIMARY KEY,
    NAME TEXT NOT NULL,
    DESCRIPTION TEXT,
    PRICE FLOAT NOT NULL,
    PICTURE TEXT
);
#DROP TABLE PRODUCTS;

CREATE TABLE SEND_ADDRESS (
    ID_ADDRESS INT AUTO_INCREMENT PRIMARY KEY,
    ID_USER INT,
    NAME TEXT NOT NULL,
    EMAIL TEXT NOT NULL,
    PHONE TEXT NOT NULL,
    ADDRESS TEXT NOT NULL,
    FOREIGN KEY (ID_USER) REFERENCES USERS(ID_USER)
);
#DROP TABLE SEND_ADDRESS;

CREATE TABLE CAR (
    ID_CAR INT AUTO_INCREMENT PRIMARY KEY,
    ID_USER INT,
    ID_PRODUCT INT,
    QUANTITY INT,
    FOREIGN KEY (ID_USER) REFERENCES USERS(ID_USER),
    FOREIGN KEY (ID_PRODUCT) REFERENCES PRODUCTS(ID_PRODUCT)
);
#DROP TABLE CAR;

CREATE TABLE ORDERS (
    ID_ORDER INT AUTO_INCREMENT PRIMARY KEY,
    ID_USER INT,
    TOTAL FLOAT,
    DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_USER) REFERENCES USERS(ID)
);
#DROP TABLE ORDERS;

CREATE TABLE ORDER_DETAIL (
    ID_DETAIL INT AUTO_INCREMENT PRIMARY KEY,
    ID_ORDER INT,
    ID_PRODUCT INT,
    QUANTITY INT NOT NULL,
    PRICE FLOAT NOT NULL,
    SUBTOTAL FLOAT NOT NULL,
    FOREIGN KEY (ID_ORDER) REFERENCES ORDERS(ID_ORDER),
    FOREIGN KEY (ID_PRODUCT) REFERENCES PRODUCTS(ID_PRODUCT)
);
#DROP TABLE ORDER_DETAIL;


    NAME TEXT NOT NULL,
    LASTNAME TEXT NOT NULL,
    ADDRESS TEXT NOT NULL,
    PHONE TEXT NOT NULL,
    EMAIL TEXT NOT NULL,
    PASSWORD TEXT NOT NULL,
    ROL TEXT NOT NULL,
    PICTURE TEXT,
    STATUS TEXT NOT NULL

INSERT INTO USERS (USERNAME, NAME, LASTNAME, ADDRESS, PHONE, EMAIL, PASSWORD, ROL, PICTURE, STATUS) VALUES
('Juanin','Juan', 'Pérez', 'Calle #2', '3312233445', 'juan@gmail.com.com', '$2b$10$B5gptUy41R3sw29AQlb7C.fr5C5SX9ol6va2FYuEx0keiv019/xDS', 'User', NULL, 'ACTIVE'),
('Maria','María', 'López', 'Calle #2', '3312233445', 'maria@gmail.com.com', '$2b$10$B5gptUy41R3sw29AQlb7C.fr5C5SX9ol6va2FYuEx0keiv019/xDS', 'User', NULL, 'ACTIVE'),
('Carlos','Carlos', 'Gómez', 'Calle #2', '3312233445', 'carlos@gmail.com.com', '$2b$10$B5gptUy41R3sw29AQlb7C.fr5C5SX9ol6va2FYuEx0keiv019/xDS', 'User', NULL, 'ACTIVE'),
('Edwin','Edwin', 'Lopez', 'Calle #2', '3312233445', 'edwin@gmail.com.com', '$2b$10$B5gptUy41R3sw29AQlb7C.fr5C5SX9ol6va2FYuEx0keiv019/xDS', 'Administrador', NULL, 'ACTIVE');

-- INSERT INTO productos (nombre, descripcion, precio, imagen) VALUES
-- ('Laptop Gamer', 'Laptop potente con procesador i7 y tarjeta gráfica RTX 3060.', 1500.00, 'laptop.jpg'),
-- ('Teléfono Inteligente', 'Smartphone de última generación con cámara de 108MP.', 800.00, 'telefono.jpg'),
-- ('Auriculares Inalámbricos', 'Auriculares con cancelación de ruido y alta fidelidad de sonido.', 120.00, 'auriculares.jpg'),
-- ('Monitor 4K', 'Monitor UHD 4K de 27 pulgadas con tecnología IPS.', 350.00, 'monitor.jpg'),
-- ('Teclado Mecánico', 'Teclado mecánico RGB con switches personalizables.', 90.00, 'teclado.jpg'),
-- ('Mouse Gamer', 'Mouse ergonómico con sensor óptico de alta precisión.', 60.00, 'mouse.jpg'),
-- ('Silla Ergonómica', 'Silla de oficina ergonómica con soporte lumbar ajustable.', 250.00, 'silla.jpg'),
-- ('Tablet Android', 'Tablet con pantalla de 10 pulgadas y batería de larga duración.', 400.00, 'tablet.jpg'),
-- ('Smartwatch', 'Reloj inteligente con monitoreo de salud y GPS integrado.', 200.00, 'smartwatch.jpg'),
-- ('Cámara Profesional', 'Cámara réflex digital con lente de 24MP y grabación en 4K.', 1200.00, 'camara.jpg');

#DROP DATABASE E_COMMERCE;
