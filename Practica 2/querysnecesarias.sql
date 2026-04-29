/* Punto 2 de la practica */
SELECT pr.ID_Registro, pr.Fecha, pr.Cantidad_Producida, p.Nombre
FROM Productos p, Produccion pr
WHERE p.ID_Producto = pr.ID_Producto
;

/* Punto 3 de la practica */
SELECT SUM(Cantidad_Producida) AS TotalUnidadesProducidas
FROM Produccion
;

/* Punto 4 de la practica */
SELECT o.ID_Operador, o.Nombre, o.Apellido, SUM(p.Cantidad_Producida) AS CantidadTotalProd
FROM Produccion p, Operadores o
WHERE p.ID_Operador = o.ID_Operador
GROUP BY o.ID_Operador, o.Nombre, o.Apellido
ORDER BY CantidadTotalProd DESC
;

/* Punto 5 de la practica */
SELECT pd.ID_Registro, pd.Fecha, pr.Nombre AS nombreProducto, o.Nombre AS nombreOperador, c.Tipo_Defecto, c.Severidad
FROM Produccion pd, Productos pr, Operadores o, Control_Calidad c
WHERE c.ID_Registro = pd.ID_Registro
	AND pd.ID_Producto = pr.ID_Producto
	AND pd.ID_Operador = o.ID_Operador
;

/* Punto 6 de la practica */
/*
SELECT Nombre, Precio_Base
FROM Productos
;

UPDATE Productos
SET Precio_Base = Precio_Base * 1.05
WHERE Precio_Base < 10
;

SELECT Nombre, Precio_Base
FROM Productos
;
*/

/* Punto 7 de la Practica*/
/*
SELECT Tipo_Defecto
FROM Control_Calidad
;

DELETE FROM Control_Calidad
WHERE Tipo_Defecto = 'Fisura'
;

SELECT Tipo_Defecto
FROM Control_Calidad
;
*/

/* Punto 8 de la Practica*/
SELECT pd.ID_Producto, pd.Nombre AS NombreProducto, AVG(p.Cantidad_Producida) AS PromedioDiario
FROM Produccion p, Productos pd
WHERE pd.ID_Producto = 1
	AND p.ID_Producto = 1
	AND MONTH(p.Fecha) = MONTH(GETDATE())
GROUP BY pd.ID_Producto, pd.Nombre
;

/* Punto 9 de la Practica*/
SELECT t.Nombre_Turno, SUM(p.Cantidad_Producida) AS CantidadProdAyer
FROM Produccion p, Turnos t
WHERE p.ID_Turno = t.ID_Turno
	AND (DAY(p.Fecha)) = (DAY(GETDATE())-1)
GROUP BY t.Nombre_Turno
;

/* Punto 10 de la Practica */
/*
SELECT *
FROM Maquinaria
;

UPDATE Maquinaria
SET Estado = 'inactivo'
WHERE Area_Produccion = 'Corte'
;

SELECT *
FROM Maquinaria
;
*/
