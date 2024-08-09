using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Programming_Project
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    hplRegistrar.Visible = false;
                    userDropdown.Style["display"] = "block";
                    lblUserName.Text = Session["UserName"].ToString();
                }
                else
                {
                    hplRegistrar.Visible = true;
                    userDropdown.Style["display"] = "none";
                }
            }
        }

    }
}