--CREATE DATABASE Proyecto;

use Proyecto;


create table AdministradorSistema(
	idAdministrador int primary key, 
	Nombre varchar(50),
	Apellidos varchar(50),
	Telefono int,
	Usuario varchar(45),
	Pass varchar(45));

create table AdminsitradorServicio(
	idAdmin int primary key,
	Nombre varchar(50),
	TipoEmpresa varchar(50),
	Rango varchar(55),
	Suscripcion varchar(45),
	Usuario varchar(50),
	Contraseña varchar(50),
	Inicio varchar(45),
	SistemaID int,	
	foreign key(SistemaID) REFERENCES AdministradorSistema(idAdministrador));

create table TarjetadeCredito(
	TarjetadeCredito bigint primary key,
	NombreTarjeta varchar(45),
	FechaVencimiento varchar(45),
	TipoTarjeta varchar(45),
	crv int,
	Pago varchar(45),
	idAdmin int,
	foreign key(idAdmin) REFERENCES AdminsitradorServicio(idAdmin));

create table ContactoAdmin(
	DPI bigint primary key,
	nombre varchar(45),
	numero int,
	numeroficina int,
	extension int,
	correo varchar(45),
	direccion varchar(45),
	Tipo varchar(45),
	idAdmin int,
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin));	

create table Modulo(
	idModulo int primary key,
	Nombre varchar(45),
	abreviatura varchar(10),
	Descripcion varchar(50),
	defa varchar(45),
	habilitado varchar(45),
	idAdmin int,
	foreign key(idAdmin) REFERENCES AdministradorSistema(idAdministrador));

create table Suscripcion(
	idSuscri int primary key,
	FechaI varchar(45),
	FechaF varchar(45),
	Tipo varchar(45),
	idAdmin int,
	foreign key(idAdmin) REFERENCES AdministradorSistema(idAdministrador));


create table Detalle_Modulo(
	idDetalle int primary key,
	Precio decimal(10),
	idRango varchar(45),
	idModulo int,
	idSuscri int,
	foreign key(idSuscri) REFERENCES Suscripcion(idSuscri) ON DELETE CASCADE,
	foreign key (idModulo) REFERENCES Modulo(idModulo));
	

create table Asignacion(
	idAsignacion int primary key identity(1,1),
	idDetalle int,
	idAdmin int,
	foreign key (idDetalle) REFERENCES Detalle_Modulo(idDetalle) ON DELETE CASCADE,
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin));

create table Trabajador(
	idUsu bigint primary key,
	nombre varchar(45),
	correo varchar(50),
	puesto varchar(35),
	numero int,
	pass varchar(45),
	Inicio varchar(15),
	idAdmin int,
	foreign key(idAdmin) REFERENCES AdminsitradorServicio(idAdmin));

create table Acceso(
	idAcceso int primary key identity(1,1),
	idAsignacion int,
	idUsu bigint,
	foreign key (idAsignacion) REFERENCES Asignacion(idAsignacion) ON DELETE CASCADE,
	foreign key (idUsu) REFERENCES Trabajador(idUsu) ON DELETE CASCADE);

create table Proveedor(
	idProveedor int primary key,
	Nombre varchar(45),
	Direccion varchar(50),
	Telefono int,
	PersonaContacto varchar(45),
	Correo varchar(45),
	LimiteCredito decimal(15),
	idAdmin int,
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin));

create table categoria(
	idC int primary key,
	Abreviatura varchar(45),
	Descripcion varchar(50));


create table cliente (
	idCliente int primary key, 
	Nombre varchar(45),
	Direccion varchar(50),
	Telefono int,
	PersonaContacto varchar(45),
	Correo varchar(45),
	LimiteCredito decimal(15),
	diasCredito int,
	idAdmin int,
	idC int,
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin),
	foreign key (idC) REFERENCES categoria(idC));

create table presentacion(
	idp int primary key identity(1,1),
	Descripcion varchar(50),
	Abreviatura varchar(45));

create table clasificacion(
	idc int primary key identity(1,1),
	Descripcion varchar(50),
	Abreviatura varchar(45));

create table ProductoNuevo(
	idProducto int primary key,
	codigobarra int,
	Nombre varchar(45),
	Descripcion varchar(45),
	idp int,
	idc int,
	idAdmin int,
	foreign key (idp) REFERENCES presentacion(idp),
	foreign key (idc) REFERENCES clasificacion(idc),
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin));

