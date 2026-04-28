use Produccion

INSERT INTO Operadores (ID_Operador, Nombre, Apellido, Cargo, Gerencia) VALUES

(00001, 'Carlos', 'Mendoza', 'Técnico', 0), 
(00002, 'Ana', 'Silva', 'Supervisora', 1), 
(00003, 'Luis', 'Pérez', 'Operador', 0);

 
INSERT INTO Turnos (ID_Turno, Nombre_Turno, Hora_Inicio, Hora_Fin) VALUES
(00011, 'Mañana', '06:00:00', '12:00:00'),
(00012, 'Tarde', '14:00:00', '20:00:00'),
(00013, 'Noche', '22:00:00', '04:00:00');


INSERT INTO Productos (ID_Producto, Nombre, SKU, Precio_Base, Categoria) VALUES
(00111, 'Tornillo M8', 'TRN-M8-001', 6.70, 'Fijación'),
(00112, 'Valvula Check', 'VAL-CH-002', 67.00, 'Industrial'),
(00113, 'Valvula mariposa', 'VAL-MR-003', 9.99, 'Industrial'), 
(00114, 'codo 1/8"', 'EJE-TR-004', 45.00, 'Pieza');


INSERT INTO Maquinaria (ID_Maquina, Nombre, Area_Produccion, Estado) VALUES
(01111, 'Esmeril', 'Corte', 'activo'),
(01112, 'Cierra industrial', 'Corte', 'mantenimiento'),
(01113, 'Taladro', 'Perforacion', 'inactivo');



INSERT INTO Produccion (ID_Registro, ID_Producto, ID_Operador, ID_Maquina, ID_Turno, Cantidad_Producida, Fecha) VALUES
(10001, 00111, 00001, 01111, 00011, 50, '2026-04-15'), 
(10002, 00111, 00001, 01111, 00011, 60, '2026-04-26'), 
(10003, 00112, 00002, 01113, 00011, 30, '2026-04-27'), 
(10004, 00113, 00003, 01111, 00012, 15, '2026-04-27'), 
(10005, 00114, 00001, 01111, 00013, 10, '2026-04-27'), 
(10006, 00111, 00002, 01113, 00011, 40, '2026-04-28'); 


INSERT INTO Control_Calidad (ID_Defecto, ID_Registro, Tipo_Defecto, Severidad, Observaciones) VALUES
(10000, 10003, 'Fisura', 'Alta', 'Pieza agrietada, descartar lote'),
(20000, 10004, 'Desgaste de pintura', 'Baja', 'Defecto estético antiguo'),
(30000, 10005, 'Medida fuera de rango', 'Media', 'Ajustar calibrador del esmeril');