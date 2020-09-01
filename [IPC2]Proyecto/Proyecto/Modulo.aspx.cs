using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Modulo : System.Web.UI.Page
    {
        Operaciones operaciones = new Operaciones();
        Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Literal1.Text = Conexion.NOMBRE;
                Literal2.Text = Conexion.Nombres;
                MostrarAccesos();
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Modulo Inventario")
            {
                Response.Redirect("MInventario.aspx");

            } else 
            {
                Response.Redirect("Usuario.aspx");
            }

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void MostrarAccesos() {
            string sentencia = "SELECT Modulo.Nombre FROM  Detalle_Modulo, Modulo, Asignacion, Acceso WHERE Modulo.idModulo = Detalle_Modulo.idModulo AND Detalle_Modulo.idDetalle = Asignacion.idDetalle AND Asignacion.idAsignacion = Acceso.idAsignacion AND idUsu = " + Conexion.Codigo;
            DropDownList1.DataSource = operaciones.Lista(sentencia);
            DropDownList1.DataMember = "datos";
            DropDownList1.DataTextField = "Nombre";
            DropDownList1.DataValueField = "Nombre";
            DropDownList1.DataBind();
        }
    }
}