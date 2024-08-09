using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace New_Programming_Project
{
    public partial class delete_users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCedula.Text))
            {
                lblMensaje.Text = "Debe ingresar un número de cédula.";
                return;
            }

            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["NewProgrammingProject"].ConnectionString;

            using (SqlConnection conexionBD = new SqlConnection(cadenaConexion))
            {
                try
                {
                    conexionBD.Open();
                    SqlCommand cmd = new SqlCommand("SELECT nombre, correo FROM Usuario WHERE cedula = @cedula", conexionBD);
                    cmd.Parameters.AddWithValue("@cedula", Int32.Parse(txtCedula.Text));

                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        lblNombreUsuario.Text = reader["nombre"].ToString();
                        lblEmailUsuario.Text = reader["correo"].ToString();
                        lblMensaje.Text = "¿Está seguro que desea eliminar este usuario?";

                        // Mostrar detalles del usuario y el botón de eliminar
                        pnlDetallesUsuario.Visible = true;
                        btnEliminar.Visible = true;
                    }
                    else
                    {
                        lblMensaje.Text = "No se encontró un usuario con ese número de cédula.";
                        pnlDetallesUsuario.Visible = false;
                        btnEliminar.Visible = false;
                    }
                    reader.Close();
                }
                catch (SqlException ex)
                {
                    lblMensaje.Text = "Error al buscar el usuario: " + ex.Message;
                }
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["NewProgrammingProject"].ConnectionString;

            using (SqlConnection conexionBD = new SqlConnection(cadenaConexion))
            {
                try
                {
                    conexionBD.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM Usuario WHERE cedula = @cedula", conexionBD);
                    cmd.Parameters.AddWithValue("@cedula", Int32.Parse(txtCedula.Text));

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMensaje.Text = "El usuario fue eliminado exitosamente.";
                    }
                    else
                    {
                        lblMensaje.Text = "No se encontró un usuario con ese número de cédula.";
                    }
                }
                catch (SqlException ex)
                {
                    lblMensaje.Text = "No se eliminó el usuario, " + ex.Message;
                }
            }

            // Ocultar detalles del usuario y el botón de eliminar después de la acción
            pnlDetallesUsuario.Visible = false;
            btnEliminar.Visible = false;
        }
    }
}
