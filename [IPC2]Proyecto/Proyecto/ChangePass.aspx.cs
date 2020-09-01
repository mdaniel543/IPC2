using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class ChangePass : System.Web.UI.Page
    {
        Operaciones operaciones = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Lit1.Text = Conexion.NOMBRE;
                //TextBox1.Text = string.Empty;
                //TextBox2.Text = string.Empty;
            }
             
        }
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            string hola = TextBox1.Text;
            if (TextBox1.Text == TextBox1.Text)
            {
                if (operaciones.ActualizarPass(hola))
                {
                    Response.Redirect("AdminService.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('No se ha podido cambiar la contraseña')</script>");
                }

            }
            else
            {

                Response.Write("<script>window.alert('No coinciden las contraseñas, Intente de Nuevo')</script>");
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
            }
        }
    }
}