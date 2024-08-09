using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace New_Programming_Project.DAL
{
    public class UserDataAccess
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["NewProgrammingProject"].ConnectionString;

        public DataTable GetUserDetails(string nombre)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetUserDetails", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserName", nombre);
                    conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                }
            }
            return dt;
        }

        public bool UpdateUserPassword(string userName, string newEncryptedPassword, DateTime passwordChangedDate)
        {
            // Implementa la lógica para actualizar la contraseña cifrada y la fecha de modificación en la base de datos.
            // Ejemplo de consulta SQL:

            string query = "UPDATE Usuario SET contrasena = @Password, LastPasswordChanged = @LastPasswordChanged WHERE UserName = @UserName";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Password", newEncryptedPassword);
                    cmd.Parameters.AddWithValue("@LastPasswordChanged", passwordChangedDate);
                    cmd.Parameters.AddWithValue("@UserName", userName);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
            }
        }


    }
}