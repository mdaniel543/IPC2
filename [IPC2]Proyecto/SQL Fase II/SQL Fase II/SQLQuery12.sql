Use Proyecto;

create table ContactoAdmin(
	DPI bigint primary key,
	nombre varchar(45),
	numero int,
	numeroficina int,
	extension int,
	correo varchar(45),
	direccion varchar,
	idAdmin int
	foreign key (idAdmin) REFERENCES AdminsitradorServicio(idAdmin));	
)