

INSERT INTO Operadores (ID_Operador, Nombre, Apellido, Cargo, Gerencia) VALUES

(1, 'Carlos', 'Mendoza', 'Técnico', 0), 
(2, 'Ana', 'Silva', 'Supervisora', 1), 
(3, 'Luis', 'Pérez', 'Operador', 0);

 
INSERT INTO Turnos (ID_Turno, Nombre_Turno, Hora_Inicio, Hora_Fin) VALUES
(1, 'Mañana', '06:00:00', '12:00:00'),
(2, 'Tarde', '14:00:00', '20:00:00'),
(3, 'Noche', '22:00:00', '04:00:00');


INSERT INTO Productos (ID_Producto, Nombre, SKU, Precio_Base, Categoria) VALUES
(1, 'Tornillo M8', 'TRN-M8-001', 6.70, 'Fijación'),
(2, 'Valvula Check', 'VAL-CH-002', 67.00, 'Industrial'),
(3, 'Valvula mariposa', 'VAL-MR-003', 9.99, 'Industrial'), 
(4, 'codo 1/8"', 'EJE-TR-004', 45.00, 'Pieza');


INSERT INTO Maquinaria (ID_Maquina, Nombre, Area_Produccion, Estado) VALUES
(1, 'Esmeril', 'Corte', 'activo'),
(2, 'Cierra industrial', 'Corte', 'mantenimiento'),
(3, 'Taladro', 'Perforacion', 'inactivo');



INSERT INTO Produccion (ID_Registro, ID_Producto, ID_Operador, ID_Maquina, ID_Turno, Cantidad_Producida, Fecha) VALUES
(1, 1, 1, 1, 1, 50, '2026-04-15'), 
(2, 1, 1, 1, 1, 60, '2026-04-26'), 
(3, 2, 2, 3, 1, 30, '2026-04-27'), 
(4, 3, 3, 2, 2, 15, '2026-04-27'), 
(5, 4, 1, 1, 3, 10, '2026-04-27'), 
(6, 1, 2, 3, 1, 40, '2026-04-28'),
(7, 1, 2, 3, 1, 55, '2026-03-28');


INSERT INTO Control_Calidad (ID_Defecto, ID_Registro, Tipo_Defecto, Severidad, Observaciones) VALUES
(1, 3, 'Fisura', 'Alta', 'Pieza agrietada, descartar lote'),
(2, 4, 'Desgaste de pintura', 'Baja', 'Defecto estético antiguo'),
(3, 5, 'Medida fuera de rango', 'Media', 'Ajustar calibrador del esmeril');