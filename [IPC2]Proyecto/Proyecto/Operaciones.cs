using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Collections;


namespace Proyecto
{
    public class Operaciones
    {
        Conexion conexion = new Conexion();
        ArrayList Modulos;

        public int Login(string name, string pass) {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT Usuario,Pass FROM AdministradorSistema WHERE Usuario='" + name + "' AND pass='" + pass + "'", conexion.getConexion());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    return 1;
                }
                else {
                    SqlCommand cm = new SqlCommand("SELECT Usuario, Contraseña FROM AdminsitradorServicio WHERE Usuario='" + name + "' AND Contraseña='" + pass + "'", conexion.getConexion());
                    SqlCommand cms = new SqlCommand("SELECT idAdmin, Nombre, Rango, TipoEmpresa, Suscripcion, Inicio FROM AdminsitradorServicio WHERE Usuario = '" + name + "' AND Contraseña = '" + pass + "'", conexion.getConexion());
                    SqlDataReader drs = cm.ExecuteReader();
                    SqlDataReader dt = cms.ExecuteReader();
                    if (drs.Read())
                    {
                        if (dt.Read()) {
                            Conexion.NIT = Convert.ToInt32(dt["idAdmin"].ToString());
                            Conexion.NOMBRE = dt["Nombre"].ToString();
                            Conexion.TIPO = dt["TipoEmpresa"].ToString();
                            Conexion.TAMA = dt["Rango"].ToString();
                            Conexion.SUSCRIBE = dt["Suscripcion"].ToString();
                            if ("NO" == dt["Inicio"].ToString()) {
                                return 3;
                            }
                        }
                        return 2;
                    }
                    else
                    {
                        
                        SqlCommand cmr = new SqlCommand("SELECT Trabajador.idUsu, Trabajador.nombre, correo, pass, AdminsitradorServicio.idAdmin, AdminsitradorServicio.Nombre, Trabajador.Inicio FROM Trabajador, AdminsitradorServicio WHERE AdminsitradorServicio.idAdmin = Trabajador.idAdmin AND correo = '" + name + "' AND pass = '" + pass + "'", conexion.getConexion());
                        SqlDataReader drst = cmr.ExecuteReader();
                        if (drst.Read())
                        {
                            Conexion.Codigo = Convert.ToInt32(drst["idUsu"].ToString());
                            Conexion.Nombres = drst["nombre"].ToString();
                            Conexion.NIT = Convert.ToInt32(drst["idAdmin"].ToString());
                            Conexion.NOMBRE = drst["Nombre"].ToString();
                            if ("NO" == drst["Inicio"].ToString()) 
                            {
                                return 5;
                            }
                            return 4;
                        }
                        return 0;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return 15;
            }

        }
        public bool ActualizarPass(string pass) {
            try
            {
                string query = "UPDATE AdminsitradorServicio SET  Contraseña = @Contraseña, Inicio = @Inicio  WHERE idAdmin = @idAdmin";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());

                cmd.Parameters.AddWithValue("@Contraseña", pass);
                cmd.Parameters.AddWithValue("@Inicio", "SI");
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public bool ActualizarPassU(string pass)
        {
            try
            {
                string query = "UPDATE Trabajador SET pass = @Contraseña, Inicio = @Inicio WHERE idUsu = @idAdmin";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@Contraseña", pass);
                cmd.Parameters.AddWithValue("@Inicio", "SI");
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.Codigo);
                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }


        public bool InsertAdminService(int nit, string nombre, string tipoEmpresa, string tamanio) {
            try
            {
                string query = "INSERT INTO AdminsitradorServicio (idAdmin,Nombre,TipoEmpresa, Rango, Inicio) VALUES (@idAdmin, @Nombre, @TipoEmpresa, @Rango, @Inicio)";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@idAdmin", nit);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@TipoEmpresa", tipoEmpresa);
                cmd.Parameters.AddWithValue("@Rango", tamanio);
                cmd.Parameters.AddWithValue("@Inicio", "NO");
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public int InsertarTarjeta(long Tarjeta, string NombreTarjeta, string Fecha, string TipoTarjeta, int crv, string pago, int Admin) {
            try {
                SqlCommand cmds = new SqlCommand("SELECT Pago FROM TarjetadeCredito WHERE Pago = 'SI' AND idAdmin = " + Admin, conexion.getConexion());
                SqlDataReader dr = cmds.ExecuteReader();
                if (dr.Read())
                {
                    if (pago == "SI")
                    {
                        return 2;
                    }
                    else {
                        string query = "INSERT INTO TarjetadeCredito VALUES (@TarjetadeCredito,@NombreTarjeta,@FechaVencimiento,@TipoTarjeta,@crv, @pago, @Admin)";
                        SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                        cmd.Parameters.AddWithValue("@TarjetadeCredito", Tarjeta);
                        cmd.Parameters.AddWithValue("@NombreTarjeta", NombreTarjeta);
                        cmd.Parameters.AddWithValue("@FechaVencimiento", Fecha);
                        cmd.Parameters.AddWithValue("@TipoTarjeta", TipoTarjeta);
                        cmd.Parameters.AddWithValue("@crv", crv);
                        cmd.Parameters.AddWithValue("@pago", pago);
                        cmd.Parameters.AddWithValue("@Admin", Admin);
                        cmd.ExecuteNonQuery();
                        return 1;
                    }
                }
                else {
                    string query = "INSERT INTO TarjetadeCredito VALUES (@TarjetadeCredito,@NombreTarjeta,@FechaVencimiento,@TipoTarjeta,@crv, @pago, @Admin)";
                    SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                    cmd.Parameters.AddWithValue("@TarjetadeCredito", Tarjeta);
                    cmd.Parameters.AddWithValue("@NombreTarjeta", NombreTarjeta);
                    cmd.Parameters.AddWithValue("@FechaVencimiento", Fecha);
                    cmd.Parameters.AddWithValue("@TipoTarjeta", TipoTarjeta);
                    cmd.Parameters.AddWithValue("@crv", crv);
                    cmd.Parameters.AddWithValue("@pago", pago);
                    cmd.Parameters.AddWithValue("@Admin", Admin);
                    cmd.ExecuteNonQuery();
                    return 1;
                }


            } catch (Exception) {
                return 0;
            }
        }
        public bool ActualizarT1()
        {
            try
            {
                string query = "UPDATE TarjetadeCredito SET Pago = 'NO' WHERE Pago = 'SI' AND idAdmin = @idAdmin";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public bool ActualizarT2(int id)
        {
            try
            {
                string query = "UPDATE TarjetadeCredito SET Pago = 'SI' WHERE TarjetadeCredito = @id";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public bool InsertarContactoAdmin(long DPI, string nombre, int numero, int numerooficina, int extension, string correo, string direccion, string tipo, int idAdmin) {
            try
            {
                string query = "INSERT INTO ContactoAdmin (DPI, nombre, numero, numeroficina, extension, correo, direccion, Tipo, idAdmin) VALUES (@DPI, @nombre, @numero, @numeroficina, @extension, @correo, @direccion, @Tipo, @idAdmin)";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@DPI", DPI);
                cmd.Parameters.AddWithValue("@nombre", nombre);
                cmd.Parameters.AddWithValue("@numero", numero);
                cmd.Parameters.AddWithValue("@numeroficina", numerooficina);
                cmd.Parameters.AddWithValue("@extension", extension);
                cmd.Parameters.AddWithValue("@correo", correo);
                cmd.Parameters.AddWithValue("@direccion", direccion);
                cmd.Parameters.AddWithValue("@Tipo", tipo);
                cmd.Parameters.AddWithValue("@idAdmin", idAdmin);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }
        public bool ActualizarUsuario(int nit, string usuario, string pass) {
            try
            {
                string query = "UPDATE AdminsitradorServicio SET Usuario = @Usuario, Contraseña = @Contraseña, Inicio = @Inicio  WHERE idAdmin = @idAdmin";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@Usuario", usuario);
                cmd.Parameters.AddWithValue("@Contraseña", pass);
                cmd.Parameters.AddWithValue("@Inicio", "NO");
                cmd.Parameters.AddWithValue("@idAdmin", nit);
                cmd.ExecuteNonQuery();
                EnvioCorreo(nit, usuario, pass);
                return true;
            }
            catch (Exception e) {
                return false;
            }

        }
        public bool IngresarModulo(int codigo, string nombre, string abreviatura, string defa, string descripcion) {
            try
            {
                string query = "INSERT INTO Modulo (idModulo, Nombre, abreviatura, Descripcion, defa) VALUES (@idModulo, @Nombre, @abreviatura, @Descripcion, @defa)";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@idModulo", codigo);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@abreviatura", abreviatura);
                cmd.Parameters.AddWithValue("@Descripcion", descripcion);
                cmd.Parameters.AddWithValue("@defa", defa);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception) {
                return false;
            }
        }
        public void EnvioCorreoU(string correo, string pass)
        {

            System.Net.Mail.MailMessage mssg = new System.Net.Mail.MailMessage();
            mssg.To.Add(correo);
            mssg.Subject = "HELLO WORLD";
            mssg.SubjectEncoding = System.Text.Encoding.UTF8;
            mssg.Bcc.Add("mdaniel_cool@hotmail.com");
            mssg.Body = "Bienvenido a Hello World, Su Administrador acaba de crear su Usuario, para iniciar ingrese su correo como usuario y su" +
                "CONTRASEÑA: " + pass + "\n" +
                  "al ingresar por primera vez cambie de contraseña" + "\n" +
                "Sin nada mas que sea de su agrado la aplicacion";
            mssg.BodyEncoding = System.Text.Encoding.UTF8;
            mssg.IsBodyHtml = true;
            mssg.From = new System.Net.Mail.MailAddress("mdaniel_cool@hotmail.com");

            System.Net.Mail.SmtpClient Cliente = new System.Net.Mail.SmtpClient();

            Cliente.Credentials = new System.Net.NetworkCredential("mdaniel_cool@hotmail.com", "COOL710911");
            Cliente.Port = 587;
            Cliente.EnableSsl = true;
            Cliente.Host = "smtp-mail.outlook.com";
            try
            {
                Cliente.Send(mssg);
                Console.WriteLine("se envia el correo");
            }
            catch (Exception)
            {
                Console.WriteLine("No se envia el correo");
            }
        }
        public void EnvioCorreoUs()
        {

            System.Net.Mail.MailMessage mssg = new System.Net.Mail.MailMessage();
            mssg.To.Add("mdanielcool98@gmail.com");
            mssg.Subject = "HELLO WORLD";
            mssg.SubjectEncoding = System.Text.Encoding.UTF8;
            mssg.Bcc.Add("mdaniel_cool@hotmail.com");
            mssg.Body = "El cliente "+ Conexion.NOMBRE + " Ha solicitado un cambio de tarjeta, porfavor contactese con el cliente y autoriz";
            mssg.BodyEncoding = System.Text.Encoding.UTF8;
            mssg.IsBodyHtml = true;
            mssg.From = new System.Net.Mail.MailAddress("mdaniel_cool@hotmail.com");

            System.Net.Mail.SmtpClient Cliente = new System.Net.Mail.SmtpClient();

            Cliente.Credentials = new System.Net.NetworkCredential("mdaniel_cool@hotmail.com", "COOL710911");
            Cliente.Port = 587;
            Cliente.EnableSsl = true;
            Cliente.Host = "smtp-mail.outlook.com";
            try
            {
                Cliente.Send(mssg);
                Console.WriteLine("se envia el correo");
            }
            catch (Exception)
            {
                Console.WriteLine("No se envia el correo");
            }
        }
        public void EnvioCorreo(int nit, string usuario, string pass) {
            SqlCommand envio = new SqlCommand("SELECT correo FROM ContactoAdmin WHERE Tipo = 'Administrador' AND idAdmin = " + nit, conexion.getConexion());
            SqlDataReader dr = envio.ExecuteReader();
            if (dr.Read())
            {
                System.Net.Mail.MailMessage mssg = new System.Net.Mail.MailMessage();

                mssg.To.Add(dr["correo"].ToString());
                mssg.Subject = "HELLO WORLD";
                mssg.SubjectEncoding = System.Text.Encoding.UTF8;
                mssg.Bcc.Add("mdaniel_cool@hotmail.com");
                mssg.Body = "Hello World le da la bienvenida. Gracias por preferirnos, en el primer inicio de sesion porfavor " +
                    "Cambie de contraseña;" + "\n" +
                    "USUARIO: " + usuario + "\n" +
                    "CONTRASEÑA: " + pass + "\n" +
                    "Sin nada mas que sea de su agrado la aplicacion";
                mssg.BodyEncoding = System.Text.Encoding.UTF8;
                mssg.IsBodyHtml = true;
                mssg.From = new System.Net.Mail.MailAddress("mdaniel_cool@hotmail.com");

                System.Net.Mail.SmtpClient Cliente = new System.Net.Mail.SmtpClient();

                Cliente.Credentials = new System.Net.NetworkCredential("mdaniel_cool@hotmail.com", "COOL710911");
                Cliente.Port = 587;
                Cliente.EnableSsl = true;
                Cliente.Host = "smtp-mail.outlook.com";

                try
                {
                    Cliente.Send(mssg);
                    Console.WriteLine("se envia el correo");
                }
                catch (Exception)
                {
                    Console.WriteLine("No se envia el correo");
                }

            }
            else
            {
                Console.WriteLine("No se encuentra el correo");
            }
        }
        public void EnvioCorreoGC()
        {
            SqlCommand envio = new SqlCommand("SELECT correo FROM ContactoAdmin WHERE Tipo = 'Gerencial' AND idAdmin = " + Conexion.NIT, conexion.getConexion());
            SqlDataReader dr = envio.ExecuteReader();
            if (dr.Read())
            {
                System.Net.Mail.MailMessage mssg = new System.Net.Mail.MailMessage();

                mssg.To.Add(dr["correo"].ToString());
                mssg.Subject = "HELLO WORLD";
                mssg.SubjectEncoding = System.Text.Encoding.UTF8;
                mssg.Bcc.Add("mdaniel_cool@hotmail.com");
                mssg.Body = "Un cordial Saludo, Informadnole que se ha hecho un cambio de suscripcion los cuales se detallan: Tipo de Suscripcion: "+ Conexion.SUSCRIBE + "Rango de Usuarios:" + Conexion.TAMA;
                mssg.BodyEncoding = System.Text.Encoding.UTF8;
                mssg.IsBodyHtml = true;
                mssg.From = new System.Net.Mail.MailAddress("mdaniel_cool@hotmail.com");

                System.Net.Mail.SmtpClient Cliente = new System.Net.Mail.SmtpClient();

                Cliente.Credentials = new System.Net.NetworkCredential("mdaniel_cool@hotmail.com", "COOL710911");
                Cliente.Port = 587;
                Cliente.EnableSsl = true;
                Cliente.Host = "smtp-mail.outlook.com";

                try
                {
                    Cliente.Send(mssg);
                    Console.WriteLine("se envia el correo");
                }
                catch (Exception)
                {
                    Console.WriteLine("No se envia el correo");
                }

            }
            else
            {
                Console.WriteLine("No se encuentra el correo");
            }
        }
        public void EnvioCorreoGCT()
        {
            SqlCommand envio = new SqlCommand("SELECT correo FROM ContactoAdmin WHERE Tipo = 'Comercial' AND idAdmin = " + Conexion.NIT, conexion.getConexion());
            SqlDataReader dr = envio.ExecuteReader();
            SqlCommand tarjeta = new SqlCommand("SELECT TarjetadeCredito, NombreTarjeta FROM TarjetadeCredito WHERE Pago = 'SI' AND idAdmin = " + Conexion.NIT, conexion.getConexion());
            SqlDataReader drs = envio.ExecuteReader();
            if (dr.Read())
            {
                if (drs.Read()) {
                    System.Net.Mail.MailMessage mssg = new System.Net.Mail.MailMessage();
                    mssg.To.Add(dr["correo"].ToString());
                    mssg.Subject = "HELLO WORLD";
                    mssg.SubjectEncoding = System.Text.Encoding.UTF8;
                    mssg.Bcc.Add("mdaniel_cool@hotmail.com");
                    mssg.Body = "Un cordial Saludo, Informadnole que se ha hecho un cambio de suscripcion y se desea confirmar si los pagos seguiran en la tarjeta con Numero: " + drs["TarjetadeCredito"].ToString() + "y a Nombre de:" + drs["NombreTarjeta"].ToString() + "";
                    mssg.BodyEncoding = System.Text.Encoding.UTF8;
                    mssg.IsBodyHtml = true;
                    mssg.From = new System.Net.Mail.MailAddress("mdaniel_cool@hotmail.com");

                    System.Net.Mail.SmtpClient Cliente = new System.Net.Mail.SmtpClient();

                    Cliente.Credentials = new System.Net.NetworkCredential("mdaniel_cool@hotmail.com", "COOL710911");
                    Cliente.Port = 587;
                    Cliente.EnableSsl = true;
                    Cliente.Host = "smtp-mail.outlook.com";

                    try
                    {
                        Cliente.Send(mssg);
                        Console.WriteLine("se envia el correo");
                    }
                    catch (Exception)
                    {
                        Console.WriteLine("No se envia el correo");
                    }
                }
            }
            else
            {
                Console.WriteLine("No se encuentra el correo");
            }
        }
        public bool Condicion(int sus, string usuarios, int idmodulo) {

            SqlCommand cmd = new SqlCommand("SELECT idRango,idSuscri,idModulo FROM Detalle_Modulo WHERE idRango ='" + usuarios + "' AND idSuscri = " + sus + " AND idModulo = " + idmodulo, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return false;
            }
            else { return true; }
        }
        public bool CondicionHa(int idmodulo)
        {

            SqlCommand cmd = new SqlCommand("SELECT habilitado, idModulo FROM Modulo WHERE habilitado = 'NO' AND idModulo =" +  idmodulo, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return false;
            }
            else 
            { 
                return true; 
            }
        }

        public void Eliminar(string cofi) {
            string query = "DELETE FROM Suscripcion WHERE Tipo = @sus";
            SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
            cmd.Parameters.AddWithValue("@sus", cofi);
            cmd.ExecuteNonQuery();
        }
        
        public bool NuevaSus(int codigo, string inicio, string final, string tipo) {
            try
            {
                Eliminar(tipo);
                string query = "INSERT INTO Suscripcion (idSuscri,FechaI,FechaF,Tipo) values (@Codigo, @FechaI, @FechaF, @Tipo)";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@Tipo", tipo);
                cmd.Parameters.AddWithValue("@FechaF", final);
                cmd.Parameters.AddWithValue("@FechaI", inicio);
                cmd.Parameters.AddWithValue("@Codigo", codigo);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }

        public bool ActualizarPrecio(int codigo, int sus, string usuarios, double precio, int idmodulo) {
            try
            {
                if (Condicion(sus, usuarios, idmodulo))
                {
                    string query = "UPDATE Detalle_Modulo SET Precio = @precio, idRango = @usuarios, idModulo = @idModulo, idSuscri = @sus WHERE idDetalle = @codigo";
                    SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                    cmd.Parameters.AddWithValue("@precio", precio);
                    cmd.Parameters.AddWithValue("@usuarios", usuarios);
                    cmd.Parameters.AddWithValue("@idModulo", idmodulo);
                    cmd.Parameters.AddWithValue("@sus", sus);
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                    cmd.ExecuteNonQuery();
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception e)
            {
                return false;
            }

        }
        public bool ActualizarModulo(int idModulo, string habil) {
            try
            {
                string query = "UPDATE Modulo SET habilitado = @habilitado WHERE idModulo = @idModulo";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@habilitado", habil);
                cmd.Parameters.AddWithValue("@idModulo", idModulo);
                cmd.ExecuteNonQuery();
                return true;

            } catch (Exception e) {
                return false;
            }

        }
        public bool RegistrarPrecio(int codigo, int sus, string usuarios, double precio, int idmodulo) {
            try
            {
                if (Condicion(sus, usuarios, idmodulo))
                {
                    string query = "INSERT INTO Detalle_Modulo values(@idPrecio, @Precio, @usuarios, @idModulo, @sus)";
                    SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                    cmd.Parameters.AddWithValue("@sus", sus);
                    cmd.Parameters.AddWithValue("@usuarios", usuarios);
                    cmd.Parameters.AddWithValue("@Precio", precio);
                    cmd.Parameters.AddWithValue("@idModulo", idmodulo);
                    cmd.Parameters.AddWithValue("@idPrecio", codigo);
                    cmd.ExecuteNonQuery();
                    return true;
                }
                else {
                    return false;
                }

            }
            catch (Exception)
            {
                return false;
            }
        }

        public DataSet Lista(string sentencia) {

            DataSet data = new DataSet();
            try
            {
                SqlDataAdapter ds = new SqlDataAdapter(sentencia, conexion.getConexion());
                ds.Fill(data, "datos");
            }
            catch (Exception)
            {

            }
            return data;
        }
        public int Conteos() {
            try {
                SqlCommand cmd = new SqlCommand("SELECT COUNT(idUsu) AS Numero FROM Trabajador WHERE idAdmin = " + Conexion.NIT, conexion.getConexion());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    int Numero = int.Parse(dr["Numero"].ToString());
                    return Numero;
                }
                return 0;
            }
            catch (Exception) {
                return 0;
            }

        }
        public int Suma()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT SUM(Precio) AS Suma FROM Detalle_Modulo,Asignacion WHERE Detalle_Modulo.idDetalle = Asignacion.idDetalle AND Asignacion.idAdmin = " + Conexion.NIT, conexion.getConexion());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    int Numero = int.Parse(dr["Suma"].ToString());
                    return Numero;
                }
                return 0;
            }
            catch (Exception)
            {
                return 0;
            }

        }
        public int SelEliminar(int id)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT Precio FROM Asignacion, Detalle_Modulo WHERE  Detalle_Modulo.idDetalle = Asignacion.idDetalle AND idAsignacion = " + id, conexion.getConexion());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    return int.Parse(dr["Precio"].ToString());
                }
                return 0;
            }
            catch (Exception)
            {
                return 0;
            }
        }
        public int contarpago(int id)
        {
            int Conteo;
            int uno = SelEliminar(id);
            int dos = Suma();
            Conteo = dos - uno;
            return Conteo;
        }
        public int ConteoUsuarios() {
            int Conteo;
            int uno = Conteos();
            int dos = ConteoSus();

            Conteo = dos - uno;

            return Conteo;

        }
        public int ConteoSus() {
            SqlCommand cmd = new SqlCommand("SELECT Rango FROM AdminsitradorServicio WHERE idAdmin = " + Conexion.NIT, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string tamaño = dr["Rango"].ToString();

                if (tamaño == "de 1 a 10 empleados")
                {
                    return 10;
                }
                else if (tamaño == "de 11 a 15 empleados")
                {
                    return 15;
                }
                else if (tamaño == "de 16 a 25 empleados")
                {
                    return 25;
                }
                else if (tamaño == "de 26 a 40 empleados")
                {
                    return 40;
                }
                else if (tamaño == "de 41 a 50 empleados")
                {
                    return 50;
                }
            }
            return 0;
        }
        public bool InsertarA(int Detalle)
        {
            try
            {
                string query = "INSERT INTO Asignacion(idDetalle, idAdmin) values (@Detalle, @idAdmin)";
                SqlCommand cmd = new SqlCommand(query, conexion.getConexion());
                cmd.Parameters.AddWithValue("@Detalle", Detalle);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public string consultarA(int id) {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Detalle_Modulo WHERE idDetalle  = " + id, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return dr["Precio"].ToString();
            }
            else {
                return "";
            }
        }
        public bool EliminarA(int id)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Asignacion WHERE idAsignacion = @id", conexion.getConexion());
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
        public void EliminarAcc(int id)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Acceso WHERE idUsu = @id", conexion.getConexion());
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {

            }

        }
        public bool EliminarT(int id)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Trabajador WHERE idUsu = @id", conexion.getConexion());
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
        public string pass() {
            Random random = new Random();
            string password = "";
            for (int i = 0; i < 7; i++) {
                int eleccion = random.Next(0, 9);
                password += eleccion.ToString();
            }
            return password;
        }

        public bool insertarUsuario(int codigo, string nombre, string correo, string puesto, int numero, string pass) {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Trabajador(idUsu, nombre, correo, puesto, numero, pass, Inicio, idAdmin) VALUES (@codigo, @nombre, @correo, @puesto, @numero, @pass, @Inicio, @idAdmin)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@nombre", nombre);
                cmd.Parameters.AddWithValue("@correo", correo);
                cmd.Parameters.AddWithValue("@puesto", puesto);
                cmd.Parameters.AddWithValue("@numero", numero);
                cmd.Parameters.AddWithValue("@pass", pass);
                cmd.Parameters.AddWithValue("@Inicio", "NO");
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool acceso(int a, int u)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Acceso(idAsignacion,idUsu) VALUES (@idA, @idUsu)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@idA", a);
                cmd.Parameters.AddWithValue("@idUsu", u);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
         }
        public bool EliminarAsignacion() {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Asignacion WHERE idAdmin = @idAdmin", conexion.getConexion());
                cmd.Parameters.AddWithValue("@idAdmin",Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception) {
                return false;
                
            }
        }
        public bool ActualizarSUS(string tipo) 
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE AdminsitradorServicio SET Suscripcion = @tipo WHERE idAdmin = @idAdmin" , conexion.getConexion());
                cmd.Parameters.AddWithValue("@tipo", tipo);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;

            }
        }
        public bool Actualizarrango(string tipo)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE AdminsitradorServicio SET Rango = @tipo WHERE idAdmin = @idAdmin", conexion.getConexion());
                cmd.Parameters.AddWithValue("@tipo", tipo);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;

            }
        }
        public bool GuardarDetalle() 
        {
            SqlCommand cmd = new SqlCommand("SELECT idAsignacion, Nombre FROM Asignacion, Detalle_Modulo, Modulo WHERE Asignacion.idDetalle = Detalle_Modulo.idDetalle AND Detalle_Modulo.idModulo = Modulo.idModulo AND Asignacion.idAdmin = " + Conexion.NIT, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Modulos = new ArrayList();
                while (dr.Read()) {
                    Modulos.Add(dr["Nombre"].ToString());
                }
                return true;
            }
            else{
                return false;
            }
        }
        public void InsertarNuevasAsignaciones()
        {
            try {
                foreach (var item in Modulos)
                {
                    SqlCommand cmd = new SqlCommand("SELECT idDetalle FROM Detalle_Modulo,Modulo ,Suscripcion WHERE idRango = '" + Conexion.TAMA + "' AND Tipo = '" + Conexion.SUSCRIBE + "' AND Detalle_Modulo.idSuscri = Suscripcion.idSuscri AND Detalle_Modulo.idModulo = Modulo.idModulo AND Modulo.Nombre = '" + item + "'", conexion.getConexion());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        InsertarA(Convert.ToInt32(dr["idDetalle"].ToString()));
                    }
                }
            }
            catch (Exception) { 
            
            
            }
        }
        public bool InsertarProveedores(int codigo, string nombre, string direccion, int numero, string contacto, string correo, int limite)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Proveedor VALUES (@codigo, @Nombre, @Direccion, @Numero, @contacto, @correo, @limite, @idAdmin)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Direccion", direccion);
                cmd.Parameters.AddWithValue("@Numero", numero);
                cmd.Parameters.AddWithValue("@contacto", contacto);
                cmd.Parameters.AddWithValue("@correo", correo);
                cmd.Parameters.AddWithValue("@limite", limite);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool EliminarProvee(int id) 
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Proveedor WHERE idProveedor = @codigo", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", id);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool InsertarClientes(int codigo, string nombre, string direccion, int numero, string contacto, string correo, int limite, int dias, int categoria)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO cliente VALUES (@codigo, @Nombre, @Direccion, @Numero, @contacto, @correo, @limite, @dias, @idAdmin, @idc)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Direccion", direccion);
                cmd.Parameters.AddWithValue("@Numero", numero);
                cmd.Parameters.AddWithValue("@contacto", contacto);
                cmd.Parameters.AddWithValue("@correo", correo);
                cmd.Parameters.AddWithValue("@limite", limite);
                cmd.Parameters.AddWithValue("@dias", dias);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.Parameters.AddWithValue("@idc", categoria);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool InsertarCategoria(int codigo, string abreviatura, string descripcion) 
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO categoria VALUES (@codigo, @abre, @descri)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@abre", abreviatura);
                cmd.Parameters.AddWithValue("@descri", descripcion);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception) 
            {
                return false;
            }
        }
        public bool EliminarClientes(int id)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM cliente WHERE idCliente = @codigo", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", id);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool InsertarProducto(int codigo, int barra, string nombre, string descripcion, int idp, int idc)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO ProductoNuevo VALUES (@codigo, @barra, @Nombre, @Descripcion, @idp, @idc, 37780352);", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@barra", barra);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Descripcion", descripcion);
                cmd.Parameters.AddWithValue("@idp", idp);
                cmd.Parameters.AddWithValue("@idc", idc);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool InsertarPresentacion(string abreviatura, string descripcion)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO presentacion (Descripcion, Abreviatura) VALUES (@abre, @descri)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@abre", abreviatura);
                cmd.Parameters.AddWithValue("@descri", descripcion);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public int RetornoPre(string abre)
        {
            SqlCommand cmd = new SqlCommand("SELECT idp FROM presentacion WHERE Abreviatura = '" + abre + "'", conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return Convert.ToInt32(dr["idp"].ToString());
            }
            return 0;
        }
        public int RetornoClasi(string abre) 
        {
            SqlCommand cmd = new SqlCommand("SELECT idc FROM clasificacion WHERE Abreviatura = '" + abre + "'", conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return Convert.ToInt32(dr["idc"].ToString());
            }
            return 0;
        }

        public bool InsertarClasificacion(string abreviatura, string descripcion)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO clasificacion (Descripcion, Abreviatura) VALUES (@abre, @descri)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@abre", abreviatura);
                cmd.Parameters.AddWithValue("@descri", descripcion);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool EliminarProducto(int id)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM ProductoNuevo WHERE idProducto = @codigo", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", id);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        public bool InsertarBodega(int codigo, string nombre, string descripcion, string direccion) 
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Bodega values(@Codigo, @Nombre, @Descripcion, @Direccion, @idAdmin)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@Codigo", codigo);
                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Descripcion", descripcion);
                cmd.Parameters.AddWithValue("@Direccion", direccion);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception) {
                return false;
            }
        }
        public bool InsertarPasillo(int codigo, string largo, string ancho, int bodega)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Pasillo values(@codigo, @largo, @ancho, @bodega)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@largo", largo);
                cmd.Parameters.AddWithValue("@ancho", ancho);
                cmd.Parameters.AddWithValue("@bodega", bodega);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool InsertarEstante(string codigo,int Pasillo,int bodega,string largo, string ancho, string alto)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Estante values(@codigo, @Pasillo, @Bodega, @largo, @Ancho, @Alto)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@Pasillo", Pasillo);
                cmd.Parameters.AddWithValue("@Bodega", bodega);
                cmd.Parameters.AddWithValue("@largo", largo);
                cmd.Parameters.AddWithValue("@Ancho", ancho);
                cmd.Parameters.AddWithValue("@Alto", alto);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public string RetornoAncho(int ps, int bo, string estanteria)
        {
            SqlCommand cmd = new SqlCommand("SELECT ancho FROM Estante WHERE Pasillo = " + ps + " AND Bodega = " + bo + " AND idEstante = '" + estanteria + "'", conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return dr["ancho"].ToString();
            }
            return "";
        }
        public string RetornoLargo(int ps, int bo, string estanteria)
        {
            SqlCommand cmd = new SqlCommand("SELECT largo FROM Estante WHERE Pasillo = "+ ps + " AND Bodega = " + bo + " AND idEstante = '" + estanteria + "'", conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return dr["largo"].ToString();
            }
            return "";
        }


        public bool InsertarNivel(int codigo, string Estante, int Pasillo, int bodega, string alto, string largo, string ancho)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Nivel values (@codigo, @estante, @Pasillo, @Bodega, @Alto, @largo, @Ancho)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@estante", Estante);
                cmd.Parameters.AddWithValue("@Pasillo", Pasillo);
                cmd.Parameters.AddWithValue("@Bodega", bodega);
                cmd.Parameters.AddWithValue("@Alto", alto);
                cmd.Parameters.AddWithValue("@largo", largo);
                cmd.Parameters.AddWithValue("@Ancho", ancho);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool InsertarLote(double lote, int bodega) {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Lote (Costo_Lote, Bodega) values (@coste, @Bodega)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@coste", lote);
                cmd.Parameters.AddWithValue("@Bodega", bodega);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
        public bool InsertarASiLote(int costo, int lote, int producto) {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Asignacion_Lote (Costo, Lote, idUbicacion) values(@costo, @lote, @producto)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@costo", costo);
                cmd.Parameters.AddWithValue("@lote", lote);
                cmd.Parameters.AddWithValue("@producto", producto);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public bool InsertarEntrada(string fecha, int producto, string proveedor, int cantidad, double costo, double total)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Entrada (FechaExatca, Producto, Proveedor, cantidad, costo, total, idAdmin) values (@fecha, @producto, @Proveedor, @cantidad, @costo, @total, @idAdmin)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@fecha", fecha);
                cmd.Parameters.AddWithValue("@producto", producto);
                cmd.Parameters.AddWithValue("@Proveedor", proveedor);
                cmd.Parameters.AddWithValue("@cantidad", cantidad);
                cmd.Parameters.AddWithValue("@costo", costo);
                cmd.Parameters.AddWithValue("@total", total);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool InsertarUbicacion(int cantidad, int producto, string entro, string gestion, string fecha,int bodega, int pasillo, string estanteria, int nivel)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Ubicacion_Producto (cantidad, Producto,  entro, gestion, FechaEntrada, Bodega, Pasillo, idEstante, idNivel) values (@cantidad ,@producto, @entro, @gestion, @FechaEntrada, @bodega, @pasillo, @idEstante, @idNivel)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@cantidad", cantidad);
                cmd.Parameters.AddWithValue("@producto", producto);
                cmd.Parameters.AddWithValue("@entro", entro);
                cmd.Parameters.AddWithValue("@gestion", gestion);
                cmd.Parameters.AddWithValue("@FechaEntrada", fecha);
                cmd.Parameters.AddWithValue("@bodega", bodega);
                cmd.Parameters.AddWithValue("@pasillo", pasillo);
                cmd.Parameters.AddWithValue("@idEstante", estanteria);
                cmd.Parameters.AddWithValue("@idNivel", nivel);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
      
        public bool InsertarSalida(string fecha, int producto, string recibe, int cantidad) {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO salida(FechaExatca, Producto, Recibe, cantidad, idAdmin) values(@Fecha, @producto, @recibe, @cantidad, @idAdmin)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@Fecha", fecha);
                cmd.Parameters.AddWithValue("@producto", producto);
                cmd.Parameters.AddWithValue("@recibe", recibe);
                cmd.Parameters.AddWithValue("@cantidad", cantidad);
                cmd.Parameters.AddWithValue("@idAdmin", Conexion.NIT);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public int EncontrarLote(int producto)
        {
            SqlCommand cmd = new SqlCommand("SELECT MAX(idUbicacion) AS salida FROM Ubicacion_Producto, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND gestion = 'Lotes' AND cantidad != 0 AND idProducto = " + producto, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int t = Convert.ToInt32(dr["salida"].ToString());
                return t;
            }
            return 0;
        }
        public bool Determinar(int cantidad, int producto) {
            SqlCommand cmd = new SqlCommand("SELECT Sum(cantidad) AS Total FROM Bodega, Ubicacion_Producto WHERE Ubicacion_Producto.Bodega = Bodega.idBodega AND Producto = " + producto + " AND gestion = 'Saldo' AND idAdmin = " + Conexion.NIT, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (Convert.ToInt32(dr["Total"].ToString()) >= cantidad) {
                    return true;
                }
                else {
                    return false;
                }
            }
            return false;
        }
        public bool Determinars(int cantidad, int producto)
        {
            SqlCommand cmd = new SqlCommand("SELECT Sum(cantidad) AS Total FROM Bodega, Ubicacion_Producto WHERE Ubicacion_Producto.Bodega = Bodega.idBodega AND Producto = " + producto + " AND gestion = 'Lotes' AND idAdmin = " + Conexion.NIT, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (Convert.ToInt32(dr["Total"].ToString()) >= cantidad)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return false;
        }

        public bool TomarSaldo(int producto, int cantidad)
        {
            SqlCommand cmd = new SqlCommand("SELECT idSaldo, Costo, Saldo.cantidad FROM Saldo, Ubicacion_Producto, AsignacionSaldo WHERE Saldo.idSaldo = AsignacionSaldo.Saldo AND AsignacionSaldo.ubicacion = Ubicacion_Producto.idUbicacion AND Ubicacion_Producto.idUbicacion = " + producto, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int z = Convert.ToInt32(dr["Costo"].ToString()) / Convert.ToInt32(dr["cantidad"].ToString());
                int w = z * cantidad;
                int r = Convert.ToInt32(dr["Costo"].ToString()) - w;

                int q = Convert.ToInt32(dr["cantidad"].ToString()) - cantidad;

                ActulizarSaldo(Convert.ToInt32(dr["idSaldo"].ToString()), r, q);
            }
            return false;
        }
        public bool TomarLote(int ubi, int cantidad)
        {
            SqlCommand cmd = new SqlCommand("SELECT idLote, Costo_Lote, idLP, Costo, Ubicacion_Producto.idUbicacion AS ubi, Ubicacion_Producto.cantidad FROM Lote, Asignacion_Lote, Ubicacion_Producto WHERE Lote.idLote = Asignacion_Lote.idLP AND Asignacion_Lote.idUbicacion = Ubicacion_Producto.idUbicacion  AND Ubicacion_Producto.idUbicacion = " + ubi, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int z = Convert.ToInt32(dr["Costo"].ToString()) * cantidad;

                int r = Convert.ToInt32(dr["Costo_Lote"].ToString()) - z;

                ActulizarLote(Convert.ToInt32(dr["idLote"].ToString()), r);
            }
            return false;
        }
        public void ActulizarCantidad(int codigo, int nueva)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE Ubicacion_Producto SET cantidad = @cantidad WHERE idUbicacion = @codigo", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.Parameters.AddWithValue("@cantidad", nueva);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
            }
        }
        public void ActulizarSaldo(int saldo, int costo, int cantidad)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE Saldo SET Costo = @costo, cantidad = @cantidad WHERE idSaldo = @saldo", conexion.getConexion());
                cmd.Parameters.AddWithValue("@costo", costo);
                cmd.Parameters.AddWithValue("@cantidad", cantidad);
                cmd.Parameters.AddWithValue("@saldo", saldo);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
            }
        }
        public void ActulizarLote(int lote, int costo)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE Lote SET Costo_Lote = @costo WHERE idLote = @lote", conexion.getConexion());
                cmd.Parameters.AddWithValue("@costo", costo);
                cmd.Parameters.AddWithValue("@lote", lote);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
            }
        }
        public void ActulizarALote(int lote, int costo)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE Asignacion_Lote SET Costo = @costo WHERE idLP = @loteA", conexion.getConexion());
                cmd.Parameters.AddWithValue("@costo", costo);
                cmd.Parameters.AddWithValue("@loteA", lote);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
            }
        }
        public int RestarCantidad(int id)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Ubicacion_Producto WHERE idUbicacion = " + id, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int jalar = Convert.ToInt32(dr["cantidad"].ToString()) - Conexion.Extraccion;
                
                if (jalar < 0)
                {
                    int x = Conexion.Extraccion - Convert.ToInt32(dr["cantidad"].ToString());
                    Conexion.Extraccion = x;
                    ActulizarCantidad(id, 0);
                    return 2;
                }
                else { 
                    Conexion.Extraccion = 0;
                    ActulizarCantidad(id, jalar);
                    return 1;
                }
               
            }
            return 0;
        }

        public int retornarUbicacion(string gestion, int cantidad, int producto, int bodega, int pasillo, string estante, int nivel)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Ubicacion_Producto WHERE gestion = '"+ gestion +"' AND cantidad = " + cantidad +" AND Producto = " + producto + " AND Bodega = "+ bodega +" AND Pasillo = "+ pasillo +" AND idEstante = '" + estante + "' AND idNivel = " + nivel, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return Convert.ToInt32(dr["idUbicacion"].ToString());
            }
            return 0;
        }
        public bool Comprobar(int bodega, int costo, int producto)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Ubicacion_Producto, Asignacion_Lote WHERE Bodega = "+ bodega +" AND Costo = " + costo +" AND Producto = "+ producto +" AND Ubicacion_Producto.idUbicacion = Asignacion_Lote.idUbicacion", conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                SqlCommand cmds = new SqlCommand("SELECT Ubicacion_Producto.idUbicacion FROM Ubicacion_Producto, Asignacion_Lote WHERE entro = 'ultimo' AND Bodega = " + bodega + " AND Costo = " + costo + " AND Producto = " + producto + " AND Ubicacion_Producto.idUbicacion = Asignacion_Lote.idUbicacion", conexion.getConexion());
                SqlDataReader drs = cmds.ExecuteReader();
                if (drs.Read())
                {
                    ActulizarEnto(Convert.ToInt32(drs["idUbicacion"].ToString()));
                }
                return true;
            }
            return false;
        }
        public int retornarLote(int bodega, int costo, int producto, int nuevocosto)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Ubicacion_Producto, Asignacion_Lote, Lote WHERE Lote.idLote = Asignacion_Lote.Lote AND Ubicacion_Producto.Bodega = " + bodega + " AND Costo = " + costo + " AND Producto = " + producto + " AND Ubicacion_Producto.idUbicacion = Asignacion_Lote.idUbicacion", conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int nuevo = Convert.ToInt32(dr["Costo_Lote"].ToString()) + nuevocosto;
                ActulizarLote(nuevo, Convert.ToInt32(dr["Lote"].ToString()));
                return Convert.ToInt32(dr["Lote"].ToString());
            }
            return 0;
        }
        public int retornarLotes(int bodega, int costo)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Lote WHERE Bodega = "+ bodega +" AND Costo_Lote = " + costo, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return Convert.ToInt32(dr["idLote"].ToString());
            }
            return 0;
        }
        public void ActulizarEnto(int codigo)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("UPDATE Ubicacion_Producto SET entro = 'No' WHERE idUbicacion= @codigo", conexion.getConexion());
                cmd.Parameters.AddWithValue("@codigo", codigo);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
            }
        }
        

        public bool InsertarSaldo(int costo, int cantidad, int bodega, int ubicacion)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Saldo (Costo, cantidad, Bodega) values (@costo, @cantidad, @Bodega)", conexion.getConexion());
                cmd.Parameters.AddWithValue("@costo", costo);
                cmd.Parameters.AddWithValue("@cantidad", cantidad);
                cmd.Parameters.AddWithValue("@Bodega", bodega);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool InsertarASaldo(int saldo, int ubicacion)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO AsignacionSaldo (Saldo, ubicacion) values (@saldo, @ubicacion); ", conexion.getConexion());
                cmd.Parameters.AddWithValue("@saldo", saldo);
                cmd.Parameters.AddWithValue("@ubicacion", ubicacion);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool retornarSaldo(int bodega, int ubi, int nuevocosto, int nuevacantidad, int ubicacion)
        {
            SqlCommand cmd = new SqlCommand("SELECT Costo, Saldo.cantidad, idSaldo FROM AsignacionSaldo, Saldo, Ubicacion_Producto WHERE AsignacionSaldo.Saldo = Saldo.idSaldo AND Ubicacion_Producto.idUbicacion = AsignacionSaldo.ubicacion AND Saldo.Bodega = " + bodega + " AND Ubicacion_Producto.Producto = " + ubi, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int x = nuevocosto + Convert.ToInt32(dr["Costo"].ToString());
                int y = nuevacantidad + Convert.ToInt32(dr["cantidad"].ToString());
                ActulizarSaldo(Convert.ToInt32(dr["idSaldo"].ToString()), y, x);
                InsertarASaldo(Convert.ToInt32(dr["idSaldo"].ToString()), ubicacion);
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool retornarASaldo(int bodega, int costo, int cantidad, int ubicacion)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Saldo WHERE Costo = "+ costo +" AND cantidad = "+cantidad+" AND Bodega = " + bodega, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                InsertarASaldo(Convert.ToInt32(dr["idSaldo"].ToString()), ubicacion);
                return true;
            }
            else 
            {
                return false;
            }
        }
        public int retornarAL(int ubicacion)
        {
            SqlCommand cmd = new SqlCommand("SELECT Costo, Saldo.cantidad  FROM Saldo, AsignacionSaldo, Ubicacion_Producto WHERE Ubicacion_Producto.idUbicacion = AsignacionSaldo.ubicacion AND Saldo.idSaldo = AsignacionSaldo.Saldo AND Ubicacion_Producto.idUbicacion = " + ubicacion, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {                
                return Convert.ToInt32(dr["Costo"].ToString()) / Convert.ToInt32(dr["cantidad"].ToString());
            }
            else
            {
                return 0;
            }
        }
        public int retornarLL(int ubicacion)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Lote, Asignacion_Lote, Ubicacion_Producto WHERE Ubicacion_Producto.idUbicacion = Asignacion_Lote.idUbicacion AND Lote.idLote = Asignacion_Lote.Lote AND Ubicacion_Producto.idUbicacion = " + ubicacion, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return Convert.ToInt32(dr["Costo"].ToString());
            }
            else
            {
                return 0;
            }
        }
    }
}
 