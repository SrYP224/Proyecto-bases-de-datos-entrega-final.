CREATE DATABASE MaquinaExpendedora;

USE MaquinaExpendedora;

-- Tabla de productos
CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    cantidad_disponible INT NOT NULL,
    dona_fopre BOOLEAN DEFAULT FALSE
);

CREATE TABLE Compras (
    id_compra INT PRIMARY KEY AUTO_INCREMENT,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    total_compra DECIMAL(10,2) NOT NULL,
    donacion_fopre DECIMAL(10,2) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

CREATE TABLE Maquina (
    id INT PRIMARY KEY DEFAULT 1,
    credito DECIMAL(10,2) DEFAULT 0,
    CHECK (id = 1)
    );
    
INSERT INTO Maquina (id, credito) VALUES (1, 0);

INSERT INTO Productos (nombre, precio, cantidad_disponible, dona_fopre)
VALUES
    ('Galletas', 2.00, 50, TRUE),
    ('Bebida', 1.50, 40, FALSE),
    ('Chocolatina', 2.50, 30, TRUE),
    ('Papas', 3.00, 20, TRUE);
    
    INSERT INTO Productos (nombre, precio, cantidad_disponible, dona_fopre) VALUES
('Coca Cola', 15.00, 50, TRUE),
('Fanta', 12.00, 30, FALSE),
('Pepsi', 14.00, 20, TRUE),
('Agua Mineral', 8.00, 100, FALSE);

