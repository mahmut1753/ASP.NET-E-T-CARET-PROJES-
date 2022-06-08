using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["üyeid"] != null && Session["üyeadi"] != null)
        {
            hesap.Visible = false;
            Label1.Text = Session["üyeadi"].ToString();
        }
        else
        {
            hesap1.Visible = false;
        }

        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("anasayfa.aspx");
    }
}
