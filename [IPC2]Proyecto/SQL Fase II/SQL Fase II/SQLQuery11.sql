Use Proyecto;

ALTER TABLE dbo.AdministradorServicio
	DROP Direccion, Telefono, PersonaContacto, Correo,LimiteCredito, diasCredito,TarjetadeCredito
ALTER TABLE dbo.AdministradorServicio
	ADD TipoEmpresa varchar(50),TamañoEmpresa int,TarjetadeCredito int, NombreTarjeta varchar(45), FechaVencimiento varchar(45), TipoTarjeta varchar(45),crv int
	

