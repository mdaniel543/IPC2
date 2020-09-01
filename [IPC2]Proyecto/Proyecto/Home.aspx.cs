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
    public partial class Home : System.Web.UI.Page
    {
        Operaciones Op = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
           

        }

        protected void name_TextChanged(object sender, EventArgs e)
        {

        }

        protected void pass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int login = Op.Login(name.Text, pass.Text);
            if (login == 1)
            {
                Response.Redirect("AdminSistem.aspx");

            }
            else if (login == 2)
            {
                Response.Redirect("AdminService.aspx");
            }
            else if (login == 3)
            {
                Response.Redirect("ChangePass.aspx");
            }
            else if (login == 4)
            {
                Response.Redirect("Modulo.aspx");
            }else if (login == 5) 
            {
                Response.Redirect("ChangePass2.aspx");
            }
            else if (login == 0)
            {
                name.Text = string.Empty;
                pass.Text = string.Empty;
                name.Focus();
                Response.Write("<script>window.alert('USUARIO O CONTRASEÑA INVALIDO. INTENTE DE NUEVO')</script>");
            }
            else {
                Response.Write("<script>window.alert('Algo esta mal :(')</script>");
            }

        }

        protected void pass_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}