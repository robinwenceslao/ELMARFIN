using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Approved : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            Program.da.createCommand("elmarfin.dbo.selectApproved");
            Program.da.useStoreProcedure();
            if (Program.da.fillCommand())
            {
                DataTable dt = new DataTable();
                dt = Program.da.getTable();
                listofreservation.DataSource = dt;
                listofreservation.DataBind();
            }
        }
        
      
    }
    public class Program
    {
        public static DataAccess da = new DataAccess();
    }
}