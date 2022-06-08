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
        baglan.Open();
        string id= Request.QueryString["ürünid"];
        
        string sorgu = "select * from ürünler where id=@idno";
        SqlCommand cmd = new SqlCommand(sorgu, baglan);
        cmd.Parameters.AddWithValue("@idno",id);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            Image1.ImageUrl = dr["resmi"].ToString();
            lblad.Text = dr["ürünadi"].ToString();
            lblfiyat.Text = dr["fiyat"].ToString();
            lblyorum.Text = dr["ürünadi"].ToString();
            Label2.Text = dr["üründetayi"].ToString();
        }
        baglan.Close();

    }
}