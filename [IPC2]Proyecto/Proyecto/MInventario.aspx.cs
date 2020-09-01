using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;

namespace Proyecto
{
    public partial class MInventario : System.Web.UI.Page
    {
        Operaciones operaciones = new Operaciones();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Literal1.Text = Conexion.NOMBRE;
                MostrarBodegas();
                MostrarBodega2();
                MostrarPasillos(0);
                MostrarBodega3();
                MostrarPasillos2(0);
                MostrarEstanteria(0, 0);
                MostrarBodega4();
                MostrarPasillosC(0);
                MostrarEstanteriaC(0, 0);
                MostrarProveedor();
                MostrarProducto();
                MostrarBodega5();
                MostrarPasilloS(0);
                MostrarEstanteriaS(0, 0);
                MostrarNiveles(0, 0, "");
                //MostarEntrada();
                //MostarSalida();
                MostrarProductoS();
                MostarDisponiblesSalidas(0);
                MostrarUbis(0);
                MostrarProductoR();
                MostrarBodegasR();
                MostrarPasilloBS(0);
                MostrarEstanteriaBS(0, 0);
                MostrarNivelesB(0, 0, "");
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void MostrarBodegas()
        {
            string sentencia = "SELECT * FROM Bodega WHERE idAdmin = " + Conexion.NIT;
            DropDownList1.DataSource = operaciones.Lista(sentencia);
            DropDownList1.DataMember = "datos";
            DropDownList1.DataTextField = "nombre";
            DropDownList1.DataValueField = "idBodega";
            DropDownList1.DataBind();
        }
        public void MostrarBodega2()
        {
            string sentencia = "SELECT * FROM Bodega WHERE idAdmin = " + Conexion.NIT;
            DropDownList2.DataSource = operaciones.Lista(sentencia);
            DropDownList2.DataMember = "datos";
            DropDownList2.DataTextField = "nombre";
            DropDownList2.DataValueField = "idBodega";
            DropDownList2.DataBind();
        }
        public void MostrarPasillos(int b)
        {
            string sentencia = "SELECT * FROM Pasillo WHERE Bodega = " + b;
            DropDownList3.DataSource = operaciones.Lista(sentencia);
            DropDownList3.DataMember = "datos";
            DropDownList3.DataTextField = "idPasillo";
            DropDownList3.DataValueField = "idPasillo";
            DropDownList3.DataBind();
        }
        public void MostrarBodega3()
        {
            string sentencia = "SELECT * FROM Bodega WHERE idAdmin = " + Conexion.NIT;
            DropDownList4.DataSource = operaciones.Lista(sentencia);
            DropDownList4.DataMember = "datos";
            DropDownList4.DataTextField = "nombre";
            DropDownList4.DataValueField = "idBodega";
            DropDownList4.DataBind();
        }
        public void MostrarPasillos2(int b)
        {
            string sentencia = "SELECT * FROM Pasillo WHERE Bodega = " + b;
            DropDownList5.DataSource = operaciones.Lista(sentencia);
            DropDownList5.DataMember = "datos";
            DropDownList5.DataTextField = "idPasillo";
            DropDownList5.DataValueField = "idPasillo";
            DropDownList5.DataBind();
        }
        public void MostrarEstanteria(int b, int ce)
        {
            string sentencia = "SELECT * FROM Estante WHERE Pasillo = " + b + "AND Bodega = " + ce;
            DropDownList6.DataSource = operaciones.Lista(sentencia);
            DropDownList6.DataMember = "datos";
            DropDownList6.DataTextField = "idEstante";
            DropDownList6.DataValueField = "idEstante";
            DropDownList6.DataBind();
        }
        public void MostrarBodega4()
        {
            string sentencia = "SELECT * FROM Bodega WHERE idAdmin = " + Conexion.NIT;
            DropDownList7.DataSource = operaciones.Lista(sentencia);
            DropDownList7.DataMember = "datos";
            DropDownList7.DataTextField = "nombre";
            DropDownList7.DataValueField = "idBodega";
            DropDownList7.DataBind();
        }
        public void MostrarPasillosC(int b)
        {
            string sentencia = "SELECT * FROM Pasillo WHERE Bodega = " + b;
            DropDownList8.DataSource = operaciones.Lista(sentencia);
            DropDownList8.DataMember = "datos";
            DropDownList8.DataTextField = "idPasillo";
            DropDownList8.DataValueField = "idPasillo";
            DropDownList8.DataBind();
        }
        public void MostrarEstanteriaC(int b, int ce)
        {
            string sentencia = "SELECT * FROM Estante WHERE Pasillo = " + b + "AND Bodega = " + ce;
            DropDownList9.DataSource = operaciones.Lista(sentencia);
            DropDownList9.DataMember = "datos";
            DropDownList9.DataTextField = "idEstante";
            DropDownList9.DataValueField = "idEstante";
            DropDownList9.DataBind();
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (operaciones.InsertarBodega(int.Parse(TextBox1.Text), TextBox2.Text, TextBox3.Text, TextBox4.Text))
                {
                    Response.Write("<script>window.alert('Bodea nueva creada')</script>");
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido crear la nueva bodega Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>window.alert('No se ha podido crear bodega verifque los datos')</script>");
            }
            MostrarBodegas();
            MostrarBodega2();
          
            MostrarBodega3();
          
            MostrarBodega4();
          

            MostrarProducto();
            MostrarBodega5();


            MostrarProductoS();
            MostrarProductoR();
            MostrarBodegasR();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (operaciones.InsertarPasillo(int.Parse(TextBox5.Text), TextBox6.Text, TextBox7.Text, Convert.ToInt32(DropDownList1.SelectedValue)))
                {
                    Response.Write("<script>window.alert('Pasillo nuevo creada')</script>");
                    TextBox5.Text = string.Empty;
                    TextBox6.Text = string.Empty;
                    TextBox7.Text = string.Empty;

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido crear el nuevo Pasillo Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>window.alert('No se ha podido crear el pasillo verifque los datos')</script>");
            }
            MostrarBodegas();
            MostrarBodega2();
           
            MostrarBodega3();
            
            MostrarBodega4();
         

            MostrarProducto();
            MostrarBodega5();


            MostrarProductoS();
            MostrarProductoR();
            MostrarBodegasR();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                if (operaciones.InsertarEstante(TextBox8.Text, Convert.ToInt32(DropDownList3.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), TextBox9.Text, TextBox10.Text, TextBox11.Text))
                {
                    Response.Write("<script>window.alert('Estante nuevo creado')</script>");
                    TextBox8.Text = string.Empty;
                    TextBox9.Text = string.Empty;
                    TextBox10.Text = string.Empty;
                    TextBox11.Text = string.Empty;
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido crear el nuevo Estante Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>window.alert('No se ha podido crear el estante verifque los datos')</script>");
            }
            MostrarBodegas();
            MostrarBodega2();
        
            MostrarBodega3();
           
            MostrarBodega4();
          

            MostrarProducto();
            MostrarBodega5();
           


            MostrarProductoS();
            MostrarProductoR();
            MostrarBodegasR();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                if (operaciones.InsertarNivel(int.Parse(TextBox12.Text), DropDownList6.SelectedValue, Convert.ToInt32(DropDownList5.SelectedValue), Convert.ToInt32(DropDownList4.SelectedValue), TextBox13.Text, operaciones.RetornoLargo(Convert.ToInt32(DropDownList5.SelectedValue), Convert.ToInt32(DropDownList4.SelectedValue), DropDownList6.SelectedValue), operaciones.RetornoAncho(Convert.ToInt32(DropDownList5.SelectedValue), Convert.ToInt32(DropDownList4.SelectedValue), DropDownList6.SelectedValue)))
                {
                    Response.Write("<script>window.alert('Nivel nuevo creado')</script>");
                    TextBox12.Text = string.Empty;
                    TextBox13.Text = string.Empty;
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido crear el nuevo nivel Fallo en la base de Datos')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>window.alert('No se ha podido crear el nivel verifque los datos')</script>");
            }
            MostrarBodegas();
            MostrarBodega2();
          
            MostrarBodega3();
           
            MostrarBodega4();
       

            MostrarProducto();
            MostrarBodega5();
          
       

            MostrarProductoS();
            MostrarProductoR();
            MostrarBodegasR();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int bode = Convert.ToInt32(DropDownList2.SelectedValue);
            MostrarPasillos(bode);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            int bode = Convert.ToInt32(DropDownList4.SelectedValue);
            MostrarPasillos2(bode);
            MostrarEstanteria(0, 0);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int bode = Convert.ToInt32(DropDownList5.SelectedValue);
            int pas = Convert.ToInt32(DropDownList4.SelectedValue);
            MostrarEstanteria(bode, pas);
        }

