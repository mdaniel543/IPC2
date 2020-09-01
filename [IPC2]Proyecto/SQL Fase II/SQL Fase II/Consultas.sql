use Proyecto;

--INSERT INTO AdministradorSistema values (01,'IPC2','Ingenierio',58446376,'mdaniel','ocho');
--INSERT INTO AdminsitradorServicio(idAdmin, Nombre, TipoEmpresa, Rango, Inicio) values (37780352, 'JJD','Transportes','de 1 a 10 empleados','NO');
--INSERT INTO AdminsitradorServicio(idAdmin, Nombre, TipoEmpresa, Rango, Inicio) values (65446543, 'MI','TEXTILES','de 11 a 15 empleados','NO');

--INSERT INTO TarjetadeCredito VALUES (453465466466,'Marvin Rodriguez', '03/10','Visa',1707,'SI',37780352);
--INSERT INTO TarjetadeCredito VALUES (452324242426,'Griss Rodriguez', '03/10','Visa',1707,'NO',37780352);
--INSERT INTO TarjetadeCredito VALUES (457465468466,'Gilda Marroquin', '03/10','Master Card',1707,'SI',65446543);

--INSERT INTO ContactoAdmin (DPI, nombre, numero, numeroficina, extension, correo, direccion, Tipo, idAdmin) VALUES (3010824990101, 'Daniel', 58446376, 233224, 301, 'daniel@gmail.com', 'Zona10', 'Comercial',37780352);
--INSERT INTO ContactoAdmin (DPI, nombre, numero, numeroficina, extension, correo, direccion, Tipo, idAdmin) VALUES (2790824990101, 'Ale', 58446376, 233224, 301, 'josue@gmail.com', 'Zona10', 'Gerencial',37780352);
--INSERT INTO ContactoAdmin (DPI, nombre, numero, numeroficina, extension, correo, direccion, Tipo, idAdmin) VALUES (3010825690101, 'Jony', 58446376, 233224, 301, 'rodriguezmarvindaniel@gmail.com', 'Zona10', 'Administrador',37780352);

--INSERT INTO Modulo values(01,'Modulo Inventario','MI','registro productos','no','SI',01);
--INSERT INTO Modulo values(02,'Modulo Ventas','MV','registrar ventas','no','SI',01);
--INSERT INTO Modulo values(03,'Modulo Compras','MC','registrar compra','no','SI',01);
--INSERT INTO Modulo values(04,'Modulo Facturacion','MF','recibir las facturas','no','SI',01);
--INSERT INTO Modulo values(05,'Modulo Reclutamiento','MR','el área de recursos humanos','no','SI',01);
--INSERT INTO Modulo values(06,'Modulo Blog','MB','publicación de anuncios','no','SI',01);
--INSERT INTO Modulo values(07, 'Modulo Default', 'MD', 'ssd', 'Si',' SI',01 );

--INSERT INTO Suscripcion values(01,'01/01/2019','01/01/2020','MENSUAL',01);
--INSERT INTO Suscripcion(idSuscri,FechaI,FechaF,Tipo) values(02,'01/01/2019','01/01/2020','ANUAL');

--INSERT INTO Detalle_Modulo values(1,10,'de 1 a 10 empleados',01,01);
--INSERT INTO Detalle_Modulo values(2,11,'de 1 a 10 empleados',02,01);


--INSERT INTO Detalle_Modulo values(3,120,'de 1 a 10 empleados',03,02);
--INSERT INTO Detalle_Modulo values(4,130,'de 1 a 10 empleados',04,02);

--INSERT INTO Detalle_Modulo values(5,14,'de 11 a 15 empleados',01,01);
--INSERT INTO Detalle_Modulo values(6,15,'de 11 a 15 empleados',05,01);

--INSERT INTO Detalle_Modulo values(7,150,'de 11 a 15 empleados',01,02);
--INSERT INTO Detalle_Modulo values(8,160,'de 11 a 15 empleados',05,02);

--INSERT INTO Detalle_Modulo values(9,22,'de 16 a 25 empleados',03,01);
--INSERT INTO Detalle_Modulo values(10,23,'de 16 a 25 empleados',04,01);

--INSERT INTO Detalle_Modulo values(11,200,'de 16 a 25 empleados',03,02);
--INSERT INTO Detalle_Modulo values(12,215,'de 16 a 25 empleados',06,02);

--INSERT INTO Detalle_Modulo values(13,20,'de 26 a 40 empleados',01,01);
--INSERT INTO Detalle_Modulo values(14,21,'de 26 a 40 empleados',02,01);

