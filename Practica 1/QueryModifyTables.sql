/* Querys para modificar las tablas */
ALTER TABLE Productos ADD Categoria VARCHAR(50);

ALTER TABLE Operadores ADD Gerencia BIT;

ALTER TABLE Control_Calidad DROP COLUMN Accion_Correctiva;
ALTER TABLE Control_Calidad ADD Observaciones VARCHAR(100) NOT NULL;

ALTER TABLE Productos ADD CONSTRAINT producto_precio_base CHECK (Precio_Base > 0);