using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class adminHome : System.Web.UI.Page
{
    string category, question, id, empname;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["koneksi"].ConnectionString);

    private void checkUser()
    {
        empname = (string)Session["user"];
        if (empname == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
        else
        {
            lblAdminName.Text = empname;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        checkUser();
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("adminLogin.aspx");
    }
}