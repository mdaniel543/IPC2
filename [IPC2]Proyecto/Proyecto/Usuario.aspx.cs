using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace Proyecto
{
    public partial class Usuario : System.Web.UI.Page
    {
        Operaciones operaciones = new Operaciones();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Mostrar();
                Lit1.Text = Conexion.NOMBRE;
                Literal1.Text = "Bienvenido " + Conexion.Nombres;
                Literal2.Text = "Usuario de " + Conexion.NOMBRE;
                proveedores();
                MostrarC();
                clientes();
                MostrarPr();
                producto();
            }
        }
        public void Mostrar()
        {
            string query = "SELECT * FROM Proveedor WHERE idAdmin = " + Conexion.NIT;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView2.DataSource = (dt);
            GridView2.DataBind();
        }
        public void MostrarC() 
        {
            string query = "SELECT idCliente, Nombre, Direccion, Telefono, PersonaContacto, Correo, LimiteCredito, diasCredito, cliente.idC, Abreviatura, Descripcion FROM cliente, categoria WHERE cliente.idC = categoria.idC AND idAdmin = " + Conexion.NIT ;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = (dt);
            GridView1.DataBind();
        }
        public void MostrarPr()
        {
            string query = "SELECT idProducto AS Codigo, codigobarra, Nombre, ProductoNuevo.Descripcion, clasificacion.idc, clasificacion.Descripcion, clasificacion.Abreviatura, presentacion.idp, presentacion.Descripcion, presentacion.Abreviatura FROM ProductoNuevo, clasificacion, presentacion WHERE ProductoNuevo.idc = clasificacion.idc AND ProductoNuevo.idp = presentacion.idp AND ProductoNuevo.idAdmin = " + Conexion.NIT;
            SqlDataAdapter adp = new SqlDataAdapter(query, conexion.getConexion());
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView3.DataSource = (dt);
            GridView3.DataBind();
        }
        public void clientes()
        {
            string sentencia = "SELECT * FROM cliente WHERE idAdmin = " + Conexion.NIT;
            DropDownList1.DataSource = operaciones.Lista(sentencia);
            DropDownList1.DataMember = "datos";
            DropDownList1.DataTextField = "Nombre";
            DropDownList1.DataValueField = "idCliente";
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (extension == ".xml")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/Xml/" + FileUpload1.FileName));
                    LeerXMLc();
                    Response.Write("<script>window.alert('Se subio el archivo')</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('No es un archivo .xml')</script>");
                }
            }
            else
            {
                Response.Write("<script>window.alert('No se ha seleccionado nada')</script>");
            }
            clientes();
            MostrarC();
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = Convert.ToInt32(DropDownList1.SelectedValue);
                if (operaciones.EliminarClientes(nit))
                {
                    Response.Write("<script>window.alert('Ha dado de baja al cliente')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido dar de baja al cliente')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido dar de baja al cliente verifque los datos')</script>");
            }
            clientes();
            MostrarC();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (FileUpload2.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload2.FileName);
                if (extension == ".xml")
                {
                    FileUpload2.SaveAs(Server.MapPath("~/Xml/" + FileUpload2.FileName));
                    LeerXMLp();
                    Response.Write("<script>window.alert('Se subio el archivo')</script>");
                }
                else {
                    Response.Write("<script>window.alert('No es un archivo .xml')</script>");
                }
            }
            else {
                Response.Write("<script>window.alert('No se ha seleccionado nada')</script>");
            }
            Mostrar();
            proveedores();
        }
        public void proveedores()
        {
            string sentencia = "SELECT * FROM Proveedor WHERE idAdmin = " + Conexion.NIT;
            DropDownList2.DataSource = operaciones.Lista(sentencia);
            DropDownList2.DataMember = "datos";
            DropDownList2.DataTextField = "Nombre";
            DropDownList2.DataValueField = "idProveedor";
            DropDownList2.DataBind();
        }
        public void producto()
        {
            string sentencia = "SELECT * FROM ProductoNuevo WHERE idAdmin = " + Conexion.NIT;
            DropDownList3.DataSource = operaciones.Lista(sentencia);
            DropDownList3.DataMember = "datos";
            DropDownList3.DataTextField = "Nombre";
            DropDownList3.DataValueField = "idProducto";
            DropDownList3.DataBind();
        }
        public void LeerXMLp()
        {
            try
            {
                XDocument documento = XDocument.Load(Server.MapPath(@"~/Xml/" + FileUpload2.FileName));

                var proveedores = from aux in documento.Descendants("elementoProveedores") select aux;
                foreach (XElement e in proveedores.Elements("proveedores"))
                {
                    operaciones.InsertarProveedores(Convert.ToInt32(e.Element("NIT").Value), e.Element("nombre").Value, e.Element("direccion").Value, Convert.ToInt32(e.Element("telefono").Value), e.Element("personaContacto").Value, e.Element("correoElectronico").Value, Convert.ToInt32(e.Element("limiteCredito").Value));
                }
            }
            catch (Exception) {
                Response.Write("<script>window.alert('No se ha podido leer el archivo')</script>");
            }

        }
        public void LeerXMLc()
        {
            try
            {
                XDocument documento = XDocument.Load(Server.MapPath(@"~/Xml/" + FileUpload1.FileName));

                var clientes = from aux in documento.Descendants("elementoClientes") select aux;

                foreach (XElement e in clientes.Elements("clientes"))
                {
                    foreach (XElement ex in e.Elements("categoria"))
                    {
                        operaciones.InsertarCategoria(Convert.ToInt32(ex.Element("codigo").Value), ex.Element("abreviatura").Value, ex.Element("descripcion").Value);
                        operaciones.InsertarClientes(Convert.ToInt32(e.Element("NIT").Value), e.Element("nombre").Value, e.Element("direccion").Value, Convert.ToInt32(e.Element("telefono").Value), e.Element("personaContacto").Value, e.Element("correoElectronico").Value, Convert.ToInt32(e.Element("limiteCredito").Value), Convert.ToInt32(e.Element("diasCredito").Value), Convert.ToInt32(ex.Element("codigo").Value));
                    }
                }
            }
            catch (Exception) {
                Response.Write("<script>window.alert('No se ha podido leer el archivo')</script>");
            }
        }
        public void LeerXMLpr()
        {
            try
            {
                XDocument documento = XDocument.Load(Server.MapPath(@"~/Xml/" + FileUpload3.FileName));

                var clientes = from aux in documento.Descendants("elementoProductos") select aux;

                foreach (XElement e in clientes.Elements("productos"))
                {
                    foreach (XElement ex in e.Elements("presentacion"))
                    {
                        foreach (XElement exi in e.Elements("clasificacion"))
                        {
                            operaciones.InsertarClasificacion(exi.Element("descripcion").Value, exi.Element("abreviatura").Value);
                            operaciones.InsertarPresentacion(ex.Element("descripcion").Value, ex.Element("abreviatura").Value);
                            operaciones.InsertarProducto(Convert.ToInt32(e.Element("codigo").Value), Convert.ToInt32(e.Element("codigoBarra").Value), e.Element("nombre").Value, e.Element("descripcion").Value, operaciones.RetornoPre(ex.Element("abreviatura").Value), operaciones.RetornoClasi(exi.Element("abreviatura").Value));
                        }
                    }

                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido leer el archivo')</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = Convert.ToInt32(DropDownList2.SelectedValue);
                if (operaciones.EliminarProvee(nit))
                {
                    Response.Write("<script>window.alert('Ha dado de baja al proveedor')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido dar de baja al proveedor')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido dar de baja al proveedor verifque los datos')</script>");
            }
            Mostrar();
            proveedores();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (FileUpload3.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload3.FileName);
                if (extension == ".xml")
                {
                    FileUpload3.SaveAs(Server.MapPath("~/Xml/" + FileUpload3.FileName));
                    LeerXMLpr();
                    Response.Write("<script>window.alert('Se subio el archivo')</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('No es un archivo .xml')</script>");
                }
            }
            else
            {
                Response.Write("<script>window.alert('No se ha seleccionado nada')</script>");
            }
            MostrarPr();
            producto();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                int nit = Convert.ToInt32(DropDownList3.SelectedValue);
                if (operaciones.EliminarProducto(nit))
                {
                    Response.Write("<script>window.alert('Ha dado de baja al producto')</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido dar de baja al producto')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>window.alert('No se ha podido dar de baja al producto verifque los datos')</script>");
            }
            MostrarPr();
            producto();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Mostrar();
            Lit1.Text = Conexion.NOMBRE;
            Literal1.Text = "Bienvenido " + Conexion.Nombres;
            Literal2.Text = "Usuario de " + Conexion.NOMBRE;
            proveedores();
            MostrarC();
            clientes();
            MostrarPr();
            producto();
        }
    }
}