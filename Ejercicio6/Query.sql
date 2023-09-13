CREATE TABLE Productos (
    ProductoID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Precio DECIMAL(10, 2) NOT NULL,
    SKU VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Clientes (
    ClienteID SERIAL PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Telefono VARCHAR(15),
    Direccion VARCHAR(100) NOT NULL,
    CodigoPostal VARCHAR(10),
    Barrio VARCHAR(50)
);

CREATE TABLE Ventas (
    VentaID SERIAL PRIMARY KEY,
    ClienteID INT REFERENCES Clientes(ClienteID),
    FechaVenta DATE NOT NULL,
    TotalVenta DECIMAL(10, 2) NOT NULL
);

CREATE TABLE DetalleVentas (
    DetalleVentaID SERIAL PRIMARY KEY,
    VentaID INT REFERENCES Ventas(VentaID),
    ProductoID INT REFERENCES Productos(ProductoID),
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL
);

INSERT INTO Productos (Nombre, Descripcion, Precio, SKU)
VALUES
    ('Arroz', 'Arroz blanco de 1 kg', 2.99, 'SKU12345'),
    ('Frijoles', 'Frijoles negros enlatados', 1.49, 'SKU67890'),
    ('Aceite de Cocina', 'Aceite de cocina vegetal', 3.99, 'SKU24680'),
    ('Leche', 'Leche entera en cartón', 2.49, 'SKU13579'),
    ('Cereal', 'Cereal de avena y miel', 4.29, 'SKU86420'),
    ('Harina', 'Harina de trigo para pan', 1.99, 'SKU75319'),
    ('Pasta', 'Pasta de espagueti', 1.79, 'SKU64218'),
    ('Azúcar', 'Azúcar granulada', 2.49, 'SKU98765'),
    ('Salsa de Tomate', 'Salsa de tomate en frasco', 1.29, 'SKU11223'),
    ('Sal', 'Sal de mesa', 0.99, 'SKU55667'),
    ('Café', 'Café molido', 5.99, 'SKU33221'),
    ('Té', 'Té negro en bolsitas', 3.49, 'SKU77888'),
    ('Papel Higiénico', 'Papel higiénico de doble capa', 0.79, 'SKU99001'),
    ('Jabón de Lavandería', 'Jabón para lavar ropa', 1.69, 'SKU11234'),
    ('Champú', 'Champú acondicionador', 2.99, 'SKU12356'),
    ('Cepillo de Dientes', 'Cepillo de dientes suave', 0.99, 'SKU45678'),
    ('Pasta Dental', 'Pasta dental blanqueadora', 1.29, 'SKU33333'),
    ('Pan', 'Pan blanco fresco', 1.49, 'SKU77777'),
    ('Galletas', 'Galletas de chocolate', 2.49, 'SKU88888'),
    ('Refresco', 'Refresco de cola', 1.99, 'SKU55555');

INSERT INTO Clientes (Nombre, Apellidos, Email, Telefono, Direccion, CodigoPostal, Barrio)
VALUES
    ('Juan', 'Pérez', 'juan@email.com', '555-123-4567', 'Calle 123, #456', '12345', 'Monterrey'),
    ('Ana', 'Gómez', 'ana@email.com', '555-234-5678', 'Avenida Principal, #789', '56789', 'Guadalajara'),
    ('Luis', 'Rodríguez', 'luis@email.com', '555-345-6789', 'Calle 456, #123', '45678', 'Cancún'),
    ('María', 'García', 'maria@email.com', '555-890-1234', 'Calle 678, #890', '67890', 'Monterrey'),
    ('Carlos', 'López', 'carlos@email.com', '555-901-2345', 'Avenida 5, #901', '90123', 'Guadalajara'),
    ('Isabel', 'Torres', 'isabel@email.com', '555-012-3456', 'Calle 456, #123', '01234', 'Cancún'),
    ('Pedro', 'Hernández', 'pedro@email.com', '555-234-5678', 'Avenida 6, #234', '23456', 'Monterrey'),
    ('Laura', 'Soto', 'laura@email.com', '555-345-6789', 'Calle 789, #567', '34567', 'Guadalajara'),
    ('Miguel', 'Torres', 'miguel@email.com', '555-901-2345', 'Calle 234, #567', '90123', 'Colonia I'),
    ('Carmen', 'Fernández', 'carmen@email.com', '555-012-3456', 'Avenida 4, #678', '01234', 'Colonia J'),
    ('Alejandro', 'Ramírez', 'alejandro@email.com', '555-123-4567', 'Calle 567, #890', '12345', 'Colonia K'),
    ('Rosa', 'Sánchez', 'rosa@email.com', '555-234-5678', 'Avenida 5, #901', '23456', 'Colonia L'),
    ('Sergio', 'Pardo', 'sergio@email.com', '555-345-6789', 'Calle 678, #123', '34567', 'Colonia M'),
    ('Patricia', 'Ortega', 'patricia@email.com', '555-456-7890', 'Avenida 6, #234', '45678', 'Colonia N'),
    ('Eduardo', 'Vega', 'eduardo@email.com', '555-567-8901', 'Calle 890, #567', '56789', 'Monterrey'),
    ('Silvia', 'Navarro', 'silvia@email.com', '555-678-9012', 'Avenida 7, #890', '67890', 'Guadalajara'),
    ('Fernando', 'Molina', 'fernando@email.com', '555-789-0123', 'Calle 234, #123', '78901', 'Cancún'),
    ('Natalia', 'Cruz', 'natalia@email.com', '555-890-1234', 'Avenida 8, #567', '89012', 'Colonia R'),
    ('Daniel', 'Lara', 'daniel@email.com', '555-901-2345', 'Calle 901, #890', '90123', 'Colonia S'),
    ('Ana', 'Soto', 'ana.soto@email.com', '555-012-3456', 'Avenida 9, #123', '01234', 'Colonia T');

INSERT INTO Ventas (ClienteID, FechaVenta, TotalVenta)
VALUES
    (1, '2023-09-01', 50.99),
    (3, '2023-09-02', 30.49),
    (2, '2023-09-03', 75.25),
    (4, '2023-09-04', 42.99),
    (5, '2023-09-05', 90.50),
    (6, '2023-09-06', 28.75),
    (7, '2023-09-07', 62.30),
    (8, '2023-09-08', 37.45),
    (9, '2023-09-09', 54.80),
    (10, '2023-09-10', 48.60);


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (1, 1, 3, 5.99),  -- Producto 1: Arroz
    (1, 4, 2, 2.49);  -- Producto 4: Leche


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (2, 7, 1, 1.79),  -- Producto 7: Pasta
    (2, 8, 4, 2.49);  -- Producto 8: Azúcar

INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (3, 12, 2, 5.99),  -- Producto 12: Café
    (3, 13, 3, 3.49);  -- Producto 13: Té


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (4, 6, 5, 1.99),  -- Producto 6: Harina
    (4, 10, 1, 1.99);  -- Producto 10: Sal


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (5, 2, 2, 1.49),  -- Producto 2: Frijoles
    (5, 3, 3, 3.99);  -- Producto 3: Aceite de Cocina


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (6, 15, 1, 1.69),  -- Producto 15: Jabón de Lavandería
    (6, 16, 2, 2.99);  -- Producto 16: Champú


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (7, 9, 4, 1.99),  -- Producto 9: Salsa de Tomate
    (7, 14, 1, 0.79);  -- Producto 14: Papel Higiénico


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (8, 11, 3, 1.29),  -- Producto 11: Té
    (8, 5, 2, 4.29);  -- Producto 5: Cereal


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (9, 18, 2, 0.99),  -- Producto 18: Galletas
    (9, 19, 1, 1.99);  -- Producto 19: Refresco


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES
    (10, 20, 3, 2.49),  -- Producto 20: Refresco
    (10, 17, 2, 1.29);  -- Producto 17: Pasta Dental

--Ejercicios

SELECT * FROM clientes WHERE barrio = 'Monterrey';

SELECT productoid, precio FROM productos WHERE precio >15; 

SELECT Clientes.ClienteID, Clientes.Nombre FROM Clientes
LEFT JOIN Ventas ON Clientes.ClienteID = Ventas.ClienteID
WHERE Ventas.ClienteID IS NULL;

SELECT Clientes.ClienteID, Clientes.Nombre, SUM(DetalleVentas.Cantidad) AS TotalProductosComprados
FROM Clientes INNER JOIN Ventas ON Clientes.ClienteID = Ventas.ClienteID
INNER JOIN DetalleVentas ON Ventas.VentaID = DetalleVentas.VentaID
GROUP BY Clientes.ClienteID, Clientes.Nombre ORDER BY Clientes.ClienteID;

SELECT DISTINCT Productos.ProductoID FROM Productos
LEFT JOIN DetalleVentas ON Productos.ProductoID = DetalleVentas.ProductoID
LEFT JOIN Ventas ON DetalleVentas.VentaID = Ventas.VentaID
LEFT JOIN Clientes ON Ventas.ClienteID = Clientes.ClienteID
WHERE (Clientes.Barrio IS NULL OR Clientes.Barrio != 'Guadalajara');









