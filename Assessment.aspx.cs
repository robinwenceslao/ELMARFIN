using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data;

public partial class Assessment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                string id = Session["revid"].ToString();
                Program.da.createCommand("select * from elmarfin.dbo.reservation where id=" + id);
                if (Program.da.fillCommand())
                {
                    DataTable dt = new DataTable();
                    dt = Program.da.getTable();
                    ReportDataSource ds = new ReportDataSource("DataSet1", dt);
                    ReportViewer1.LocalReport.DataSources.Add(ds);
                    ReportViewer1.LocalReport.ReportPath = "App_Code/report.rdlc";



                }
            }
            catch (Exception xx) {
            
            }
        }
       
        
    }
    public class Program
    {
        public static DataAccess da = new DataAccess();
    }
}