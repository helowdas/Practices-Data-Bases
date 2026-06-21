GO
CREATE PROCEDURE calc_CantTotalProducMonto
AS
BEGIN
	DECLARE @MontoTotal decimal(10,2), @idProd INT, @nombreProd varchar(50), @precioProd decimal(10,2);
	
	DECLARE cursorProd CURSOR FOR
	SELECT ID_Producto, Nombre, Precio_Base
	FROM Productos;

	OPEN cursorProd;

	FETCH NEXT FROM cursorProd INTO @idProd, @nombreProd, @precioProd;

	WHILE @@FETCH_STATUS = 0
	BEGIN

		SELECT @MontoTotal = SUM(Cantidad_Producida) * @precioProd
		FROM Produccion
		WHERE ID_Producto = @idProd
		;

		SELECT @nombreProd AS NombreProducto, @MontoTotal AS MontoTotalProducido;

		FETCH NEXT FROM cursorProd INTO @idProd, @nombreProd, @precioProd;

	END;

	CLOSE cursorProd;
	DEALLOCATE cursorProd;

END;
GO