        public void MostarP(int codigo)
        {
            try
            {
                string query = "SELECT * FROM Pasillo WHERE Bodega = " + codigo;
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
        public void MostarE(int b, int ce)
        {
            try
            {
                string query = "SELECT * FROM Estante WHERE Pasillo = " + b + "AND Bodega = " + ce;
                SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
                DataTable dt = new DataTable();
                adp.Fill(dt);
                GridView2.DataSource = (dt);
                GridView2.DataBind();
            }
            catch (Exception)
            {


            }
        }
        public void MostarN(string a, int b, int ce)
        {
            try
            {
                string query = "SELECT * FROM Nivel WHERE idEstante = '" + a + "' AND Pasillo = " + b + "AND Bodega = " + ce;
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

        protected void Button7_Click(object sender, EventArgs e)
        {
            Literal2.Text = "Pasillos de Bodega:";
            MostarP(Convert.ToInt32(DropDownList7.SelectedValue));
            MostrarPasillosC(Convert.ToInt32(DropDownList7.SelectedValue));
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Literal3.Text = "Estantes de Pasillo:";
            MostarE(Convert.ToInt32(DropDownList8.SelectedValue), Convert.ToInt32(DropDownList7.SelectedValue));
            MostrarEstanteriaC(Convert.ToInt32(DropDownList8.SelectedValue), Convert.ToInt32(DropDownList7.SelectedValue));
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Literal4.Text = "Niveles de Estanteria";
            MostarN(DropDownList9.SelectedValue, Convert.ToInt32(DropDownList8.SelectedValue), Convert.ToInt32(DropDownList7.SelectedValue));
        }
        public void MostrarProducto() {
            string sentencia = "SELECT * FROM ProductoNuevo WHERE idAdmin = " + Conexion.NIT;
            DropDownList10.DataSource = operaciones.Lista(sentencia);
            DropDownList10.DataMember = "datos";
            DropDownList10.DataTextField = "Nombre";
            DropDownList10.DataValueField = "idProducto";
            DropDownList10.DataBind();
        }
        public void MostrarProveedor() {
            
            string sentencia = "SELECT * FROM Proveedor WHERE idAdmin = " + Conexion.NIT;
            DropDownList11.DataSource = operaciones.Lista(sentencia);
            DropDownList11.DataMember = "datos";
            DropDownList11.DataTextField = "Nombre";
            DropDownList11.DataValueField = "Nombre";
            DropDownList11.DataBind();
        }
        public void MostrarBodega5()
        {
            string sentencia = "SELECT * FROM Bodega WHERE idAdmin = " + Conexion.NIT;
            DropDownList14.DataSource = operaciones.Lista(sentencia);
            DropDownList14.DataMember = "datos";
            DropDownList14.DataTextField = "nombre";
            DropDownList14.DataValueField = "idBodega";
            DropDownList14.DataBind();
        }
        public void MostrarPasilloS(int b)
        {
            string sentencia = "SELECT * FROM Pasillo WHERE Bodega = " + b;
            DropDownList15.DataSource = operaciones.Lista(sentencia);
            DropDownList15.DataMember = "datos";
            DropDownList15.DataTextField = "idPasillo";
            DropDownList15.DataValueField = "idPasillo";
            DropDownList15.DataBind();
        }
        public void MostrarPasilloBS(int b)
        {
            string sentencia = "SELECT * FROM Pasillo WHERE Bodega = " + b;
            DropDownList25.DataSource = operaciones.Lista(sentencia);
            DropDownList25.DataMember = "datos";
            DropDownList25.DataTextField = "idPasillo";
            DropDownList25.DataValueField = "idPasillo";
            DropDownList25.DataBind();
        }
        public void MostrarEstanteriaBS(int ce, int b)
        {
            string sentencia = "SELECT * FROM Estante WHERE Pasillo = " + b + "AND Bodega = " + ce;
            DropDownList26.DataSource = operaciones.Lista(sentencia);
            DropDownList26.DataMember = "datos";
            DropDownList26.DataTextField = "idEstante";
            DropDownList26.DataValueField = "idEstante";
            DropDownList26.DataBind();
        }
        public void MostrarEstanteriaS(int ce, int b)
        {
            string sentencia = "SELECT * FROM Estante WHERE Pasillo = " + b + "AND Bodega = " + ce;
            DropDownList16.DataSource = operaciones.Lista(sentencia);
            DropDownList16.DataMember = "datos";
            DropDownList16.DataTextField = "idEstante";
            DropDownList16.DataValueField = "idEstante";
            DropDownList16.DataBind();
        }
        public void MostrarNiveles(int ce, int b, string a)
        {
            string sentencia = "SELECT * FROM Nivel WHERE idEstante = '" + a + "' AND Pasillo = " + b + "AND Bodega = " + ce;
            DropDownList17.DataSource = operaciones.Lista(sentencia);
            DropDownList17.DataMember = "datos";
            DropDownList17.DataTextField = "idNivel";
            DropDownList17.DataValueField = "idNivel";
            DropDownList17.DataBind();
        }
        public void MostrarNivelesB(int ce, int b, string a)
        {
            string sentencia = "SELECT * FROM Nivel WHERE idEstante = '" + a + "' AND Pasillo = " + b + "AND Bodega = " + ce;
            DropDownList27.DataSource = operaciones.Lista(sentencia);
            DropDownList27.DataMember = "datos";
            DropDownList27.DataTextField = "idNivel";
            DropDownList27.DataValueField = "idNivel";
            DropDownList27.DataBind();
        }
        public void MostrarBodegasA()
        {

            string sentencia = "SELECT * FROM Bodega WHERE idAdmin = " + Conexion.NIT;
            DropDownList20.DataSource = operaciones.Lista(sentencia);
            DropDownList20.DataMember = "datos";
            DropDownList20.DataTextField = "nombre";
            DropDownList20.DataValueField = "idBodega";
            DropDownList20.DataBind();
        }
        public void MostrarBodegasR()
        {

            string sentencia = "SELECT * FROM Bodega WHERE idAdmin = " + Conexion.NIT;
            DropDownList23.DataSource = operaciones.Lista(sentencia);
            DropDownList23.DataMember = "datos";
            DropDownList23.DataTextField = "nombre";
            DropDownList23.DataValueField = "idBodega";
            DropDownList23.DataBind();
        }
        public void MostrarProductoR()
        {
            string sentencia = "SELECT * FROM ProductoNuevo WHERE idAdmin = " + Conexion.NIT;
            DropDownList24.DataSource = operaciones.Lista(sentencia);
            DropDownList24.DataMember = "datos";
            DropDownList24.DataTextField = "Nombre";
            DropDownList24.DataValueField = "idProducto";
            DropDownList24.DataBind();
        }
        public void Mostrarclientes()
        {

            string sentencia = "SELECT * FROM cliente WHERE idAdmin = " + Conexion.NIT;
            DropDownList20.DataSource = operaciones.Lista(sentencia);
            DropDownList20.DataMember = "datos";
            DropDownList20.DataTextField = "Nombre";
            DropDownList20.DataValueField = "Nombre";
            DropDownList20.DataBind();
        }
        public void MostrarProductoS()
        {
            string sentencia = "SELECT * FROM ProductoNuevo WHERE idAdmin = " + Conexion.NIT;
            DropDownList19.DataSource = operaciones.Lista(sentencia);
            DropDownList19.DataMember = "datos";
            DropDownList19.DataTextField = "Nombre";
            DropDownList19.DataValueField = "idProducto";
            DropDownList19.DataBind();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            if (DropDownList18.SelectedItem.Value == "Cliente")
            {
                Mostrarclientes();
                Literal6.Text = "Seleccionar Cliente";

            }
            else if (DropDownList18.SelectedItem.Value == "Bodega")
            {
                Literal6.Text = "Seleccionar Bodega que recibe";
                MostrarBodegasA();
               
                Literal5.Text = "Ubicar Producto en la bodega que recibe:";
                Literal9.Text = "Seleccionar el pasillo de la bodega";
                DropDownList25.Visible = true;
                Button21.Visible = true;
                DropDownList26.Visible = true;
                Button22.Visible = true;
                Literal10.Text = "Seleccionar estanteria del pasillo";
                Literal11.Text = "Seleccionar Nivel de la estanteria";
                DropDownList27.Visible = true;
                Button23.Visible = true;

            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            MostrarPasilloS(Convert.ToInt32(DropDownList14.SelectedValue));
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            MostrarEstanteriaS(Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList15.SelectedValue));
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            MostrarNiveles(Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList15.SelectedValue), DropDownList16.SelectedValue);
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            try {
                string fechayhora = DateTime.Now.ToString("HH:mm  -  dd/MMMM/yyyy");
                int total = Convert.ToInt32(TextBox14.Text) * Convert.ToInt32(TextBox15.Text);
                operaciones.InsertarEntrada(fechayhora, Convert.ToInt32(DropDownList10.SelectedValue), DropDownList11.SelectedValue, Convert.ToInt32(TextBox14.Text), double.Parse(TextBox15.Text), total);
                if (DropDownList13.SelectedItem.Value == "Lotes")
                {
                    if (operaciones.Comprobar(Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(TextBox15.Text), Convert.ToInt32(DropDownList10.SelectedValue)))
                    {
                        int bueno = operaciones.retornarLote(Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(TextBox15.Text), Convert.ToInt32(DropDownList10.SelectedValue), total);
                        operaciones.InsertarUbicacion(Convert.ToInt32(TextBox14.Text), Convert.ToInt32(DropDownList10.SelectedValue), "ultimo", "Lotes", fechayhora, Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList15.SelectedValue), DropDownList16.SelectedValue, Convert.ToInt32(DropDownList17.SelectedValue));
                        int mi = operaciones.retornarUbicacion("Lotes" ,Convert.ToInt32(TextBox14.Text), Convert.ToInt32(DropDownList10.SelectedValue), Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList15.SelectedValue), DropDownList16.SelectedValue, Convert.ToInt32(DropDownList17.SelectedValue));
                        operaciones.InsertarASiLote(Convert.ToInt32(TextBox15.Text), bueno, mi);
                    }
                    else
                    {
                        operaciones.InsertarUbicacion(Convert.ToInt32(TextBox14.Text), Convert.ToInt32(DropDownList10.SelectedValue), "ultimo", "Lotes", fechayhora,Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList15.SelectedValue), DropDownList16.SelectedValue, Convert.ToInt32(DropDownList17.SelectedValue));
                        operaciones.InsertarLote(total, Convert.ToInt32(DropDownList14.SelectedValue));
                        int buenos = operaciones.retornarLotes(Convert.ToInt32(DropDownList14.SelectedValue), total);
                        int mi = operaciones.retornarUbicacion("Lotes", Convert.ToInt32(TextBox14.Text), Convert.ToInt32(DropDownList10.SelectedValue), Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList15.SelectedValue), DropDownList16.SelectedValue, Convert.ToInt32(DropDownList17.SelectedValue));
                        operaciones.InsertarASiLote(Convert.ToInt32(TextBox15.Text), buenos, mi);
                    }
                    Response.Write("<script>window.alert('Nueva entrada de lotes de producto ingresada con Exito')</script>");
                    TextBox14.Text = string.Empty;
                    TextBox15.Text = string.Empty;
                    

                }
                else
                {
                    operaciones.InsertarUbicacion(Convert.ToInt32(TextBox14.Text), Convert.ToInt32(DropDownList10.SelectedValue), "Saldo", "Saldo", fechayhora ,Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList15.SelectedValue), DropDownList16.SelectedValue, Convert.ToInt32(DropDownList17.SelectedValue));
                    int mi = operaciones.retornarUbicacion("Saldo", Convert.ToInt32(TextBox14.Text), Convert.ToInt32(DropDownList10.SelectedValue), Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList15.SelectedValue), DropDownList16.SelectedValue, Convert.ToInt32(DropDownList17.SelectedValue));
                    if (operaciones.retornarSaldo(Convert.ToInt32(DropDownList14.SelectedValue), Convert.ToInt32(DropDownList10.SelectedValue), total, Convert.ToInt32(TextBox14.Text), mi)) {
                        Response.Write("<script>window.alert('Nueva entrada de producto ingresada con Exito')</script>");
                        TextBox14.Text = string.Empty;
                        TextBox15.Text = string.Empty;
                    }
                    else {
                        operaciones.InsertarSaldo(total, Convert.ToInt32(TextBox14.Text), Convert.ToInt32(DropDownList14.SelectedValue), mi);
                        operaciones.retornarASaldo(Convert.ToInt32(DropDownList14.SelectedValue), total, Convert.ToInt32(TextBox14.Text), mi);
                        Response.Write("<script>window.alert('Nueva entrada de producto ingresada con Exito')</script>");
                        TextBox14.Text = string.Empty;
                        TextBox15.Text = string.Empty;
                    }
                }
            } catch (Exception) {
            
            
            }

            MostrarBodegas();
            MostrarBodega2();
    
            MostrarBodega3();
   
            MostrarBodega4();
     

            MostrarProducto();
            MostrarBodega5();
       
            //MostarEntrada();
            //MostarSalida();
            MostrarProductoS();
         
            MostrarProductoR();
            MostrarBodegasR();
        }
        public void MostarEntrada()
        {
            try
            {
                string query = "SELECT* FROM Entrada WHERE idAdmin = " + Conexion.NIT;
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
        public void MostarSalida()
        {
            try
            {
                string query = "SELECT* FROM salida WHERE idAdmin = " + Conexion.NIT;
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
        public void MostarDisponiblesSalidas(int producto)
        {
            try
            {
                string query = "SELECT idUbicacion AS Codigo_Ubicacion , cantidad AS Cantidad_Poducto, ProductoNuevo.Nombre AS Nombre_Producto, Bodega, Pasillo, idEstante AS Estante, idNivel AS Nivel FROM Ubicacion_Producto, Bodega, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.Bodega = Bodega.idBodega AND gestion = 'Saldo' AND cantidad !=0 AND Producto = " + producto + " AND Bodega.idAdmin = " + Conexion.NIT;
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
        public void MostrarUbis(int producto)
        {
            string sentencia = "SELECT idUbicacion AS Codigo_Ubicacion FROM Ubicacion_Producto, Bodega, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.Bodega = Bodega.idBodega AND gestion = 'Saldo' AND cantidad !=0 AND Producto = " + producto + " AND Bodega.idAdmin = " + Conexion.NIT;
            DropDownList22.DataSource = operaciones.Lista(sentencia);
            DropDownList22.DataMember = "datos";
            DropDownList22.DataTextField = "Codigo_Ubicacion";
            DropDownList22.DataValueField = "Codigo_Ubicacion";
            DropDownList22.DataBind();
        }
        public void MostarDisponiblesSalidasL(int producto)
        {
            try
            {
                string query = "SELECT idUbicacion AS Codigo_Ubicacion , cantidad AS Cantidad_Poducto, ProductoNuevo.Nombre AS Nombre_Producto, Bodega, Pasillo, idEstante AS Estante, idNivel AS Nivel FROM Ubicacion_Producto, Bodega, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.Bodega = Bodega.idBodega AND gestion = 'Lotes' AND cantidad !=0 AND idUbicacion = " + producto + " AND Bodega.idAdmin = " + Conexion.NIT;
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
        public void MostrarUbisL(int producto)
        {
            string sentencia = "SELECT idUbicacion AS Codigo_Ubicacion FROM Ubicacion_Producto WHERE idUbicacion = " + producto;
            DropDownList22.DataSource = operaciones.Lista(sentencia);
            DropDownList22.DataMember = "datos";
            DropDownList22.DataTextField = "Codigo_Ubicacion";
            DropDownList22.DataValueField = "Codigo_Ubicacion";
            DropDownList22.DataBind();
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            try
            {
                string fechayhora = DateTime.Now.ToString("HH:mm  -  dd/MMMM/yyyy");
                Conexion.producto = Convert.ToInt32(DropDownList19.SelectedValue);
                Conexion.sal = DropDownList21.SelectedItem.Value;
                
                if (Conexion.sal == "Lotes")
                {
                    if (operaciones.Determinars(Convert.ToInt32(TextBox16.Text), Conexion.producto))
                    {
                        if (DropDownList18.SelectedItem.Value == "Bodega")
                        {
                            Conexion.bodega = Convert.ToInt32(DropDownList20.SelectedValue);
                            MostrarPasilloBS(Conexion.bodega);
                            Conexion.cantidad = Convert.ToInt32(TextBox16.Text);
                        }
                        operaciones.InsertarSalida(fechayhora, Conexion.producto, DropDownList20.SelectedValue, Convert.ToInt32(TextBox16.Text));
                        Literal7.Text = "Ubicaciones del Producto segun el lote correspondiente:";
                        int bel = operaciones.EncontrarLote(Conexion.producto);
                        MostarDisponiblesSalidasL(bel);
                        MostrarUbisL(bel);
                        Literal8.Text = "Productos a retirar segun el orden:" + Convert.ToInt32(TextBox16.Text);
                        Response.Write("<script>window.alert('Se muestra ubicaciones para poder retirar al producto')</script>");
                    }
                    else
                    {
                        Response.Write("<script>window.alert('No hay suficiente existencia del producto para poder realizar la salida')</script>");
                    }
                }
                else
                {
                    if (operaciones.Determinar(Convert.ToInt32(TextBox16.Text), Conexion.producto))
                    {
                        if (DropDownList18.SelectedItem.Value == "Bodega")
                        {
                            Conexion.bodega = Convert.ToInt32(DropDownList20.SelectedValue);
                            MostrarPasilloBS(Conexion.bodega);
                            Conexion.cantidad = Convert.ToInt32(TextBox16.Text);
                        }
                        operaciones.InsertarSalida(fechayhora, Conexion.producto, DropDownList20.SelectedValue, Convert.ToInt32(TextBox16.Text));
                        Literal7.Text = "Ubicaciones del Producto en Bodegas:";
                        MostarDisponiblesSalidas(Conexion.producto);
                        MostrarUbis(Conexion.producto);
                        Literal8.Text = "Productos a retirar: " + Convert.ToInt32(TextBox16.Text);
                        Response.Write("<script>window.alert('Se muestra ubicaciones para poder retirar al producto')</script>");
                    }
                    else
                    {
                        Response.Write("<script>window.alert('No hay suficiente existencia del producto para poder realizar la salida')</script>");
                    }
                }
                
                
            }
            catch (Exception)
            {


            }
            Actualizar();
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            if (Conexion.sal == "Lotes")
            {
                if (Conexion.Extraccion == 0)
                {
                    Conexion.Extraccion = Convert.ToInt32(TextBox16.Text);
                }
                noDisponible();
                Conexion.ubicacion = Convert.ToInt32(DropDownList22.SelectedValue);
                operaciones.TomarLote(Convert.ToInt32(DropDownList22.SelectedValue), Conexion.Extraccion);
                int ns = operaciones.RestarCantidad(Convert.ToInt32(DropDownList22.SelectedValue));
                if (ns == 1)
                {
                    Literal7.Text = "";
                    Literal8.Text = "Se retiraron todos los productos";
                    MostarDisponiblesSalidasL(0);
                    MostrarUbisL(0);
                    Disponible();
                    Response.Write("<script>window.alert('Se retiro todo el producto')</script>");
                }
                else if (ns == 2)
                {
                    Literal8.Text = "Productos a retirar: " + Conexion.Extraccion;
                    MostarDisponiblesSalidasL(Conexion.producto);
                    MostrarUbisL(Conexion.producto);
                    Response.Write("<script>window.alert('Continue con retirar mas producto')</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('Hubo un error')</script>");
                }
            }
            else
            {
                if (Conexion.Extraccion == 0)
                {
                    Conexion.Extraccion = Convert.ToInt32(TextBox16.Text);
                }
                noDisponible();
                Conexion.ubicacion = Convert.ToInt32(DropDownList22.SelectedValue);
                operaciones.TomarSaldo(Convert.ToInt32(DropDownList22.SelectedValue), Conexion.Extraccion);
                int ns = operaciones.RestarCantidad(Convert.ToInt32(DropDownList22.SelectedValue));
                if (ns == 1)
                {
                    Literal8.Text = "Se retiraron todos los productos";
                    MostarDisponiblesSalidas(0);
                    MostrarUbis(0);
                    Disponible();
                    Response.Write("<script>window.alert('Se retiro todo el producto')</script>");
                }
                else if (ns == 2)
                {
                    Literal8.Text = "Productos a retirar: " + Conexion.Extraccion;
                    MostarDisponiblesSalidas(Conexion.producto);
                    MostrarUbis(Conexion.producto);
                    Response.Write("<script>window.alert('Continue con retirar mas producto')</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('Hubo un error')</script>");
                }
            }
           
        }


        public void noDisponible() {
            DropDownList18.Enabled = false;
            Button11.Enabled = false;
            DropDownList19.Enabled = false;
            DropDownList20.Enabled = false;
            TextBox16.Enabled = false;
            DropDownList21.Enabled = false;
            Button17.Enabled = false;
        }
        public void Disponible() {
            DropDownList18.Enabled = true;
            Button11.Enabled = true;
            DropDownList19.Enabled = true;
            DropDownList20.Enabled = true;
            TextBox16.Enabled = true;
            DropDownList21.Enabled = true;
            Button17.Enabled = true;
        }
        public void Actualizar() {
            MostrarBodegas();
            MostrarBodega2();
            MostrarPasillos(0);
            MostrarBodega3();
            MostrarPasillos2(0);
            MostrarEstanteria(0, 0);
            MostrarBodega4();
            MostrarPasillosC(0);
            MostrarEstanteriaC(0, 0);
            MostrarProducto();
            MostrarBodega5();
            MostrarPasilloS(0);
            MostrarEstanteriaS(0, 0);
            MostrarNiveles(0, 0, "");

            MostrarProductoS();
  
            MostrarProductoR();
            MostrarBodegasR();
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            MostarReportesB(Convert.ToInt32(DropDownList23.SelectedValue));
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.AddHeader("content-disposition", "attachment;filename=ReporteBodega.xls");
            Response.ContentType = "application/ms-excel ";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView7.AllowPaging = false;
            GridView7.DataBind();
            GridView7.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            if (verificar(Convert.ToInt32(DropDownList24.SelectedValue)))
            {
                MostarReportesP(Convert.ToInt32(DropDownList24.SelectedValue));
            }
            else { 
                MostarReportesP2(Convert.ToInt32(DropDownList24.SelectedValue));
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.AddHeader("content-disposition", "attachment;filename=ReporteProducto.xls");
            Response.ContentType = "application/ms-excel ";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView7.AllowPaging = false;
            GridView7.DataBind();
            GridView7.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

        }
        public void MostarReportesB(int codigo)
        {
            try
            {
                string query = "SELECT idProducto AS Numero_Producto, Nombre, Ubicacion_Producto.cantidad AS Cantidad, gestion AS GESTION_DE_PRODUCTO, Pasillo, idEstante AS Estante, idNivel AS Nivel, FechaEntrada FROM Ubicacion_Producto, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.cantidad !=0 AND Bodega =  " + codigo;
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
        public void MostarReportesP(int codigo)
        {
            try
            {
                string query = "SELECT idProducto AS Numero_Producto, Nombre, Saldo.Costo AS CostoPromedio_en_Bodega, Ubicacion_Producto.cantidad AS Cantidad, gestion AS GESTION_DE_PRODUCTO, Ubicacion_Producto.Bodega, Pasillo, idEstante AS Estante, idNivel AS Nivel, FechaEntrada  FROM Saldo, AsignacionSaldo, Ubicacion_Producto, ProductoNuevo WHERE Saldo.idSaldo= AsignacionSaldo.Saldo AND AsignacionSaldo.ubicacion = Ubicacion_Producto.idUbicacion AND ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.cantidad !=0  AND Ubicacion_Producto.Producto = " + codigo;
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
        public void MostarReportesP2(int codigo)
        {
            try
            {
                string query = "SELECT idProducto AS Numero_Producto, Nombre, Asignacion_Lote.Costo AS CostoPromedio, Ubicacion_Producto.cantidad AS Cantidad, gestion AS GESTION_DE_PRODUCTO, Lote.Costo_Lote, Ubicacion_Producto.Bodega,Pasillo, idEstante AS Estante, idNivel AS Nivel, FechaEntrada FROM Lote, Asignacion_Lote, Ubicacion_Producto, ProductoNuevo WHERE Lote.idLote = Asignacion_Lote.Lote AND Asignacion_Lote.idUbicacion = Ubicacion_Producto.idUbicacion AND ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.cantidad != 0 AND ProductoNuevo.idProducto = " + codigo;
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
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }

        public bool verificar(int producto)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Ubicacion_Producto, ProductoNuevo WHERE ProductoNuevo.idProducto = Ubicacion_Producto.Producto AND Ubicacion_Producto.cantidad != 0 AND Ubicacion_Producto.Producto = " + producto, conexion.getConexion());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr["gestion"].ToString() == "Saldo") {
                    return true;
                }
                return false;
            }
            return false;
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            MostrarEstanteriaBS(Conexion.bodega, Convert.ToInt32(DropDownList25.SelectedValue));
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            MostrarNivelesB(Conexion.bodega, Convert.ToInt32(DropDownList25.SelectedValue), DropDownList26.SelectedValue);
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            try
            {
                string fechayhora = DateTime.Now.ToString("HH:mm - dd/MMMM/yyyy");

                if (Conexion.sal == "Lotes")
                {
                    int costo = operaciones.retornarLL(Conexion.ubicacion);
                    int total = costo * Conexion.cantidad;
                    if (operaciones.Comprobar(Conexion.bodega, costo, Conexion.producto))
                    {
                        operaciones.InsertarEntrada(fechayhora, Conexion.producto, Convert.ToString(Conexion.bodega), Conexion.cantidad, costo, total);
                        int bueno = operaciones.retornarLote(Conexion.bodega, costo, Conexion.producto, total);
                        operaciones.InsertarUbicacion(Conexion.cantidad, Conexion.producto, "ultimo", "Lotes", fechayhora, Conexion.bodega, Convert.ToInt32(DropDownList25.SelectedValue), DropDownList26.SelectedValue, Convert.ToInt32(DropDownList27.SelectedValue));
                        int mi = operaciones.retornarUbicacion("Lotes", Conexion.cantidad, Conexion.producto, Conexion.bodega, Convert.ToInt32(DropDownList25.SelectedValue), DropDownList26.SelectedValue, Convert.ToInt32(DropDownList27.SelectedValue));
                        operaciones.InsertarASiLote(costo, bueno, mi);
                    }
                    else
                    {
                        operaciones.InsertarUbicacion(Conexion.cantidad, Conexion.producto, "ultimo", "Lotes", fechayhora, Conexion.bodega, Convert.ToInt32(DropDownList25.SelectedValue), DropDownList26.SelectedValue, Convert.ToInt32(DropDownList27.SelectedValue));
                        operaciones.InsertarLote(total, Conexion.bodega);
                        int buenos = operaciones.retornarLotes(Conexion.bodega, total);
                        int mi = operaciones.retornarUbicacion("Lotes", Conexion.cantidad, Conexion.producto, Conexion.bodega, Convert.ToInt32(DropDownList25.SelectedValue), DropDownList26.SelectedValue, Convert.ToInt32(DropDownList27.SelectedValue));
                        operaciones.InsertarASiLote(costo, buenos, mi);
                    }
                    Response.Write("<script>window.alert('Nueva entrada de lotes de producto ingresada con Exito a la bodega')</script>");

                }
                else
                {
                    int costo = operaciones.retornarAL(Conexion.ubicacion);
                    int total = costo * Conexion.cantidad;
                    operaciones.InsertarEntrada(fechayhora, Conexion.producto, Convert.ToString(Conexion.bodega), Conexion.cantidad, costo, total);
                    operaciones.InsertarUbicacion(Conexion.cantidad, Conexion.producto, "Saldo", "Saldo", fechayhora, Conexion.bodega, Convert.ToInt32(DropDownList25.SelectedValue), DropDownList26.SelectedValue, Convert.ToInt32(DropDownList27.SelectedValue));
                    int mi = operaciones.retornarUbicacion("Saldo", Conexion.cantidad, Conexion.producto, Conexion.bodega, Convert.ToInt32(DropDownList25.SelectedValue), DropDownList26.SelectedValue, Convert.ToInt32(DropDownList27.SelectedValue));
                    if (operaciones.retornarSaldo(Conexion.bodega, Conexion.producto, total, Conexion.cantidad, mi))
                    {
                        Response.Write("<script>window.alert('Nueva entrada de producto ingresada con Exito')</script>");
                    }
                    else
                    {
                        operaciones.InsertarSaldo(total, Conexion.cantidad, Conexion.bodega, mi);
                        operaciones.retornarASaldo(Conexion.bodega, total, Conexion.cantidad, mi);
                        Response.Write("<script>window.alert('Nueva entrada de producto ingresada con Exito')</script>");
                    }
                }
                Literal5.Text = "";
                Literal9.Text = "";
                DropDownList25.Visible = false;
                Button21.Visible = false;
                DropDownList26.Visible = false;
                Button22.Visible = false;
                Literal10.Text = "";
                Literal11.Text = "";
                DropDownList27.Visible = false;
                Button23.Visible = false;
            }
            catch (Exception)
            {


            }

            MostrarBodegas();
            MostrarBodega2();
            MostrarBodega3();
            MostrarBodega4();
            MostrarProducto();
            MostrarBodega5();

            MostrarProductoS();
            MostrarProductoR();
            MostrarBodegasR();
        }
    }
}