--INSERT INTO Detalle_Modulo values(15,26,'de 41 a 50 empleados',03,01);
--INSERT INTO Detalle_Modulo values(16,28,'de 41 a 50 empleados',04,01);

--INSERT INTO Detalle_Modulo values(17,240,'de 26 a 40 empleados',05,02);
--INSERT INTO Detalle_Modulo values(18,250,'de 26 a 40 empleados',06,02);

--INSERT INTO Detalle_Modulo values(19,260,'de 41 a 50 empleados',01,02);
--INSERT INTO Detalle_Modulo values(20,280,'de 41 a 50 empleados',02,02);

--INSERT INTO Detalle_Modulo values(21,50,'de más de 51 empleados',03,01);
--INSERT INTO Detalle_Modulo values(22,50,'de más de 51 empleados',04,01);

--INSERT INTO Detalle_Modulo values(23,290,'de más de 51 empleados',05,02);
--INSERT INTO Detalle_Modulo values(24,300,'de más de 51 empleados',06,02);
--INSERT INTO Detalle_Modulo values (25, 350, 'de más de 51 empleados', 07,02);

--INSERT INTO Asignacion(idDetalle,idAdmin)values(1,37780352);
--INSERT INTO Asignacion(idDetalle,idAdmin)values(2,37780352);
--INSERT INTO Asignacion(idDetalle,idAdmin)values(03,65446543);
--INSERT INTO Asignacion(idDetalle,idAdmin)values(25,37780352);

--INSERT INTO Asignacion(idDetalle,idAdmin)values(1,65446543);
--INSERT INTO Asignacion(idDetalle,idAdmin)values(25,65446543);


--INSERT INTO Trabajador(idUsu, nombre, correo, puesto, numero, Inicio, idAdmin) VALUES (01, 'juan', 'marvinmellemma@gmail.com', 'Bodega', 54656446, 'NO',37780352); 
--INSERT INTO Trabajador(idUsu, nombre, correo, puesto, numero, Inicio, idAdmin) VALUES (02, 'marvin', 'marvinmellemma@gmail.com', 'Bodega', 54656446, 'NO',37780352); 
--INSERT INTO Trabajador (idUsu, nombre, correo, puesto, numero, Inicio, idAdmin) VALUES (03, 'Maria', 'Correo@gmail.com', 'Reclutamiento',46548698, 'NO',65446543);

--INSERT INTO Acceso(idAsignacion,idUsu) VALUES (4,1);
--INSERT INTO Acceso(idAsignacion,idUsu) VALUES (1,1);
--INSERT INTO Acceso(idAsignacion,idUsu) VALUES (5,3);
--INSERT INTO Acceso(idAsignacion,idUsu) VALUES (6,3);

--UPDATE AdminsitradorServicio SET Usuario = 'ms', Contraseña = 's' WHERE idAdmin = 37780352;
--UPDATE AdminsitradorServicio SET Usuario = 'tt', Contraseña = 'u' WHERE idAdmin = 65446543;
--UPDATE Trabajador SET correo = 'js', pass = 'k' WHERE idUsu = 1;
--UPDATE Trabajador SET correo = 'ff', pass = 'r' WHERE idUsu = 3;
---------------------------------------------------------------------------------------------------------------------------------------

--INSERT INTO Bodega values(1, 'Bodegas', 'nueva bodega', 'altabaja', 37780352);
--INSERT INTO Pasillo values(1,'30','25', 1);
--INSERT INTO Pasillo values(2,'32','28', 1); 
--INSERT INTO Estante values('B', 1, 1, '25 cm', '20 cm', '13 cm');
--INSERT INTO Estante values('A', 2, 1, '30 cm','20 cm','10cm');
--INSERT INTO Nivel values(33, 'B', 1, 1, '18 cm', '25 cm', '20 cm');
--INSERT INTO Nivel values (11,'A',2,1,'10 cm','30 cm','20 cm');
--INSERT INTO Bodega values(2, 'Mas', 'dsd', 'como', 37780352);
--INSERT INTO  Pasillo values (35, '22', '15', 2);
--INSERT INTO Estante values('xx', 35, 2, '25 cm', '20 cm', '13 cm');
--INSERT INTO Nivel values(27, 'xx', 35, 2, '18 cm', '25 cm', '20 cm');
-----------------------------------------------------------------------------------------------------------------------------

