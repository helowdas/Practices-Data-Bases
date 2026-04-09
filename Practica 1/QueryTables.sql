/* Codigo SQL para crear las tablas de la base de datos*/

CREATE TABLE Operadores(
	ID_Operador INT,
	Nombre VARCHAR(30) NOT NULL,
	Apellido VARCHAR(30) NOT NULL,
	Cargo VARCHAR(20) NOT NULL,
	PRIMARY KEY (ID_Operador)
);

CREATE TABLE Turnos(
	ID_Turno INT,
	Nombre_Turno VARCHAR(10) NOT NULL CHECK(Nombre_Turno IN ('Mañana','Tarde','Noche')),
	Hora_Inicio TIME NOT NULL,
	Hora_Fin TIME NOT NULL,
	PRIMARY KEY(ID_Turno)
);

CREATE TABLE Productos(
	ID_Producto INT,
	Nombre VARCHAR(50) NOT NULL,
	SKU_Precio_Base DECIMAL(10,2),
	PRIMARY KEY(ID_Producto)
);

CREATE TABLE Maquinaria(
	ID_Maquina INT,
	Nombre VARCHAR(50) NOT NULL,
	Area_Produccion VARCHAR(30) NOT NULL,
	Estado VARCHAR(15),
	PRIMARY KEY (ID_Maquina)
);

CREATE TABLE Produccion(
	ID_Registro INT,
	ID_Producto INT NOT NULL,
	ID_Operador INT NOT NULL,
	ID_Maquina INT NOT NULL,
	ID_Turno INT NOT NULL,
	Cantidad_Producida INT NOT NULL CHECK(Cantidad_Producida > 0),
	Fecha DATE NOT NULL,
	PRIMARY KEY(ID_Registro),
	FOREIGN KEY(ID_Producto) REFERENCES Productos(ID_Producto) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY(ID_Operador) REFERENCES Operadores(ID_Operador) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY(ID_Maquina) REFERENCES Maquinaria(ID_Maquina) ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY(ID_Turno) REFERENCES Turnos(ID_Turno) ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE Control_Calidad(
	ID_Defecto INT,
	ID_Registro INT NOT NULL,
	Tipo_Defecto VARCHAR(30) NOT NULL,
	Severidad VARCHAR(30) NOT NULL,
	Accion_Correctiva VARCHAR(100) NOT NULL,
	PRIMARY KEY(ID_Defecto),
	FOREIGN KEY(ID_Registro) REFERENCES Produccion(ID_Registro) ON UPDATE CASCADE ON DELETE NO ACTION
);

