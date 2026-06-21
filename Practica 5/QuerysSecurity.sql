
-- 1) Aqui creamo los perfiles o Roles
/*
CREATE ROLE Administrador;
CREATE ROLE Visualizador;
CREATE ROLE Encargado;
*/

-- 2) creamos los usuarios para cada Rol
/*
--Usuarios Administrador:
CREATE USER ad_LuisFerrer WITHOUT LOGIN;
CREATE USER ad_IgnacioHerrera WITHOUT LOGIN;
CREATE USER ad_RafaelRamirez WITHOUT LOGIN;
-- agregamos los usuarios al Rol
ALTER ROLE Administrador ADD MEMBER ad_LuisFerrer;
ALTER ROLE Administrador ADD MEMBER ad_IgnacioHerrera;
ALTER ROLE Administrador ADD MEMBER ad_RafaelRamirez;

--Usuarios Encargado:
CREATE USER en_LuisFerrer WITHOUT LOGIN;
CREATE USER en_IgnacioHerrera WITHOUT LOGIN;
CREATE USER en_RafaelRamirez WITHOUT LOGIN;
-- agregamos los usuarios al Rol
ALTER ROLE Encargado ADD MEMBER en_LuisFerrer;
ALTER ROLE Encargado ADD MEMBER en_IgnacioHerrera;
ALTER ROLE Encargado ADD MEMBER en_RafaelRamirez;

--Usuarios Visualizador:
CREATE USER vs_LuisFerrer WITHOUT LOGIN;
CREATE USER vs_IgnacioHerrera WITHOUT LOGIN;
CREATE USER vs_RafaelRamirez WITHOUT LOGIN;
-- agregamos los usuarios al Rol
ALTER ROLE Visualizador ADD MEMBER vs_LuisFerrer;
ALTER ROLE Visualizador ADD MEMBER vs_IgnacioHerrera;
ALTER ROLE Visualizador ADD MEMBER vs_RafaelRamirez;
*/

-- 3) y 4) gestionamos permisos de Visualizador
/*
GRANT SELECT ON SCHEMA::dbo TO Visualizador;
REVOKE UPDATE, DELETE ON SCHEMA::dbo FROM Visualizador;
*/

-- 5) dar permisos a Encargado
--GRANT UPDATE, SELECT ON SCHEMA::dbo TO Encargado;

-- 6) quitar permisos a Encargado
--REVOKE DELETE ON SCHEMA::dbo TO Encargado;

-- 8) quitar permisos procedimiento almacenado a Visualizador
--REVOKE EXECUTE ON calc_CantTotalProducMonto FROM Visualizador;

-- 9) otorgar permisos procedimiento almacenado a Encargado
--GRANT EXECUTE ON calc_CantTotalProducMonto TO Encargado;