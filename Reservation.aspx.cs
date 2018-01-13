using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Drawing;

public partial class Reservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MsgBox("hi sample ",this.Page,this);

            setVisibleobject = false;
            if (txt_checkoutv.Text.Equals(""))
            {
                btn_check_validity.Enabled = false;
            }
            else
            {
                btn_check_validity.Enabled = true;
            }
            try
            {
                if (!Session ["reservationtype"].ToString().Equals(""))
                {
                    try
                    {
                        cbo_reservationtype.SelectedIndex = reservationtype(Session ["reservationtype"].ToString());
                    }
                    catch (Exception xx)
                    {

                    }


                }

            }
            catch (Exception xx)
            {

            }

            bool hasuser = !userinfo.Password.Equals("") && !userinfo.Username.Equals("");
            if (hasuser)
            {
                Program.da.createCommand("select*  from elmarfin.dbo.reservation where username=@username and [password]=@password");
                Program.da.addParameter("@username" , userinfo.Username);
                Program.da.addParameter("@password" , userinfo.Password);
                if (Program.da.fillCommand())
                {
                    DataTable dt = new DataTable();
                    dt = Program.da.getTable();
                    DataRow dr = dt.Rows [0];
                    txt_address.Text = dr ["address"].ToString();
                    txt_first_name.Text = dr ["firstname"].ToString();
                    txt_last_name.Text = dr ["lastname"].ToString();
                    txt_middlename.Text = dr ["middlename"].ToString();
                    text_contact_number.Text = dr ["contactnumber"].ToString();
                    text_email.Text = dr ["email"].ToString();

                }
            }
        }
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        reservationrules.insert insert = new reservationrules.insert();
        reservationstructure struc = new reservationstructure();
        struc.isapproved = 0;
        struc.firstname = txt_first_name.Text;
        struc.lastname = txt_last_name.Text;
        struc.middlename = txt_middlename.Text;
        struc.reservationtype = getINT(cbo_reservationtype.SelectedValue);
        struc.address = txt_address.Text;
        struc.checkin = getDate(txt_checkinv.Text);
        struc.checkout = getDate(txt_checkoutv.Text);
        struc.contactnumber = getINT(text_contact_number.Text);
        struc.email = text_email.Text;


        if (insert.Execute(struc))
        {

            Program.da.createCommand("select max(id) id from elmarfin.dbo.reservation");
            if (Program.da.fillCommand())
            {
                DataTable dt = new DataTable();
                dt = Program.da.getTable();
                Session["revid"] = dt.Rows[0][0].ToString();

                try
                {                    
                     

            MailMessage oMsg = new MailMessage();
            oMsg.From = new MailAddress("Opofiela@gmail.com", "Elmarfin Hotel and Pavillion");
            oMsg.To.Add(new MailAddress("AlfieOpo@gmail.com"));
            oMsg.Subject = "Packet Parsing Problem";
            oMsg.Body = " Problem Occuread test mail";
            oMsg.SubjectEncoding = System.Text.Encoding.UTF8;
            oMsg.BodyEncoding = System.Text.Encoding.UTF8;
            oMsg.IsBodyHtml = false;
            oMsg.Priority = MailPriority.High;

            SmtpClient oSmtp = new SmtpClient("smtp.gmail.com", 587);
            oSmtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            oSmtp.EnableSsl = true;

            NetworkCredential oCredential = new NetworkCredential("wenceslaorobin@gmail.com", "090927808470");
            oSmtp.UseDefaultCredentials = false;
            oSmtp.Credentials = oCredential;
            oSmtp.Send(oMsg);
                    
                }
                catch (Exception ex)
                {
                    
                }

                Response.Redirect("Assessment.aspx");

            }

        }
        else
        {
            Response.Write("<Script>alert('Connection failed!')</Script>");
        }
    }

    protected void Unnamed1_TextChanged(object sender, EventArgs e)
    {

    }
    private DateTime getDate(string date)
    {
        try
        {
            return DateTime.Parse(date);
        }
        catch (Exception xx)
        {
        }
        return DateTime.Now;
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
    protected void btn_check_validity_Click(object sender, EventArgs e)
    {
        txt_checkin.Text = txt_checkinv.Text;
        txt_checkout.Text = txt_checkoutv.Text;
        Program.da.createCommand("elmarfin.dbo.checkvalidity");
        Program.da.useStoreProcedure();
        Program.da.addParameter("@checkin", getDate(txt_checkinv.Text));
        Program.da.addParameter("@checkout", getDate(txt_checkoutv.Text));
        if (Program.da.fillCommand())
        {
            DataTable dt = new DataTable();
            dt = Program.da.getTable();
            Response.Write("<Script>alert('" + dt.Rows[0][0].ToString() + "!')</Script>");
            setVisibleobject = true;
        }
        else
        {
            Response.Write("<Script>alert('Something went wrong!')</Script>");
        }

    }
    protected void txt_checkinv_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_checkoutv_TextChanged(object sender, EventArgs e)
    {

    }
    public class Program
    {
        public static DataAccess da = new DataAccess();
    }

    private int reservationtype(string val)
    {
        int retval = 0;
        switch (val)
        {
            case "Room":
                retval = 0;
                break;
            case "Pavilion":
                retval = 1;
                break;
            case "Pool":
                retval = 2;
                break;
            case "Pavilion & Pool":
                retval = 3;
                break;

        }
        return retval;
    }

    public bool setVisibleobject
    {
        set
        {
            txt_checkin.Visible = value;
            txt_checkout.Visible = value;
            txt_first_name.Visible = value;
            txt_last_name.Visible = value;
            txt_middlename.Visible = value;
            cbo_reservationtype.Visible = value;
            text_contact_number.Visible = value;
            text_email.Visible = value;
            txt_address.Visible = value;
            btn_reserve.Visible = value;

        }
    }



    protected void text_email_TextChanged(object sender, EventArgs e)
    {
        try
        {
            var emailChecked = new System.Net.Mail.MailAddress(text_email.Text);
            lbl_error.Text = "Email available";
            lbl_error.ForeColor = Color.Green;
            text_email.Style.Add("Border" , "1px Solid green");

        }
        catch
        {
            lbl_error.Text = "Email not available";
            lbl_error.ForeColor = Color.Red;
            text_email.Style.Add("Border" , "1px Solid red");
        }
    }
    protected void txt_checkoutv_TextChanged1( object sender , EventArgs e )
    {
        if (txt_checkoutv.Text.Equals(""))
        {
            btn_check_validity.Enabled = false;
        }
        else {
            btn_check_validity.Enabled = true;
        }
    }
    public void MsgBox( String ex , Page pg , Object obj )
    {
        string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n" , "\\n").Replace("'" , "") + "'); </SCRIPT>";
        Type cstype = obj.GetType();
        ClientScriptManager cs = pg.ClientScript;
        cs.RegisterClientScriptBlock(cstype , s , s.ToString());
    }
}
