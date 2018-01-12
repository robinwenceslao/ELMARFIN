using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btSignup_Click(object sender, EventArgs e)
    {

        Program.da.createCommand("elmarfin.dbo.sp_signin");
        Program.da.useStoreProcedure();
        Program.da.addParameter("@username", Username.Text);
        Program.da.addParameter("@password", Password.Text);
        if (Program.da.fillCommand())
        {

            DataTable dt = new DataTable();
            dt = Program.da.getTable();
            DataRow dr = dt.Rows[0];
            if (!dr[0].ToString().Equals(""))
            {
                lblMsg.Text = "";
                Session["login"] = "success";
                Session["user"] = dr[0].ToString();
                userinfo.Username = Username.Text;
                userinfo.Password = Password.Text;
                Response.Redirect("index.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Username or Password";

            }

        }
        else
        {
            Response.Write("<Script>alert('Something went wrong!')</Script>");
        }
    }
    public class Program
    {
        public static DataAccess da = new DataAccess();
    }
}