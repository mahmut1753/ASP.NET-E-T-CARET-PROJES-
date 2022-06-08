using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        
       
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("sifreyenile.aspx");
        }

        if (txt1.Text == txt2.Text)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("update  üyeler set parola='" + txt1.Text + "'  where üye_id=" + id, baglan);
            cmd.ExecuteNonQuery();

            baglan.Close();

            Response.Redirect("anasayfa.aspx");

        }
        else
        {
            Label3.Text = "Şifreler uymusmuyor";
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}