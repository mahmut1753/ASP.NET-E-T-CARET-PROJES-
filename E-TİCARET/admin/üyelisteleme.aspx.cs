using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
      if(!IsPostBack)
      {
          Yukle();
          durum();
      }
      
    }
    public void durum()
    {
        
        SqlDataAdapter sorgu1 = new SqlDataAdapter("select * from durum ", baglan);
        DataSet ds1 = new DataSet();
        sorgu1.Fill(ds1);

        dropgüncelle.DataSource = ds1;
        dropgüncelle.DataValueField = "id";
        dropgüncelle.DataTextField = "durum";
        dropgüncelle.DataBind();
        sorgu1.Dispose();
        ds1.Dispose();

    }

    public void Yukle()
    {
        // baglan.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select üye_id,adi,soyadi,tcno,email,parola,telefon,il.il,i.ilce,adres,d.durum from üyeler ü join iller il on ü.sehir=il.id join ilceler i on ü.ilce=i.id join durum d on ü.durumu=d.id", baglan);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        // baglan.Close();
    }
 
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ara = new SqlCommand();
        ara.Connection = baglan;

        if (dropdurum.SelectedValue == "0")
        {
            ara.CommandText = "select üye_id,adi,soyadi,tcno,email,parola,telefon,il.il,i.ilce,adres,d.durum from üyeler ü join iller il on ü.sehir=il.id join ilceler i on ü.ilce=i.id join durum d on ü.durumu=d.id where  tcno like '%" + txttcno.Text + "%'";

        }
        else
        {
            ara.CommandText = "select üye_id,adi,soyadi,tcno,email,parola,telefon,il.il,i.ilce,adres,d.durum from üyeler ü join iller il on ü.sehir=il.id join ilceler i on ü.ilce=i.id join durum d on ü.durumu=d.id where durumu='" + dropdurum.SelectedValue + "' and tcno like '%" + txttcno.Text + "%'";

        }
        SqlDataReader goster = ara.ExecuteReader();

        GridView1.DataSource = goster;
        GridView1.DataBind();

        ara.Dispose();
        goster.Dispose();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;
        if ("Aktif" == Server.HtmlDecode(row.Cells[11].Text))
        {
            dropgüncelle.SelectedIndex = 0;
        }
        else
            dropgüncelle.SelectedIndex = 1;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
         GridViewRow getir = GridView1.SelectedRow;
         string sira = getir.Cells[1].Text;
         baglan.Open();
         SqlCommand güncelle = new SqlCommand("Update üyeler set durumu=@durumu where üye_id= "+sira, baglan);
          //    güncelle.Parameters.AddWithValue("@üye_id",);
        
        güncelle.Parameters.AddWithValue("@durumu", dropgüncelle.SelectedValue);
        güncelle.ExecuteNonQuery();
        baglan.Close();

        Yukle();
        }
        catch         
        {
            
           
        }
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand komut = new SqlCommand("update üyeler set durumu = 1 where durumu = 2 ", baglan);
        komut.ExecuteNonQuery();
        Yukle();
        baglan.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand komut = new SqlCommand("update üyeler set durumu = 2 where durumu = 1 ", baglan);
        komut.ExecuteNonQuery();
        Yukle();
        baglan.Close();
    }
}