using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Proyecto
{
    public class Conexion
    {
        public static int NIT = 0;
        public static string NOMBRE = "";
        public static string TIPO = "";
        public static string TAMA = "";
        public static string SUSCRIBE = "";

        public static int Codigo = 0;
        public static string Nombres = "0";
        public static string correo = "";


        public static int Extraccion = 0;
        public static int producto = 0;
        public static int lote = 0;

        public static string sal = "";
        
        public static int bodega = 0;
        public static int cantidad = 0;
        public static int ubicacion = 0;

        
        //public static string DNombre
        //{
        //    get { return NOMBRE; }
        //    set { NOMBRE = value; }
        //}

        public SqlConnection getConexion()
        {
            try
            {
                string cadena = @"Data Source=DANIEL;Initial Catalog=Proyecto; Integrated Security=True";
                SqlConnection cnn = new SqlConnection(cadena);
                cnn.Open();
                return cnn;
            }
            catch (Exception e)
            {
                return null;
                Console.WriteLine(e.ToString());
            }
        }
    }
}