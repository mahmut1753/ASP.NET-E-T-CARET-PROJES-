using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
         yukle();
        
    }
    private void yukle()
    {
        baglan.Open();
        SqlCommand ara = new SqlCommand("select üye_id,adi,soyadi,tcno,email,parola,telefon,il.il,i.ilce,adres,d.durum from üyeler ü join iller il on ü.sehir=il.id join ilceler i on ü.ilce=i.id join durum d on ü.durumu=d.id ", baglan);
        SqlDataReader goster = ara.ExecuteReader();

        GridView1.DataSource = goster;
        GridView1.DataBind();

        ara.Dispose();
        goster.Dispose();
        baglan.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ara = new SqlCommand("select üye_id,adi,soyadi,tcno,email,parola,telefon,il.il,i.ilce,adres,d.durum from üyeler ü join iller il on ü.sehir=il.id join ilceler i on ü.ilce=i.id join durum d on ü.durumu=d.id where  tcno like '%" + txttcno.Text + "%'", baglan);
        SqlDataReader goster = ara.ExecuteReader();

        GridView1.DataSource = goster;
        GridView1.DataBind();

        ara.Dispose();
        goster.Dispose();
        baglan.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnsil_Click(object sender, EventArgs e)
    {
        baglan.Open();
        GridViewRow getir = GridView1.SelectedRow;
        string sira = getir.Cells[1].Text;
        SqlCommand sil = new SqlCommand("Delete from üyeler where üye_id=" + sira, baglan);


        sil.ExecuteNonQuery();
        baglan.Close();
        yukle();
    }
}