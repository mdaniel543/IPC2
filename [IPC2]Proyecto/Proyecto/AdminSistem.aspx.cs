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
    public partial class AdminSistem : System.Web.UI.Page
    {
        Operaciones operaciones = new Operaciones();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                MostarListaNITS();
                MMostrar();
                Mostrar();
                MostrarLista();
                MostarListaNIT();
                MostarListaCo();
                MostrarLista2();
                MostrarLista11();
                MostrarLista6();
            }        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = int.Parse(TextBox1.Text);
                string tamanio = DropDownList9.SelectedItem.Value; 
                //int numero = int.Parse(TextBox5.Text);
                if (operaciones.InsertAdminService(nit, TextBox3.Text, TextBox2.Text, tamanio))
                {
                    Response.Write("<script>window.alert('Cliente nuevo creado')</script>");
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                  
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido crear el cliente Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception ex) 
            {
                Response.Write("<script>window.alert('No se ha podido crear usuario verifque los datos')</script>");
            }
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = Convert.ToInt32(DropDownList3.SelectedValue);
                bool uno = operaciones.InsertarContactoAdmin(long.Parse(TextBox12.Text), TextBox11.Text, int.Parse(TextBox13.Text), int.Parse(TextBox29.Text), int.Parse(TextBox14.Text), TextBox15.Text, TextBox16.Text, "Comercial", nit);
                bool dos = operaciones.InsertarContactoAdmin(long.Parse(TextBox18.Text), TextBox17.Text, int.Parse(TextBox19.Text), int.Parse(TextBox30.Text), int.Parse(TextBox20.Text), TextBox21.Text, TextBox22.Text, "Gerencial", nit);
                bool tres = operaciones.InsertarContactoAdmin(long.Parse(TextBox24.Text), TextBox23.Text, int.Parse(TextBox25.Text), int.Parse(TextBox31.Text), int.Parse(TextBox26.Text), TextBox27.Text, TextBox28.Text, "Administrador", nit);
                if (uno && dos && tres)
                {
                    Response.Write("<script>window.alert('Contactos creados')</script>");

                    TextBox11.Text = string.Empty;
                    TextBox12.Text = string.Empty;
                    TextBox13.Text = string.Empty;
                    TextBox14.Text = string.Empty;
                    TextBox15.Text = string.Empty;
                    TextBox16.Text = string.Empty;
                    TextBox17.Text = string.Empty;
                    TextBox18.Text = string.Empty;
                    TextBox19.Text = string.Empty;
                    TextBox20.Text = string.Empty;
                    TextBox21.Text = string.Empty;
                    TextBox22.Text = string.Empty;
                    TextBox23.Text = string.Empty;
                    TextBox24.Text = string.Empty;
                    TextBox25.Text = string.Empty;
                    TextBox26.Text = string.Empty;
                    TextBox27.Text = string.Empty;
                    TextBox28.Text = string.Empty;
                    TextBox29.Text = string.Empty;
                    TextBox30.Text = string.Empty;
                    TextBox31.Text = string.Empty;
                }
                else {
                    Response.Write("<script>window.alert('No se ha podido crear los contactos Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception) {
                Response.Write("<script>window.alert('No se ha podido crear contactos verifque los datos')</script>");
            }
          
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = Convert.ToInt32(DropDownList4.SelectedValue);
                if (operaciones.ActualizarUsuario(nit,TextBox33.Text,TextBox34.Text)) {        
                    Response.Write("<script>window.alert('Usuario creado al cliente')</script>");
                   
                    TextBox33.Text = string.Empty;
                    TextBox34.Text = string.Empty;
                    
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido crear el usuario Fallo en la base de Datos')</script>");
                }
            }
            catch(Exception) 
            {
                Response.Write("<script>window.alert('No se ha podido crear usuario verifque los datos')</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                string Des = DropDownList5.SelectedItem.Value;
                if (operaciones.IngresarModulo(int.Parse(TextBox35.Text),TextBox36.Text,TextBox37.Text, Des,TextBox39.Text))
                {
                    Response.Write("<script>window.alert('Se creo el modulo')</script>");
                    TextBox35.Text = string.Empty;
                    TextBox36.Text = string.Empty;
                    TextBox37.Text = string.Empty;
                    TextBox39.Text = string.Empty;
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido crear el Modulo Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido crear Modulo verifque los datos')</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MostarListaNITS();
            MMostrar();
            Mostrar();
            MostrarLista();
            MostarListaNIT();
            MostarListaCo();
            MostrarLista2();
            MostrarLista11();
            MostrarLista6();
        }
        public void Mostrar() {
       
            string query = "SELECT * FROM Suscripcion";
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = (dt);
            GridView1.DataBind();
        }
        public void MMostrar() {
            string query = "SELECT idModulo, Nombre, abreviatura, Descripcion, defa AS ModuloDefault, habilitado AS Habilitado FROM Modulo";
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView2.DataSource = (dt);
            GridView2.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                int Des = Convert.ToInt32(DropDownList6.SelectedValue);
                string hDes = DropDownList8.SelectedItem.Value;
                int idModulo = Convert.ToInt32(DropDownList7.SelectedValue);

                if (operaciones.ActualizarPrecio(int.Parse(TextBox40.Text), Des, hDes, Convert.ToDouble(TextBox43.Text), idModulo))
                {
                    Response.Write("<script>window.alert('Se actualizo el precio al modulo')</script>");
                    TextBox40.Text = string.Empty;
                    TextBox43.Text = string.Empty;
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido actualizar, Podria haber registrado una suscripcion que ya esta vigente')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido actualizar el precio al modulo verifque los datos')</script>");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            try
            {
                int Des = Convert.ToInt32(DropDownList6.SelectedValue);
                string hDes = DropDownList8.SelectedItem.Value;
                int idModulo = Convert.ToInt32(DropDownList7.SelectedValue);
                if (operaciones.CondicionHa(idModulo)) 
                {
                    if (operaciones.RegistrarPrecio(int.Parse(TextBox40.Text), Des, hDes, Convert.ToDouble(TextBox43.Text), idModulo))
                    {
                        Response.Write("<script>window.alert('Se registro el precio al modulo')</script>");
                        TextBox40.Text = string.Empty;
                        TextBox43.Text = string.Empty;
                    }
                    else
                    {
                        Response.Write("<script>window.alert('No se ha podido registrar el precio a la suscripcion, Podria haber registrado una suscripcion que ya esta vigente')</script>");
                    }
                }
                else{
                    Response.Write("<script>window.alert('No se ha podido registrar el precio a la suscripcion, Podria estar Deshabilitado')</script>");
                }
                
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido registrar el precio al modulo verifque los datos')</script>");
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            //MostrarLista();
            int idModulo = Convert.ToInt32(DropDownList1.SelectedValue);
            string habDes = DropDownList2.SelectedItem.Value;
            try
            {
                
                if (operaciones.ActualizarModulo(idModulo, habDes))
                {
                    Response.Write("<script>window.alert('Se actualizo el modulo')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido actualizar el modulo')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido actualizar el modulo verifque los datos')</script>");
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
           

        }
        public void MostrarLista() {
            string sentencia = "SELECT * FROM Modulo";
            DropDownList1.DataSource = operaciones.Lista(sentencia);
            DropDownList1.DataMember = "datos";
            DropDownList1.DataTextField = "Nombre";
            DropDownList1.DataValueField = "idModulo";
            DropDownList1.DataBind();
        }
        public void MostarListaNITS()
        {
            string sentencia = "SELECT * FROM AdminsitradorServicio";
            DropDownList12.DataSource = operaciones.Lista(sentencia);
            DropDownList12.DataMember = "datos";
            DropDownList12.DataTextField = "Nombre";
            DropDownList12.DataValueField = "idAdmin";
            DropDownList12.DataBind();
        }
        public void MostarListaNIT() {
            string sentencia = "SELECT * FROM AdminsitradorServicio";
            DropDownList3.DataSource = operaciones.Lista(sentencia);
            DropDownList3.DataMember = "datos";
            DropDownList3.DataTextField = "Nombre";
            DropDownList3.DataValueField = "idAdmin";
            DropDownList3.DataBind();
        }
        public void MostarListaCo()
        {
            string sentencia = "SELECT * FROM AdminsitradorServicio";
            DropDownList4.DataSource = operaciones.Lista(sentencia);
            DropDownList4.DataMember = "datos";
            DropDownList4.DataTextField = "Nombre";
            DropDownList4.DataValueField = "idAdmin";
            DropDownList4.DataBind();
        }
        public void MostrarLista2()
        {
            string sentencia = "SELECT * FROM Modulo";
            DropDownList7.DataSource = operaciones.Lista(sentencia);
            DropDownList7.DataMember = "datos";
            DropDownList7.DataTextField = "Nombre";
            DropDownList7.DataValueField = "idModulo";
            DropDownList7.DataBind();
        }
        public void MostrarLista11()
        {
            string sentencia = "SELECT * FROM Suscripcion";
            DropDownList14.DataSource = operaciones.Lista(sentencia);
            DropDownList14.DataMember = "datos";
            DropDownList14.DataTextField = "Tipo";
            DropDownList14.DataValueField = "idSuscri";
            DropDownList14.DataBind();
        }
        public void MostrarLista6()
        {
            string sentencia = "SELECT * FROM Suscripcion";
            DropDownList6.DataSource = operaciones.Lista(sentencia);
            DropDownList6.DataMember = "datos";
            DropDownList6.DataTextField = "Tipo";
            DropDownList6.DataValueField = "idSuscri";
            DropDownList6.DataBind();
        }
        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            try
            {
                //int numero = int.Parse(TextBox5.Text);
                string Des = DropDownList10.SelectedItem.Value;
                string p = DropDownList11.SelectedItem.Value;
                int nit = Convert.ToInt32(DropDownList12.SelectedValue);
                int crv = int.Parse(TextBox9.Text);

                int valuar = operaciones.InsertarTarjeta(long.Parse(TextBox5.Text), TextBox6.Text, TextBox8.Text, Des, crv, p, nit);

                if (valuar == 1)
                {
                    Response.Write("<script>window.alert('Tarjeta nueva creada al cliente')</script>");
                    TextBox5.Text = string.Empty;
                    TextBox6.Text = string.Empty;
                    TextBox8.Text = string.Empty;
                    TextBox9.Text = string.Empty;
                }
                else if (valuar == 2) {
                    Response.Write("<script>window.alert('Ya hay una tarjeta de pago')</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido crear el cliente Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>window.alert('No se ha podido crear usuario verifque los datos')</script>");
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            try
            {
                string Tipo = DropDownList13.SelectedItem.Value;

                if (operaciones.NuevaSus(int.Parse(TextBox10.Text), TextBox4.Text, TextBox7.Text, Tipo))
                {
                    Response.Write("<script>window.alert('Se registro la nueva suscripcion')</script>");
                    TextBox10.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    TextBox7.Text = string.Empty;
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido registrar la nueva suscripicion')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido registrar el precio al modulo verifque los datos')</script>");
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Mostrar1(Convert.ToInt32(DropDownList14.SelectedValue));
            Mostrar2(Convert.ToInt32(DropDownList14.SelectedValue));
            Mostrar3(Convert.ToInt32(DropDownList14.SelectedValue));
            Mostrar4(Convert.ToInt32(DropDownList14.SelectedValue));
            Mostrar5(Convert.ToInt32(DropDownList14.SelectedValue));
            Mostrar6(Convert.ToInt32(DropDownList14.SelectedValue));
        }
        public void Mostrar1(int Sus) {
            string query = "SELECT Detalle_Modulo.idDetalle, Detalle_Modulo.Precio,Detalle_Modulo.idRango, Detalle_Modulo.idSuscri,Modulo.idModulo,Modulo.Nombre FROM Detalle_Modulo,Modulo WHERE Detalle_Modulo.idModulo = Modulo.idModulo AND idRango = 'de 1 a 10 empleados' AND idSuscri = " + Sus;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView3.DataSource = (dt);
            GridView3.DataBind();
            Lit1.Text = "De 1 a 10 Empleados:";
        }
        public void Mostrar2(int Sus)
        {
            string query = "SELECT Detalle_Modulo.idDetalle, Detalle_Modulo.Precio,Detalle_Modulo.idRango, Detalle_Modulo.idSuscri,Modulo.idModulo,Modulo.Nombre FROM Detalle_Modulo,Modulo WHERE Detalle_Modulo.idModulo = Modulo.idModulo AND idRango = 'de 11 a 15 empleados' AND idSuscri = " + Sus;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView4.DataSource = (dt);
            GridView4.DataBind();
            Lit2.Text = "De 11 a 15 empleados:";
        }
        public void Mostrar3(int Sus)
        {
            string query = "SELECT Detalle_Modulo.idDetalle, Detalle_Modulo.Precio,Detalle_Modulo.idRango, Detalle_Modulo.idSuscri,Modulo.idModulo,Modulo.Nombre FROM Detalle_Modulo,Modulo WHERE Detalle_Modulo.idModulo = Modulo.idModulo AND idRango = 'de 16 a 25 empleados' AND idSuscri = " + Sus;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView5.DataSource = (dt);
            GridView5.DataBind();
            Literal1.Text = "De 16 a 25 empleados:";
        }
        public void Mostrar4(int Sus)
        {
            string query = "SELECT Detalle_Modulo.idDetalle, Detalle_Modulo.Precio,Detalle_Modulo.idRango, Detalle_Modulo.idSuscri,Modulo.idModulo,Modulo.Nombre FROM Detalle_Modulo,Modulo WHERE Detalle_Modulo.idModulo = Modulo.idModulo AND idRango = 'de 26 a 40 empleados' AND idSuscri = " + Sus;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView6.DataSource = (dt);
            GridView6.DataBind();
            Literal2.Text = "De 26 a 40 empleados:";
        }
        public void Mostrar5(int Sus)
        {
            string query = "SELECT Detalle_Modulo.idDetalle, Detalle_Modulo.Precio,Detalle_Modulo.idRango, Detalle_Modulo.idSuscri,Modulo.idModulo,Modulo.Nombre FROM Detalle_Modulo,Modulo WHERE Detalle_Modulo.idModulo = Modulo.idModulo AND idRango = 'de 41 a 50 empleados' AND idSuscri = " + Sus;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView7.DataSource = (dt);
            GridView7.DataBind();
            Literal3.Text = "De 41 a 50 empleados:";
        }
        public void Mostrar6(int Sus)
        {
            string query = "SELECT Detalle_Modulo.idDetalle, Detalle_Modulo.Precio,Detalle_Modulo.idRango, Detalle_Modulo.idSuscri,Modulo.idModulo,Modulo.Nombre FROM Detalle_Modulo,Modulo WHERE Detalle_Modulo.idModulo = Modulo.idModulo AND idRango = 'de más de 51 empleados' AND idSuscri = " + Sus;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView8.DataSource = (dt);
            GridView8.DataBind();
            Literal4.Text = "De más de 51 empleados:";
        }
    }
}