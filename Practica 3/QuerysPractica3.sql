/*
CREATE VIEW vw_AlertasCalidad(nombreProduct, fechaProd, tipoDefecto, severidad)
AS SELECT p.Nombre, pd.Fecha, c.Tipo_Defecto, c.Severidad
FROM Control_Calidad c, Produccion pd, Productos p
WHERE c.ID_Registro = pd.ID_Registro
	AND pd.ID_Producto = p.ID_Producto
;
*/
/*
CREATE VIEW vw_ResumenProductividadMaquinas(NombreMaquina, NombreTurno, CantTotalProduc)
AS SELECT m.Nombre, t.Nombre_Turno, SUM(p.Cantidad_Producida) AS cantProdTotal
FROM Maquinaria m, Turnos t, Produccion p
WHERE p.ID_Turno = t.ID_Turno
	AND p.ID_Maquina = m.ID_Maquina
GROUP BY m.Nombre, t.Nombre_Turno
;
*/
/*
CREATE VIEW vw_AuditoriaOperadores(NombreOp, ApellidoOp, DefectosSevAltaTotal)
AS SELECT o.Nombre, o.Apellido, COUNT(c.ID_Defecto) AS DefectosTotal
FROM Operadores o, Produccion p, Control_Calidad c
WHERE p.ID_Operador = o.ID_Operador
	AND p.ID_Registro = c.ID_Registro
	AND c.Severidad = 'Alta'
GROUP BY o.Nombre, o.Apellido
;
*/
/*
SELECT * 
FROM vw_AlertasCalidad
ORDER BY severidad ASC
;
*/
/*
SELECT SUM(CantTotalProduc) AS TotalCantProducidad
FROM vw_ResumenProductividadMaquinas
;
*/
/*
SELECT NombreOp, ApellidoOp, DefectosSevAltaTotal
FROM vw_AuditoriaOperadores
WHERE DefectosSevAltaTotal = (SELECT MAX(DefectosSevAltaTotal)
								FROM vw_AuditoriaOperadores
								)
;
*/
/*
DROP VIEW vw_AlertasCalidad;
DROP VIEW vw_ResumenProductividadMaquinas;
DROP VIEW vw_AuditoriaOperadores;
*/