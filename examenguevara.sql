CREATE SCHEMA IF NOT EXISTS examenguevara;
USE examenguevara;
CREATE TABLE IF NOT EXISTS clientes (
    id VARCHAR(4) NOT NULL PRIMARY KEY,  
    Nombr_cliente VARCHAR(50),
    Apellidos VARCHAR(50),
    Telefonos VARCHAR(20),
    Tipo_Cliente VARCHAR(40),
    DNI INT(8),
    Localidad VARCHAR(50),
    Direccion_cl VARCHAR(50),
    Email VARCHAR(50)
);

-- Creación de la tabla 'Producto'
CREATE TABLE IF NOT EXISTS Producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY, 
    Nombre_Producto VARCHAR(40),
    Descripcion VARCHAR(40),
    Tamano_producto VARCHAR(40),
    Tipo_Papel VARCHAR(40),
    Acabado VARCHAR(40),
    Impresion VARCHAR(40)
);

-- Creación de la tabla 'Empleado'
CREATE TABLE IF NOT EXISTS Empleado (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,  
    nombres VARCHAR(40),
    apellidos VARCHAR(40),
    email VARCHAR(40),
    DNI INT(8),
    telefonos VARCHAR(20),
    salario INT,
    direccion_emp VARCHAR(100),
    id_departamento INT,  
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);



CREATE TABLE IF NOT EXISTS Departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,  
    Nombre_departamento VARCHAR(30),
    email VARCHAR(50)
);

-- Creación de la tabla 'Factura'
CREATE TABLE IF NOT EXISTS Factura (
    N_Factura INT PRIMARY KEY,  
    id_cliente VARCHAR(4),  
    Pago INT,
    Importe INT,
    Envio VARCHAR(40),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

INSERT INTO clientes (id, Nombr_cliente, Apellidos, Telefonos, Tipo_Cliente, DNI, Localidad, Direccion_cl, Email)
VALUES
('C001', 'Juan Jose', 'Pérez chang', '987465423', 'Regular', 12345678, 'Madrid', 'Calle Falsa 123', 'juanperez@email.com'),
('C002', 'María Fernanda', 'Gómez Lozano', '987654321', 'VIP', 87654321, 'Barcelona', 'Avenida Libertad 456', 'mariagomez@email.com'),
('C003', 'Carlos Leon', 'Martín Solano', '975318462', 'Regular', 11223344, 'Sevilla', 'Calle Mayor 789', 'carlosmartin@email.com');


INSERT INTO Producto (Nombre_Producto, Descripcion, Tamano_producto, Tipo_Papel, Acabado, Impresion)
VALUES
('Camiseta', 'Camiseta de algodón', 'L', 'Algodón', 'Mate', 'Impresión digital'),
('Taza', 'Taza de cerámica', 'M', 'Cerámica', 'Brillante', 'Serigrafía'),
('Bolsa', 'Bolsa de tela ecológica', 'S', 'Tela', 'Mate', 'Impresión UV');



INSERT INTO Empleado (nombres, apellidos, email, DNI, telefonos, salario, direccion_emp, id_departamento)
VALUES
('Ana', 'López', 'ana.lopez@empresa.com', 23456789, '123123123', 30000, 'Calle 1, Oficina 101', 1),
('Luis', 'Rodríguez', 'luis.rodriguez@empresa.com', 34567890, '987987987', 35000, 'Calle 2, Oficina 102', 2),
('Sofia', 'Fernández', 'sofia.fernandez@empresa.com', 45678901, '555555555', 40000, 'Calle 3, Oficina 103', 3);

INSERT INTO Departamento (Nombre_departamento, email)
VALUES
('Ventas', 'ventas@empresa.com'),
('Marketing', 'marketing@empresa.com'),
('Producción', 'produccion@empresa.com');

INSERT INTO Factura (N_Factura, id_cliente, Pago, Importe, Envio)
VALUES
(1, 'C001', 100, 150, 'Envío estándar'),
(2, 'C002', 200, 250, 'Envío express'),
(3, 'C003', 150, 180, 'Envío estándar');