create table Bodega(
	idBodega int primary key,
	nombre varchar(45),
	descripcion varchar(45),
	dirrecion varchar(45),
	idAdmin int,
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin));

create table Pasillo(
	idPasillo int,
	largo varchar(45),
	ancho varchar(45),
	Bodega int,
	Primary key(idPasillo, Bodega),
	foreign key (Bodega) REFERENCES Bodega(idBodega));

create table Estante(
	idEstante varchar(2), 
	Pasillo int,
	Bodega int,
	largo varchar(45),
	ancho varchar(45),
	altura varchar(45),
	Primary Key(idEstante, Pasillo, Bodega),
	foreign key(Pasillo, Bodega) REFERENCES Pasillo(idPasillo, Bodega));

create table Nivel(
	idNivel int,
	idEstante varchar(2), 
	Pasillo int,
	Bodega int,
	altura varchar(45),
	largo varchar(45),
	ancho varchar(45),
	Primary key(idNivel, idEstante, Pasillo, Bodega),
	foreign key(idEstante, Pasillo, Bodega) REFERENCES Estante(idEstante, Pasillo, Bodega));

create table Entrada(
	idEntrada int primary key identity(1,1), 
	FechaExatca varchar(45),
	Producto int,
	Proveedor varchar(45),
	cantidad int,
	costo decimal(15),
	total decimal(15),
	idAdmin int,
	foreign key(Producto) REFERENCES ProductoNuevo(idProducto),
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin));

create table Ubicacion_Producto(
	idUbicacion int primary key identity(1,1),
	cantidad int,
	Producto int,
	entro varchar(40),
	gestion varchar(45),
	FechaEntrada varchar(45),
	Bodega int,
	Pasillo int,
	idEstante varchar(2), 
	idNivel int,
	foreign key(Producto) REFERENCES ProductoNuevo(idProducto),
	foreign key(idNivel, idEstante, Pasillo, Bodega) REFERENCES Nivel(idNivel, idEstante, Pasillo, Bodega));
	
create table  Lote(
	idLote int primary key identity(1,1),
	Costo_Lote decimal(15),
	Bodega int, 
	foreign key(Bodega) REFERENCES Bodega(idBodega));
	
create table Asignacion_Lote(
	idLP int primary key identity(1,1),
	Costo decimal(15),
	Lote int, 
	idUbicacion int,
	foreign key(Lote) REFERENCES Lote(idLote),
	foreign key(idUbicacion) REFERENCES Ubicacion_Producto(idUbicacion) ON DELETE CASCADE);

create table Saldo(
	idSaldo int primary key identity(1,1),
	Costo decimal(15),
	cantidad int,
	Bodega int,
	foreign key(Bodega) REFERENCES Bodega(idBodega));

create table AsignacionSaldo(
	idAS int primary key identity(1, 1),
	Saldo int, 
	ubicacion int, 
	foreign key (Saldo) REFERENCES Saldo(idSaldo),
	foreign key (ubicacion) REFERENCES Ubicacion_Producto(idUbicacion) ON DELETE CASCADE);

create table salida(
	idSalida int primary key identity(1,1),
	FechaExatca varchar(45),
	Producto int,
	Recibe varchar(45),
	cantidad int,
	costotal decimal(10),
	idAdmin int,
	foreign key(Producto) REFERENCES ProductoNuevo(idProducto),
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin));


--create table Usuario(
--	idUsuario int primary key,
--	idDetalle int,
--	idUsu bigint,
--	foreign key (idDetalle) REFERENCES Detalle_Modulo(idDetalle),
--	foreign key (idUsu) REFERENCES Trabajador(idUsu));


--create table Bodega(
--	idBodega int primary key,
--	NumeroLotes int);

--create table Lote(
--	idLote int primary key,
--	Nombre varchar(45),
--	IDbodega int,
--	foreign key (IDBodega) REFERENCES Bodega(idBodega));

--create table MateriaPrima(
--	idMateriaPrima int primary key,
--	Nombre varchar(45),
--	Precio decimal(15));

--create table FacturaProveedor(
--	idFactura int primary key identity(0,100),
--	Serie varchar(45),
--	NumeroFactura bigint,
--	Fecha Date,
--	valor decimal(15),
--	impuestos decimal(15),
--	Proveedor int,
--	foreign key (Proveedor) REFERENCES Proveedor(idProveedor));

