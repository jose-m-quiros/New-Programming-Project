using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Programming_Project
{
    public partial class modifysuper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            // Verificar que el campo de cédula no esté vacío
            if (!string.IsNullOrEmpty(txtCedula.Text))
            {
                string conexionBD = System.Configuration.ConfigurationManager.ConnectionStrings["NewProgrammingProject"].ConnectionString;
                SqlConnection connection = new SqlConnection(conexionBD);
                connection.Open();
                SqlCommand command = new SqlCommand("SELECT nombre, correo, telefono FROM Usuario WHERE cedula = @cedula", connection);
                command.Parameters.AddWithValue("@cedula", txtCedula.Text);

                SqlDataReader registro = command.ExecuteReader();

                if (registro.Read())
                {
                    // Mostrar los datos del usuario en los campos correspondientes
                    txtNombre.Text = registro["nombre"].ToString();
                    txtCorreo.Text = registro["correo"].ToString();
                    txtTelefono.Text = registro["telefono"].ToString();

                    // Hacer visible el panel con los datos del usuario
                    pnlDatosUsuario.Visible = true;
                }
                else
                {
                    // Si no se encuentra el usuario, se oculta el panel
                    pnlDatosUsuario.Visible = false;
                    Response.Write("<script language = 'JavaScript'> alert('No existe el usuario ingresado')</script>");
                }

                connection.Close();
            }
            else
            {
                // Si el campo de cédula está vacío
                Response.Write("<script language = 'JavaScript'> alert('Por favor ingrese una cédula')</script>");
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            string conexionBD = System.Configuration.ConfigurationManager.ConnectionStrings["NewProgrammingProject"].ConnectionString;
            SqlConnection connection = new SqlConnection(conexionBD);
            connection.Open();
            SqlCommand command = new SqlCommand("UPDATE Usuario SET nombre=@nombre, correo=@correo, telefono=@telefono WHERE cedula=@cedula", connection);
            command.Parameters.AddWithValue("@nombre", txtNombre.Text);
            command.Parameters.AddWithValue("@correo", txtCorreo.Text);
            command.Parameters.AddWithValue("@telefono", txtTelefono.Text);
            command.Parameters.AddWithValue("@cedula", txtCedula.Text);

            int value = command.ExecuteNonQuery();
            if (value == 1)
            {
                Response.Write("<script language = 'JavaScript'> alert('Usuario modificado correctamente')</script>");

                // Limpiar los campos
                LimpiarCampos();

                // Ocultar el panel con los datos del usuario
                pnlDatosUsuario.Visible = false;
            }
            else
            {
                Response.Write("<script language = 'JavaScript'> alert('Error al modificar el usuario')</script>");
            }

            connection.Close();
        }

        // Método para limpiar los campos
        private void LimpiarCampos()
        {
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtCorreo.Text = "";
            txtTelefono.Text = "";
        }
    }
}