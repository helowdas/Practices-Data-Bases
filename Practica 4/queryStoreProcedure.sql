
GO
CREATE PROCEDURE calc_CantTotalProducForProduct
AS
BEGIN
	DECLARE @CantTotal INT, @idProd INT, @nombreProd varchar(50), @categoriaProd varchar(50);
	
	DECLARE cursorProd CURSOR FOR
	SELECT ID_Producto, Nombre, Categoria 
	FROM Productos;

	OPEN cursorProd;

	FETCH NEXT FROM cursorProd INTO @idProd, @nombreProd, @categoriaProd;

	WHILE @@FETCH_STATUS = 0
	BEGIN

		SELECT @CantTotal = SUM(Cantidad_Producida)
		FROM Produccion
		WHERE ID_Producto = @idProd
		;

		SELECT @nombreProd AS NombreProducto, @categoriaProd AS Categoria, @CantTotal AS CantidadTotalProducida;

		FETCH NEXT FROM cursorProd INTO @idProd, @nombreProd, @categoriaProd;

	END;

	CLOSE cursorProd;
	DEALLOCATE cursorProd;

END;
GO

GO
CREATE PROCEDURE calc_CantTotalDefectsForProduct
AS
BEGIN
	DECLARE @CantTotal INT, @idProd INT, @nombreProd varchar(50);
	
	DECLARE cursorProd CURSOR FOR
	SELECT ID_Producto, Nombre
	FROM Productos;

	OPEN cursorProd;

	FETCH NEXT FROM cursorProd INTO @idProd, @nombreProd;

	WHILE @@FETCH_STATUS = 0
	BEGIN

		SELECT @CantTotal = COUNT(c.ID_Defecto)
		FROM Produccion p, Control_Calidad c
		WHERE p.ID_Producto = @idProd
			AND c.ID_Registro = p.ID_Registro
		;

		SELECT @nombreProd AS NombreProducto, @CantTotal AS CantidadTotalDefectos;

		FETCH NEXT FROM cursorProd INTO @idProd, @nombreProd;

	END;

	CLOSE cursorProd;
	DEALLOCATE cursorProd;

END;
GO