--INSERT INTO Entrada (FechaExatca, Producto, Proveedor, cantidad, costo, total, idAdmin) values('10/10', 2, 'Maria', 4, 10, 40, 37780352);
--INSERT INTO Ubicacion_Producto (cantidad, Producto, entro, gestion, FechaEntrada, Bodega, Pasillo, idEstante, idNivel) values (10, 2, 'Ultimo', 'Lotes','',1, 2, 10, 11);
--INSERT INTO Lote (Costo_Lote, Bodega) values (40,1);
--INSERT INTO Asignacion_Lote (Costo, Lote, idUbicacion) values(10, 1, 2);
--INSERT INTO Saldo(Costo, cantidad, Bodega, idUbicacion) values(22, 3, 1, 1);
--INSERT INTO salida(FechaExatca, Producto, Recibe, cantidad, costotal, idAdmin) values('', 2, 'Karla', 32, 34, 37780352);

--INSERT INTO AsignacionSaldo (Saldo, ubicacion) values (1, 1); 

---------------------------------------------------------------------------------------------------------------------------------------------
--UPDATE Ubicacion_Producto SET entro = 'No' WHERE idUbicacion=1;
--UPDATE Lote SET Costo_Lote = 5564 WHERE idLote = 1;

--INSERT INTO Proveedor VALUES (465, 'Eloisa', 'Zona10', 58454, 'Keila', 'sfsd@gmai.com', 6546,37780352); 
--INSERT INTO categoria values ();
--INSERT INTO cliente VALUES (454,'Nombre', 'Direccion', 6454, 'Persona', 'correo', 'Limite', 'dias', 'Admin', 'idc');
--UPDATE TarjetadeCredito SET Pago = 'NO' WHERE Pago = 'SI' AND idAdmin = 37780352;
--UPDATE TarjetadeCredito SET Pago = 'SI' WHERE TarjetadeCredito = 452324242426;

--INSERT INTO presentacion (Descripcion, Abreviatura) VALUES ('sfs','sfss');
--INSERT INTO clasificacion (Descripcion, Abreviatura) VALUES ('ds','sfsdf');
--INSERT INTO ProductoNuevo VALUES (3123, 4243, 'Dsa', 'sdf', 1, 1, 37780352);

--UPDATE Saldo SET Costo = 307, cantidad=8 WHERE idSaldo = 1;

--DELETE FROM Acceso WHERE idAsignacion = 1;
--DELETE FROM Asignacion WHERE idDetalle =1;

--UPDATE Ubicacion_Producto SET cantidad = 5 WHERE idUbicacion = 4;

--UPDATE Asignacion_Lote SET Costo = 3 WHERE idLP = 1;
--UPDATE Lote SET Costo_Lote = 25 WHERE idLote = 1;


--DELETE FROM Ubicacion_Producto;
--DELETE FROM Entrada;
--DELETE FROM Entrada;
--DELETE FROM Saldo;
--DELETE FROM Asignacion_Lote;
--DELETE FROM Lote;


--DELETE FROM Entrada;
--DELETE FROM Ubicacion_Producto;
--DELETE FROM Lote;
--DELETE FROM Asignacion_Lote;

--DELETE FROM salida;
--DELETE FROM Detalle_Modulo WHERE idSuscri = 232;
--DELETE FROM Suscripcion WHERE Tipo = 'MENSUAL';

--DELETE FROM Nivel WHERE idNivel =12;

--DELETE FROM Asignacion WHERE idAdmin = 37780352;

--DELETE FROM Lote WHERE idLote !=1;
--DELETE FROm Ubicacion_Producto WHERE idUbicacion =3;

--DELETE FROM Entrada WHERE idEntrada = 3;

--UPDATE Trabajador SET pass = 'sfds', Inicio = 'SI' WHERE idUsu = 2342;

--UPDATE Trabajador SET Inicio = 'NO';
--UPDATE AdminsitradorServicio SET Suscripcion = 'MENSUAL' WHERE idAdmin = 37780352;
--UPDATE AdminsitradorServicio SET Suscripcion = 'ANUAL' WHERE idAdmin = 65446543;
--UPDATE AdminsitradorServicio SET Inicio = 'NO' WHERE idAdmin = 37780352;

--UPDATE Detalle_Modulo SET Precio = 100, idRango = 'de 11 a 15 empleados', idModulo = 3, idSuscri = 2 WHERE idDetalle = 3;

--UPDATE Ubicacion_Producto SET cantidad = 2 WHERE idUbicacion = 2;  