--create table Cheque(
--	idCheque int primary key identity(0,100),
--	NumeroCheque int, 
--	Firma varchar(20),
--	FacturaProveedor int,
--	Trabajador bigint,
--	foreign key (Trabajador) REFERENCES Trabajador(idUsu),
--	foreign key (FacturaProveedor) REFERENCES FacturaProveedor(idFactura));

--create table Compra(
--	idCompra int primary key identity(0,100), 
--	FechaRealiazada DateTime,
--	FechaRecibida DateTime,
--	ImporteTotal decimal(15),
--	idTrabajador bigint,
--	idMateriaPrima int,
--	idFactura int,
--	foreign key (idTrabajador) REFERENCES Trabajador(idUsu),
--	foreign key (idMateriaPrima) REFERENCES MateriaPrima(idMateriaPrima),
--	foreign key (idFactura) REFERENCES FacturaProveedor(idFactura));

--create table DetalleLote(
--	idDetalleLote int primary key,
--	Lote int,
--	MateriaPrima int,
--	Producto int,
--	foreign key (Lote) REFERENCES Lote(idLote),
--	foreign key (MateriaPrima) REFERENCES MateriaPrima(idMateriaPrima),
--	foreign key (Producto) REFERENCES ProductoNuevo(idProducto));

--create table Asignacion_Producto_MateriaPrima(
--	idAsignacion int primary key,
--	MateriaPrima int, 
--	Producto int,
--	foreign key (MateriaPrima) REFERENCES MateriaPrima(idMateriaPrima),
--	foreign key (Producto) REFERENCES ProductoNuevo(idProducto));

--create table Venta(
--	idVenta int primary key identity(0,100),
--	FechaRealizada Datetime,
--	Producto int,
--	Trabajador bigint,
--	foreign key (Producto) REFERENCES ProductoNuevo(idProducto),
--	foreign key (Trabajador) REFERENCES Trabajador(idUsu));

--create table FacturaVenta(
--	idFactura int primary key identity(0,100),
--	ImporteTotal decimal(15),
--	Impuestos decimal(15),
--	Fecha datetime,
--	Trabajador bigint,
--	Venta int,
--	Cliente int,
--	foreign key (Trabajador) REFERENCES Trabajador(idUsu),
--	foreign key (Cliente) REFERENCES Cliente(idCliente),
--	foreign key (Venta) REFERENCES Venta(idVenta));

--create table Publicacion(
--	idPublicacion int primary key,
--	TituloPublicacion varchar(45),
--	CuerpoPublicacion varchar(45),
--	fecha DateTime,
--	AdminServicio int,
--	Trabajador bigint,
--	foreign key(AdminServicio) REFERENCES AdminsitradorServicio(idAdmin),
--	foreign key (Trabajador) REFERENCES Trabajador(idUsu));

--create table Comentario(
--	idComentario int primary key,
--	Comentario varchar(45),
--	Publicacion int,
--	AdminServicio int,
--	Trabajador bigint,
--	foreign key(AdminServicio) REFERENCES AdminsitradorServicio(idAdmin),
--	foreign key(Publicacion) REFERENCES Publicacion(idPublicacion),
--	foreign key (Trabajador) REFERENCES Trabajador(idUsu));

--create table RecursosHumanos(
--	idRecursosHumanos int primary key,
--	Informacion varchar(45));

--create table AsignacionRecursosHumanos(
--	idAsigancionRT int primary key,
--	RecursosHumanos int,
--	Trabajador bigint,
--	foreign key(RecursosHumanos) REFERENCES RecursosHumanos(idRecursosHumanos),
--	foreign key (Trabajador) REFERENCES Trabajador(idUsu));

--create table Entrevistado(
--	cui bigint primary key,
--	Nombre varchar(45),
--	informacion varchar(45));

--create table Entrevista(
--	idEntrevista int primary key,
--	Fecha DateTime,
--	Puesto varchar(45),
--	Aspirante bigint,
--	Reclutamiento int,
--	foreign key(Aspirante) REFERENCES Entrevistado(cui),
--	foreign key (Reclutamiento) REFERENCES RecursosHumanos(idRecursosHumanos));