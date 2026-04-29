SELECT pr.ID_Registro, pr.Fecha, pr.Cantidad_Producida, p.Nombre
FROM Productos p, Produccion pr
WHERE p.ID_Producto = pr.ID_Producto