--DELETE FROM TarjetadeCredito WHERE TarjetadeCredito = 4234234;
--DELETE FROM Asignacion WHERE idAsignacion = 1;

--SELECT * FROM AdminsitradorServicio WHERE idAdmin = 37780352;
----SELECT * FROM AdminsitradorServicio;
--SELECT habilitado, idModulo FROM Modulo WHERE habilitado = 'NO' AND idModulo = 2;
--SELECT * FROM Suscripcion WHERE Tipo != 'MENSUAL';
--SELECT idAsignacion, Detalle_Modulo.idDetalle, Detalle_Modulo.Precio,Detalle_Modulo.idRango, Detalle_Modulo.idSuscri,Modulo.idModulo,Modulo.Nombre FROM Detalle_Modulo,Modulo,Asignacion WHERE Detalle_Modulo.idModulo = Modulo.idModulo AND Asignacion.idDetalle = Detalle_Modulo.idDetalle AND Asignacion.idAdmin = 37780352;
--SELECT idDetalle, Precio, idRango, Modulo.idModulo, Nombre, Tipo FROM Detalle_Modulo, Modulo,Suscripcion WHERE NOT(idRango = 'de 1 a 10 empleados' AND Tipo = 'MENSUAL') AND Detalle_Modulo.idSuscri = Suscripcion.idSuscri AND Detalle_Modulo.idModulo = Modulo.idModulo;
--SELECT * FROM Detalle_Modulo,Modulo ,Suscripcion WHERE idRango = 'de 1 a 10 empleados' AND Tipo = 'MENSUAL' AND Detalle_Modulo.idSuscri = Suscripcion.idSuscri AND Detalle_Modulo.idModulo = Modulo.idModulo AND Modulo.Nombre = 'Modulo Inventario'; 
--SELECT Trabajador.idUsu,Trabajador.nombre,correo, pass, AdminsitradorServicio.idAdmin, AdminsitradorServicio.Nombre, Trabajador.Inicio FROM Trabajador, AdminsitradorServicio WHERE AdminsitradorServicio.idAdmin = Trabajador.idAdmin AND correo = 'js';
----SELECT COUNT(idUsu) AS Numero FROM Trabajador WHERE idAdmin = 37780352
----SELECT SUM(Precio) AS Suma FROM Detalle_Modulo,Asignacion WHERE Detalle_Modulo.idDetalle = Asignacion.idDetalle AND Asignacion.idAdmin = 37780352;
--SELECT idAcceso, Trabajador.nombre AS NombreTrabajador, correo, Modulo.Nombre AS ModuloAcceso FROM Acceso, Trabajador, Asignacion, Detalle_Modulo, Modulo WHERE Acceso.idAsignacion = Asignacion.idAsignacion AND Detalle_Modulo.idDetalle = Asignacion.idDetalle AND  Detalle_Modulo.idModulo = Modulo.idModulo AND Acceso.idUsu = Trabajador.idUsu  AND Trabajador.idAdmin = 37780352;
----SELECT Precio FROM Asignacion, Detalle_Modulo WHERE  Detalle_Modulo.idDetalle = Asignacion.idDetalle AND idAsignacion = 1;
--SELECT TarjetadeCredito, NombreTarjeta,FechaVencimiento,TipoTarjeta FROM TarjetadeCredito WHERE Pago = 'SI' AND idAdmin = 37780352;
--SELECT * FROM Proveedor;
--SELECT idCliente, Nombre, Direccion, Telefono, PersonaContacto, Correo, LimiteCredito, diasCredito, cliente.idC, Abreviatura, Descripcion FROM cliente, categoria WHERE cliente.idC = categoria.idC AND idAdmin = 37780352;
--SELECT idProducto AS Codigo, codigobarra, Nombre, ProductoNuevo.Descripcion, clasificacion.idc, clasificacion.Descripcion, clasificacion.Abreviatura, presentacion.idp, presentacion.Descripcion, presentacion.Abreviatura FROM ProductoNuevo, clasificacion, presentacion WHERE ProductoNuevo.idc = clasificacion.idc AND ProductoNuevo.idp = presentacion.idp AND ProductoNuevo.idAdmin = 37780352;
--SELECT * FROM ContactoAdmin;
--SELECT idp FROM presentacion WHERE Abreviatura = 'sdfs';
--SELECT * FROM AdminsitradorServicio;
--SELECT Precio.idPrecio, Precio.Suscripcion, Precio.usuarios, Precio.precio,Modulo.idModulo ,Modulo.Nombre, AsignacionPrecio.idAsignacion FROM Precio, Modulo, AsignacionPrecio WHERE Modulo.idModulo = Precio.idModulo AND AsignacionPrecio.idPrecio = Precio.idPrecio AND AsignacionPrecio.idAdmin = 37780352 ;
--SELECT Trabajador.idUsu, Trabajador.nombre, Trabajador.correo, Trabajador.puesto, Precio.idPrecio, Precio.usuarios, Modulo.Nombre, AsignacionSus.idSus FROM Trabajador, Precio, Modulo,AsignacionSus WHERE Trabajador.idUsu = AsignacionSus.idUsu AND Modulo.idModulo = Precio.idModulo AND Precio.idPrecio = AsignacionSus.idPrecio AND Precio.idPrecio = 32 AND Trabajador.idAdmin = 37780352;
--SELECT * FROM Precio, Modulo WHERE Precio.idModulo = Modulo.idModulo AND Precio.usuarios != '1 a 10 empleados';
--SELECT COUNT(Trabajador.idUsu) AS Numbero FROM Trabajador, Precio, Modulo,AsignacionSus WHERE Trabajador.idUsu = AsignacionSus.idUsu AND Modulo.idModulo = Precio.idModulo AND Precio.idPrecio = AsignacionSus.idPrecio AND Precio.idPrecio = 12 AND Trabajador.idAdmin = 37780352;;
----SELECT * FROM AsignacionPrecio;
----SELECT idPrecio FROM AsignacionPrecio WHERE idAdmin = 37780352;
--SELECT usuarios FROM Precio WHERE idPrecio = 12;

