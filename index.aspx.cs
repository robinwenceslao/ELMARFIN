using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preview_dotnet_templates_newlook_index : System.Web.UI.Page
{
    string name = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            try
            {
                cbo_user.Items.Clear();
                
                cbo_user.Visible = false;
                bool successlogin = "success".Equals(Session["login"].ToString());
                string user = Session["user"].ToString();
                if (successlogin)
                {
                    string value = user.Substring(user.Length - 1, 1);
                    bool isadmin = value.Equals("1");

                    if (isadmin && !cbo_user.Visible)
                    {

                          
                        liname.Visible = true;
                        cbo_user.Visible = true;
                        
                        cbo_user.Items.Add("Welcome " + user.Replace("_" + value , ""));
                        name = user.Replace("_" + value, "");
                        cbo_user.Items.Add("ADMIN");                  
                        cbo_user.Items.Add("Logout");

                        lilogin.Visible = false;

                    }
                    else
                    {
                         
                        liname.Visible = true;
                        cbo_user.Visible = true;
                        cbo_user.Items.Add(user.Replace("_" + value, ""));
                        cbo_user.Items.Add("Logout");
                        name = user.Replace("_" + value, "");
                        lilogin.Visible = false;
                    }

                }

            }
            catch (Exception xx)
            {

            }
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        InquiryStructure inquiry = new InquiryStructure();
        inquiry.name = txt_name.Text;
        inquiry.email = txt_email.Text;
        inquiry.contactnumber = getINT(txt_contactnumber.Text);
        inquiry.message = txt_message.Text;

        Inquiryrules insert = new Inquiryrules();
        if (insert.Execute(inquiry))
        {
            txt_name.Text = "";
            txt_email.Text = "";
            txt_contactnumber.Text = "";
            txt_message.Text = "";
        }
        else
        {


        }

    }
    private int getINT(string val)
    {
        try
        {
            return int.Parse(val);
        }
        catch (Exception xx)
        {
        }
        return 0;
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Session["reservationtype"] = "Room";

        //Response.Redirect("<a href=Reservation.aspx></a>");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["reservationtype"] = "Pavilion";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["reservationtype"] = "Pool";

    }

    protected void cbo_user_SelectedIndexChanged1(object sender, EventArgs e)
    {
         
            int index = cbo_user.SelectedIndex;
            string value = cbo_user.SelectedValue.ToString();
            switch (value)
            {
            case "Logout":
                
                lilogin.Visible = true;
                cbo_user.Visible = false;
                break;
                case "ADMIN":
                //https://" +userinfo.IPADDRESS + "/index.aspx
                Response.Redirect("https://" + userinfo.IPADDRESS + "/Admin.aspx");
                break;
                case "Approve":
                Response.Redirect("https://" + userinfo.IPADDRESS + "/Approved.aspx");
                break;
            default:
                break;

        }
            
      
    }

    protected void cbo_user_TextChanged(object sender, EventArgs e)
    {
        string a = cbo_user.SelectedItem.Text;
    }
}