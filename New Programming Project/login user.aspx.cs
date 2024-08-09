using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Programming_Project
{
    public partial class login_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCedula.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                lblMensaje.Text = "Por favor ingrese su cédula y contraseña";
                return;
            }

            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["NewProgrammingProject"].ConnectionString;

            using (SqlConnection conexionBD = new SqlConnection(cadenaConexion))
            {
                try
                {
                    conexionBD.Open();
                    string query = "SELECT nombre FROM Usuario WHERE cedula = @Cedula AND contrasena = @Contrasena";
                    SqlCommand cmd = new SqlCommand(query, conexionBD);
                    cmd.Parameters.AddWithValue("@Cedula", Int32.Parse(txtCedula.Text));
                    cmd.Parameters.AddWithValue("@Contrasena", txtPassword.Text);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.HasRows)
                    {
                        reader.Read();
                        Session["UserName"] = reader["nombre"].ToString();
                        Response.Redirect("index.aspx");  // Redirigir a index.aspx después de iniciar sesión
                    }
                    else
                    {
                        lblMensaje.Text = "Cédula o contraseña incorrecta";
                    }
                }
                catch (SqlException ex)
                {
                    lblMensaje.Text = "Error al iniciar sesión, " + ex.Message;
                }
            }
        }
    }
}