----------------------------------------------------------------------------------------------------------------
SELECT * FROM AdminsitradorServicio;
SELECT Trabajador.idUsu, Trabajador.nombre, correo, pass, AdminsitradorServicio.idAdmin, AdminsitradorServicio.Nombre, Trabajador.Inicio FROM Trabajador, AdminsitradorServicio WHERE AdminsitradorServicio.idAdmin = Trabajador.idAdmin;
--SELECT Modulo.defa, Modulo.Nombre FROM  Detalle_Modulo, Modulo, Asignacion, Acceso WHERE Modulo.idModulo = Detalle_Modulo.idModulo AND Detalle_Modulo.idDetalle = Asignacion.idDetalle AND Asignacion.idAsignacion = Acceso.idAsignacion AND idUsu = 1;
SELECT * FROM Bodega;
SELECT * FROM Pasillo;
--SELECT * FROM Estante;
SELECT * FROM Nivel;
SELECT * FROM Estante;
SELECT * FROM Proveedor WHERE idAdmin = 37780352;
SELECT * FROM ProductoNuevo WHERE idAdmin = 37780352;
SELECT * FROM cliente WHERE idAdmin = 37780352;

SELECT * FROM Entrada WHERE idAdmin = 37780352;
SELECT * FROM Ubicacion_Producto;
SELECT * FROM Lote;
SELECT * FROM Asignacion_Lote; 
SELECT * FROM Saldo;
SELECT * FROM AsignacionSaldo;


--SELECT * FROM Ubicacion_Producto, ProductoNuevo, Entrada WHERE Ubicacion_Producto.Producto = ProductoNuevo.idProducto AND ProductoNuevo.idProducto = Entrada.Producto AND Ubicacion_Producto.Producto = Entrada.Producto AND ProductoNuevo.idProducto = 1 AND idUbicacion = 1;

--SELECT Costo, Saldo.cantidad FROM Saldo, AsignacionSaldo, Ubicacion_Producto WHERE Ubicacion_Producto.idUbicacion = AsignacionSaldo.ubicacion AND Saldo.idSaldo = AsignacionSaldo.Saldo AND Ubicacion_Producto.idUbicacion = 3;
--SELECT * FROM Lote, Asignacion_Lote, Ubicacion_Producto WHERE Ubicacion_Producto.idUbicacion = Asignacion_Lote.idUbicacion AND Lote.idLote = Asignacion_Lote.Lote AND Ubicacion_Producto.idUbicacion = 1;


--SELECT Costo, Saldo.cantidad, idSaldo FROM AsignacionSaldo, Saldo, Ubicacion_Producto WHERE AsignacionSaldo.Saldo = Saldo.idSaldo AND Ubicacion_Producto.idUbicacion = AsignacionSaldo.ubicacion AND Saldo.Bodega = 1 AND Ubicacion_Producto.Producto = 1;

