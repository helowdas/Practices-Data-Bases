CREATE TABLE auditoria_productos_update(
	auditoriaID int IDENTITY(1,1), 
	id_producto int not null,
	precio_anterior decimal(10,2) not null, 
	precio_modificado decimal(10,2) not null,
	accion varchar(50) not null,
	fecha datetime not null, 

	primary key(auditoriaID)
);

CREATE TABLE auditoria_productos_add(
	auditoriaID int identity(1,1),
	id_producto int not null,
	fecha datetime,
	accion varchar(50),

	primary key (auditoriaID)

);

CREATE TABLE auditoria_ControlCalidad(
	auditoriaCID int identity(1,1),
	ID_Defecto INT  NOT NULL,
	ID_Registro INT NOT NULL,
	Tipo_Defecto VARCHAR(30) NOT NULL,
	Severidad VARCHAR(30) NOT NULL,
	Accion_Correctiva VARCHAR(100) NOT NULL,
	accion varchar(20),
	fecha datetime,

	primary key(auditoriaCID)
);
