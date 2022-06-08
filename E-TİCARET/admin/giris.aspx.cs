using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class giris : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            baglan.Close();
            baglan.Open();
            SqlCommand cmd = new SqlCommand("Select * from admin where admink=@user and admins=@sifre", baglan);
            cmd.Parameters.AddWithValue("@user", TextBox1.Text);
            cmd.Parameters.AddWithValue("@sifre", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Response.Redirect("ürünekle.aspx");
            }
            else
            {
                baglan.Close();
                Label3.Text = "Hatalı Şifre Veya Kullanıcı Adı...";
            }
        }
        catch
        {

        }
    }
}