using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../anasayfa.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("giris.aspx");
    }
}