--SELECT Sum(cantidad) AS Total FROM Bodega, Ubicacion_Producto WHERE Ubicacion_Producto.Bodega = Bodega.idBodega AND Producto = 1 AND gestion = 'Saldo' AND idAdmin = 37780352;
----SELECT idUbicacion AS Codigo_Ubicacion ,cantidad AS Cantidad_Poducto, ProductoNuevo.Nombre AS Nombre_Producto, Bodega, Pasillo, idEstante AS Estante, idNivel AS idNivel FROM Ubicacion_Producto, Bodega, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.Bodega = Bodega.idBodega AND cantidad !=0 AND Producto = 3 AND Bodega.idAdmin = 37780352;
--SELECT MAX(idUbicacion) AS salida FROM Ubicacion_Producto, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND cantidad != 0 AND idUbicacion < 3;
--SELECT * FROM salida;

--SELECT idProducto AS Numero_Producto, Nombre, Ubicacion_Producto.cantidad AS Cantidad, gestion AS GESTION_DE_PRODUCTO, Pasillo, idEstante AS Estante, idNivel AS Nivel, FechaEntrada FROM Ubicacion_Producto, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.cantidad !=0 AND Bodega = 1;

--SELECT idProducto AS Numero_Producto, Nombre, Saldo.Costo AS CostoPromedio_en_Bodega, Ubicacion_Producto.cantidad AS Cantidad, gestion AS GESTION_DE_PRODUCTO, Ubicacion_Producto.Bodega, Pasillo, idEstante AS Estante, idNivel AS Nivel, FechaEntrada  FROM Saldo, AsignacionSaldo, Ubicacion_Producto, ProductoNuevo WHERE Saldo.idSaldo= AsignacionSaldo.Saldo AND AsignacionSaldo.ubicacion = Ubicacion_Producto.idUbicacion AND ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.cantidad !=0  AND Ubicacion_Producto.Producto =  + 4;

--SELECT idProducto AS Numero_Producto, Nombre, Asignacion_Lote.Costo AS CostoPromedio, Ubicacion_Producto.cantidad AS Cantidad, gestion AS GESTION_DE_PRODUCTO, Lote.Costo_Lote, Ubicacion_Producto.Bodega,Pasillo, idEstante AS Estante, idNivel AS Nivel, FechaEntrada FROM Lote, Asignacion_Lote, Ubicacion_Producto, ProductoNuevo WHERE Lote.idLote = Asignacion_Lote.Lote AND Asignacion_Lote.idUbicacion = Ubicacion_Producto.idUbicacion AND ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.cantidad != 0 AND ProductoNuevo.idProducto = 1;



--SELECT * FROM Ubicacion_Producto, Asignacion_Lote, Lote WHERE Lote.idLote = Asignacion_Lote.Lote AND Ubicacion_Producto.Bodega = 1 AND Costo = 10 AND Producto = 2 AND Ubicacion_Producto.idUbicacion = Asignacion_Lote.idUbicacion;
--SELECT Ubicacion_Producto.idUbicacion FROM Ubicacion_Producto, Asignacion_Lote WHERE entro = 'ultimo' AND Bodega = 1 AND Costo = 10 AND Producto = 2 AND Ubicacion_Producto.idUbicacion = Asignacion_Lote.idUbicacion;

--SELECT * FROM Ubicacion_Producto WHERE gestion AND cantidad = "+ cantidad +" AND Producto = " + producto + " AND Bodega = "+ bodega +" AND Pasillo = "+ pasillo +" AND idEstante = '" + estante + "' AND idNivel = " + nivel

--SELECT * FROM AdministradorSistema;
--SELECT * FROM AdminsitradorServicio;d
--SELECT * FROM ContactoAdmin;
--SELECT * FROM TarjetadeCredito;
--SELECT * FROM Modulo;
--SELECT * FROM Suscripcion;
--SELECT * FROM Detalle_Modulo;
--SELECT * FROM Asignacion;
--SELECT * FROM Trabajador;
--SELECT * FROM Acceso;
--SELECT * FROM Proveedor;
--SELECT * FROM categoria;
--SELECT * FROM cliente;
--SELECT * FROM presentacion;
--SELECT * FROM clasificacion;
--SELECT * FROM ProductoNuevo;


--DELETE FROM Modulo WHERE idModulo = 131;

--INSERT INTO Precio values (01,'Mensual','1-10',10,01);

--UPDATE Modulo SET habilitado = 'Habilitado' WHERE idModulo = 1;		



