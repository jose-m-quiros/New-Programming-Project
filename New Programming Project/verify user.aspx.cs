using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Programming_Project
{
    public partial class verify_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["NewProgrammingProject"].ConnectionString;
            SqlConnection conexionBD = new SqlConnection(cadenaConexion);
            conexionBD.Open();
            SqlCommand cmd = new SqlCommand("select cedula, nombre, telefono, correo from Usuario where cedula = '" + this.txtCedula.Text + "'", conexionBD);
            //Se crea un objeto de la clase SqlDataReader y se inicia su lectura con el método ExecuteReader de la clase SqlCommand
            SqlDataReader registro = cmd.ExecuteReader();
            //Recorremos el SqlDataReader donde puede retornar un 0 o un registro mediante un if
            if (registro.Read())//si retorna un true podemos acceder al registro por un select
            {
                lblMensaje.Text = "Cédula: " + registro["cedula"] + "<br>" + "Nombre: " + registro["nombre"] + "<br>" + "Teléfono: " + registro["telefono"] + "<br>" + "Correo: " + registro["correo"];
            }
            else
            {
                lblMensaje.Text = "¡No existe un usuario registrado con dicha cédula!";
            }
            conexionBD.Close();
        }

    }
}