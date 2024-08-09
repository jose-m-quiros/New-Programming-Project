using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Programming_Project
{
    public partial class add_users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNombre.Text))
            {
                lblMensaje.Text = "Debe ingresar un nombre";
                return;
            }
            if (string.IsNullOrEmpty(txtCorreo.Text))
            {
                lblMensaje.Text = "Debe ingresar un correo";
                return;
            }
            if (string.IsNullOrEmpty(txtTelefono.Text))
            {
                lblMensaje.Text = "Debe ingresar un número de teléfono";
                return;
            }

            // Validar que el teléfono sea numérico
            if (!Int64.TryParse(txtTelefono.Text, out _))
            {
                lblMensaje.Text = "El número de teléfono solo puede contener dígitos";
                return;
            }

            if (string.IsNullOrEmpty(txtCedula.Text))
            {
                lblMensaje.Text = "Debe ingresar un número de cédula";
                return;
            }
            if (string.IsNullOrEmpty(txtPassword.Text))
            {
                lblMensaje.Text = "Debe ingresar una contraseña";
                return;
            }

            string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["NewProgrammingProject"].ConnectionString;

            using (SqlConnection conexionBD = new SqlConnection(cadenaConexion))
            {
                try
                {
                    conexionBD.Open();

                    // Insertar nuevo usuario
                    string query = "INSERT INTO Usuario (cedula, nombre, telefono, correo, contrasena) VALUES (@Cedula, @Nombre, @Telefono, @Correo, @Contrasena)";
                    SqlCommand cmd = new SqlCommand(query, conexionBD);
                    cmd.Parameters.AddWithValue("@Cedula", Int32.Parse(txtCedula.Text));
                    cmd.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                    cmd.Parameters.AddWithValue("@Telefono", txtTelefono.Text);
                    cmd.Parameters.AddWithValue("@Correo", txtCorreo.Text);
                    cmd.Parameters.AddWithValue("@Contrasena", txtPassword.Text);
                    cmd.ExecuteNonQuery();

                    lblMensaje.Text = "El usuario fue registrado exitosamente";

                    // Limpiar los campos después de registrar exitosamente
                    txtCedula.Text = string.Empty;
                    txtNombre.Text = string.Empty;
                    txtTelefono.Text = string.Empty;
                    txtCorreo.Text = string.Empty;
                    txtPassword.Text = string.Empty;
                }
                catch (SqlException ex)
                {
                    // Verificar si la excepción es por una clave primaria duplicada
                    if (ex.Number == 2627 || ex.Number == 2601) // Errores de clave duplicada
                    {
                        lblMensaje.Text = "La cédula está vinculada con otra cuenta.";
                    }
                    else
                    {
                        lblMensaje.Text = "No se registró el usuario, " + ex.Message;
                    }
                }
            }
        }





    }
}