using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Proyecto
{
    public partial class AdminService : System.Web.UI.Page
    {
        Operaciones operaciones = new Operaciones();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Lit1.Text = Conexion.NOMBRE;
                Literal2.Text = Conexion.TIPO;
                Literal3.Text = Conexion.NOMBRE;
                Literal4.Text = Conexion.NOMBRE;
                MostrarP();
                MostrarAP();
                MostrarDis();
                MostrarNDis();
                DD();
                MostarA();
                DE();
                MostrarU();
                DACC();
                DAACT();
                DAACTE();
                MostarAcc();
                MostarT();
                T();
                S();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Lit1.Text = Conexion.NOMBRE;
            Literal2.Text = Conexion.TIPO;
            Literal3.Text = Conexion.NOMBRE;
            Literal4.Text = Conexion.NOMBRE;
            MostrarP();
            MostrarAP();
            MostrarDis();
            MostrarNDis();
            DD();
            MostarA();
            DE();
            MostrarU();
            DACC();
            DAACT();
            DAACTE();
            MostarAcc();
            MostarT();
            T();
            //S();
        }
        public void MostrarP() {
            try
            {

                string query = "SELECT Nombre,Suscripcion,Rango FROM AdminsitradorServicio WHERE idAdmin = " + Conexion.NIT;
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView1.DataSource = (dt);
                GridView1.DataBind();

            }
            catch (Exception)
            {


            }

        }
        public void MostrarAP() {
            try
            {
                string query = "SELECT idUsu, nombre, correo, puesto, numero FROM Trabajador WHERE idAdmin = " + Conexion.NIT;
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView2.DataSource = (dt);
                GridView2.DataBind();
                Literal1.Text = "Usuarios restantes en la suscripcion: " + operaciones.ConteoUsuarios();
            }
            catch (Exception)
            {


            }
        }
        public void MostrarDis() {
            try
            {

                string query = "SELECT idDetalle, Precio, idRango, Modulo.idModulo, Modulo.Nombre, Tipo FROM Detalle_Modulo, Modulo, Suscripcion WHERE idRango = '" + Conexion.TAMA + "' AND Tipo = '" + Conexion.SUSCRIBE + "' AND Detalle_Modulo.idSuscri = Suscripcion.idSuscri AND Detalle_Modulo.idModulo = Modulo.idModulo";
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView3.DataSource = (dt);
                GridView3.DataBind();
            }
            catch (Exception)
            {


            }
        }
        public void MostrarNDis()
        {
            try
            {
                string query = "SELECT idDetalle, Precio, idRango, Modulo.idModulo, Modulo.Nombre, Tipo FROM Detalle_Modulo, Modulo, Suscripcion WHERE NOT(idRango = '" + Conexion.TAMA + "' AND Tipo = '" + Conexion.SUSCRIBE + "') AND Detalle_Modulo.idSuscri = Suscripcion.idSuscri AND Detalle_Modulo.idModulo = Modulo.idModulo";
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView4.DataSource = (dt);
                GridView4.DataBind();
            }
            catch (Exception)
            {


            }
        }
        public void MostarA() {
            try
            {
                string query = "SELECT idAsignacion, Precio, Nombre, Tipo  FROM Asignacion,Detalle_Modulo,Modulo,Suscripcion WHERE Asignacion.idDetalle = Detalle_Modulo.idDetalle AND Detalle_Modulo.idSuscri = Suscripcion.idSuscri AND Detalle_Modulo.idModulo = Modulo.idModulo AND Asignacion.idAdmin = " + Conexion.NIT;
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView5.DataSource = (dt);
                GridView5.DataBind();
            }
            catch (Exception)
            {


            }
        }
        public void MostrarU() {
            
            try
            {
                string query = "SELECT idUsu, nombre, correo, puesto, numero  FROM Trabajador WHERE idAdmin = " + Conexion.NIT;
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView6.DataSource = (dt);
                GridView6.DataBind();
            }
            catch (Exception)
            {


            }

        }
        public void MostarAcc()
        {
            try
            {
                string query = "SELECT idAcceso, Trabajador.nombre AS NombreTrabajador, correo, Modulo.Nombre AS ModuloAcceso FROM Acceso, Trabajador, Asignacion, Detalle_Modulo, Modulo WHERE Acceso.idAsignacion = Asignacion.idAsignacion AND Detalle_Modulo.idDetalle = Asignacion.idDetalle AND  Detalle_Modulo.idModulo = Modulo.idModulo AND Acceso.idUsu = Trabajador.idUsu  AND Trabajador.idAdmin = " + Conexion.NIT;
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView7.DataSource = (dt);
                GridView7.DataBind();
            }
            catch (Exception)
            {


            }
        }
        public void MostarT()
        {
            try
            {
                string query = "SELECT TarjetadeCredito, NombreTarjeta,FechaVencimiento,TipoTarjeta FROM TarjetadeCredito WHERE Pago = 'SI' AND idAdmin = " + Conexion.NIT;
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView8.DataSource = (dt);
                GridView8.DataBind();
            }
            catch (Exception)
            {


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MostrarDis();
            MostrarNDis();

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            try
            {
                
                int modulo = int.Parse(DropDownList1.SelectedValue);
                string hola = operaciones.consultarA(modulo);
                if (operaciones.InsertarA(modulo))
                {
                    Response.Write("<script>window.alert('Se registro la asignacion la cuale tiene un precio de "+ hola + "')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido registrar')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido registrar verifque los datos')</script>");
            }
            MostarA();
        }
    
        public void DD() {

            string sentencia = "SELECT * FROM Detalle_Modulo, Modulo, Suscripcion WHERE idRango = '" + Conexion.TAMA + "' AND Tipo = '" + Conexion.SUSCRIBE + "' AND Detalle_Modulo.idSuscri = Suscripcion.idSuscri AND Detalle_Modulo.idModulo = Modulo.idModulo";
            DropDownList1.DataSource = operaciones.Lista(sentencia);
            DropDownList1.DataMember = "datos";
            DropDownList1.DataTextField = "Nombre";
            DropDownList1.DataValueField = "idDetalle";
            DropDownList1.DataBind();
        }
        public void DE() { 
            string sentencia = "SELECT idAsignacion, Nombre FROM Asignacion, Detalle_Modulo, Modulo WHERE Asignacion.idDetalle = Detalle_Modulo.idDetalle AND Detalle_Modulo.idModulo = Modulo.idModulo AND Asignacion.idAdmin = " + Conexion.NIT;
            DropDownList2.DataSource = operaciones.Lista(sentencia);
            DropDownList2.DataMember = "datos";
            DropDownList2.DataTextField = "Nombre";
            DropDownList2.DataValueField = "idAsignacion";
            DropDownList2.DataBind();
        }
        public void DAACT()
        {
            string sentencia = "SELECT * FROM Trabajador WHERE idAdmin = " + Conexion.NIT; 
            DropDownList3.DataSource = operaciones.Lista(sentencia);
            DropDownList3.DataMember = "datos";
            DropDownList3.DataTextField = "nombre";
            DropDownList3.DataValueField = "idUsu";
            DropDownList3.DataBind();
        }

        public void DACC()
        {
            string sentencia = "SELECT idAsignacion, Nombre FROM Asignacion, Detalle_Modulo, Modulo WHERE Asignacion.idDetalle = Detalle_Modulo.idDetalle AND Detalle_Modulo.idModulo = Modulo.idModulo AND Asignacion.idAdmin = " + Conexion.NIT;
            DropDownList4.DataSource = operaciones.Lista(sentencia);
            DropDownList4.DataMember = "datos";
            DropDownList4.DataTextField = "Nombre";
            DropDownList4.DataValueField = "idAsignacion";
            DropDownList4.DataBind();
        }
        public void DAACTE()
        {
            string sentencia = "SELECT * FROM Trabajador WHERE idAdmin = " + Conexion.NIT;
            DropDownList5.DataSource = operaciones.Lista(sentencia);
            DropDownList5.DataMember = "datos";
            DropDownList5.DataTextField = "nombre";
            DropDownList5.DataValueField = "idUsu";
            DropDownList5.DataBind();
        }
        public void T()
        {
            string sentencia = "SELECT * FROM TarjetadeCredito WHERE Pago = 'NO' AND idAdmin = " + Conexion.NIT;
            DropDownList6.DataSource = operaciones.Lista(sentencia);
            DropDownList6.DataMember = "datos";
            DropDownList6.DataTextField = "TarjetadeCredito";
            DropDownList6.DataValueField = "TarjetadeCredito";
            DropDownList6.DataBind();
        }
        public void S()
        {
            string sentencia = "SELECT * FROM Suscripcion WHERE Tipo != '" + Conexion.SUSCRIBE + "'" ;
            DropDownList7.DataSource = operaciones.Lista(sentencia);
            DropDownList7.DataMember = "datos";
            DropDownList7.DataTextField = "Tipo";
            DropDownList7.DataValueField = "Tipo";
            DropDownList7.DataBind();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                int modulo = int.Parse(DropDownList2.SelectedValue);
                int hola = operaciones.contarpago(modulo);
                if (operaciones.EliminarA(modulo))
                {
                    Response.Write("<script>window.alert('Se elimino la asignacion y su pago ahora es:" + hola + "')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido eliminar')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido eliminar verifque los datos')</script>");
            }
            MostarA();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                string password = operaciones.pass();
                if (operaciones.insertarUsuario(int.Parse(TextBox1.Text), TextBox2.Text, TextBox3.Text, TextBox4.Text, int.Parse(TextBox5.Text), password))
                {
                    operaciones.EnvioCorreoU(TextBox3.Text, password);
                    Response.Write("<script>window.alert('Se agrego el usuario y se le mando la contraseña a su correo')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido agregar el usuario')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido agregar verifque los datos')</script>");
            }
            MostrarU();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                if (operaciones.acceso(Convert.ToInt32(DropDownList4.SelectedValue), Convert.ToInt32(DropDownList3.SelectedValue)))
                {
                    
                    Response.Write("<script>window.alert('Se le otorgo el acceso al modulo')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido darle el acceso')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido darle el acceso verifque los datos')</script>");
            }
            MostarAcc();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                operaciones.EliminarAcc(Convert.ToInt32(DropDownList5.SelectedValue));
                if (operaciones.EliminarT(Convert.ToInt32(DropDownList5.SelectedValue)))
                {

                    Response.Write("<script>window.alert('Se ha eliminado el usuario con exito')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido elimninar usuario')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido elimninar usuario verifque los datos')</script>");
            }
            MostarAcc();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            try
            {
                //int numero = int.Parse(TextBox5.Text);
                string Des = DropDownList10.SelectedItem.Value;
                string p = DropDownList11.SelectedItem.Value; 
                int crv = int.Parse(TextBox9.Text);
                int valuar = operaciones.InsertarTarjeta(long.Parse(TextBox6.Text), TextBox7.Text, TextBox8.Text, Des, crv, p, Conexion.NIT);
                if (valuar == 1)
                {
                    Response.Write("<script>window.alert('Tarjeta nueva creada al cliente')</script>");
                    TextBox7.Text = string.Empty;
                    TextBox8.Text = string.Empty;
                    TextBox9.Text = string.Empty;
                    TextBox9.Text = string.Empty;
                }
                else if (valuar == 2)
                {
                    Response.Write("<script>window.alert('Ya hay una tarjeta de pago')</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido, Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>window.alert('No se ha podido crear tarjeta verifque los datos')</script>");
            }
            MostarT();
            T();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            try
            {
                operaciones.EnvioCorreoUs();

                if (operaciones.ActualizarT1() && operaciones.ActualizarT2(Convert.ToInt32(DropDownList6.SelectedValue)) )
                {

                    Response.Write("<script>window.alert('Se ha mandado la solicitud para el cambio de tarjeta')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido mandar solicitud')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido mandar solicitud verifque los datos')</script>");
            }
            MostarT();
            T();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            try {
                bool ba = operaciones.GuardarDetalle();
                operaciones.EliminarAsignacion();
                Conexion.SUSCRIBE = DropDownList7.SelectedValue;
                operaciones.ActualizarSUS(DropDownList7.SelectedValue);
                if (ba) 
                {
                    operaciones.InsertarNuevasAsignaciones();
                }
                operaciones.EnvioCorreoGC();
                operaciones.EnvioCorreoGCT();
                Response.Write("<script>window.alert('Se ha cambiado la suscripcio, se ha mandado correo para confirmar')</script>");
            }
            catch (Exception) 
            {
                //Response.Write("<script>window.alert('No se ha podido cambiar la suscripcion')</script>");
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            try
            {
                bool ba = operaciones.GuardarDetalle();
                operaciones.EliminarAsignacion();
                Conexion.TAMA = DropDownList8.SelectedItem.Value;
                operaciones.Actualizarrango(DropDownList8.SelectedItem.Value);
                if (ba)
                {
                    operaciones.InsertarNuevasAsignaciones();
                }
                operaciones.EnvioCorreoGC();
                operaciones.EnvioCorreoGCT();
                Response.Write("<script>window.alert('Se ha cambiado la suscripcion, se ha mandado correo para confirmar')</script>");
            }
            catch (Exception)
            {
                //Response.Write("<script>window.alert('No se ha podido cambiar la suscripcion')</script>");
            }
        }
    }
}