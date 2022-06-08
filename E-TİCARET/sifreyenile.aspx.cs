using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString);
     
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            baglan.Close();
            baglan.Open();
            SqlCommand cmd = new SqlCommand("Select * from üyeler where email=@email", baglan);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Response.Redirect("sifredegistir.aspx?id="+dr["üye_id"].ToString());
            }
            else
            {
                baglan.Close();
                Label2.Text = "Email Hatalı...";
            }
        }
        catch
        {

        }
      
    }
}