using System;
using System.Data;
using System.Web.UI;
using New_Programming_Project.DAL;

namespace New_Programming_Project
{
    public partial class account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    LoadUserDetails();
                }
                else
                {
                    // Redirigir a la página de inicio de sesión si no hay un usuario en sesión
                    Response.Redirect("index.aspx");
                }
            }
        }

        private void LoadUserDetails()
        {
            string nombre = Session["UserName"]?.ToString();

            UserDataAccess uda = new UserDataAccess();
            DataTable dt = uda.GetUserDetails(nombre);

            if (dt.Rows.Count > 0)
            {
                lblUserName.Text = dt.Rows[0]["Nombre"].ToString();
                lblUserEmail.Text = dt.Rows[0]["correo"].ToString();
            }
        }


        private string EncryptPassword(string contrasena)
        {
            using (var sha256 = System.Security.Cryptography.SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(contrasena));
                return Convert.ToBase64String(bytes);
            }
        }

        private string GetCurrentEncryptedPassword(string userName)
        {
            UserDataAccess uda = new UserDataAccess();
            DataTable dt = uda.GetUserDetails(userName);

            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0]["contrasena"].ToString();
            }

            return null;
        }

        private bool UpdateUserPassword(string userName, string newEncryptedPassword)
        {
            UserDataAccess uda = new UserDataAccess();
            return uda.UpdateUserPassword(userName, newEncryptedPassword, DateTime.Now);
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}
