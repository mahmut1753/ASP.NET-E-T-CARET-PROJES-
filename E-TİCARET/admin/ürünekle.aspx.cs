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
    string uzantı = "";
    string resimadi = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
          markaekle();
          kategoriekle();
          Yukle();
        }
        
        
    }
    public void Yukle()
    {
        // baglan.Open();
       // DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select ü.id,ürünadi,m.markaadı,k.kategoriadi,fiyat,üründetayi,ürünadeti,resmi,drm.durum from ürünler ü join markalar m on ü.markakodu=m.marka_id join kategoriler k on ü.kategorikodu=k.kategori_id join durum drm on ü.durumu=drm.id", baglan);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        // baglan.Close();
    }
    
    public void markaekle()
    {

        SqlDataAdapter sorgu1 = new SqlDataAdapter("select * from markalar ", baglan);
        DataSet ds1 = new DataSet();
        sorgu1.Fill(ds1);

        combomarka.DataSource = ds1;
        combomarka.DataValueField = "marka_id";
        combomarka.DataTextField = "markaadı";
        combomarka.DataBind();
        sorgu1.Dispose();
        ds1.Dispose();

    }

    public void kategoriekle()
    {

        SqlDataAdapter sorgu1 = new SqlDataAdapter("select * from kategoriler ", baglan);
        DataSet ds1 = new DataSet();
        sorgu1.Fill(ds1);

        combokategori.DataSource = ds1;
        combokategori.DataValueField = "kategori_id";
        combokategori.DataTextField = "kategoriadi";
        combokategori.DataBind();
        sorgu1.Dispose();
        ds1.Dispose();

    }

    protected void Ekle_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ekle = new SqlCommand("insert into ürünler(ürünadi,markakodu,kategorikodu,fiyat,üründetayi,ürünadeti,resmi,durumu) values (@ürünadi,@markakodu,@kategorikodu,@fiyat,@üründetayi,@ürünadeti,@resmi,@durumu) ", baglan);

        if (furesim.HasFile)
        {
            uzantı = System.IO.Path.GetExtension(furesim.FileName);
            resimadi = furesim.FileName;
            furesim.SaveAs(Server.MapPath("../Resimler/" + resimadi));

        }



        if (txtürünadi.Text == "" || txtfiyat.Text == "" || txtdetay.Text == "" || txtadet.Text == "" || furesim.FileName == "")
        {

            Label8.Text = "Boş Yer Bırakmayın...";


        }
        else
        {
            ekle.Parameters.AddWithValue("@ürünadi", txtürünadi.Text);
            ekle.Parameters.AddWithValue("@markakodu", combomarka.SelectedValue);
            ekle.Parameters.AddWithValue("@kategorikodu", combokategori.SelectedValue);
            ekle.Parameters.AddWithValue("@fiyat", txtfiyat.Text.Replace(",", "."));
            ekle.Parameters.AddWithValue("@üründetayi", txtdetay.Text);
            ekle.Parameters.AddWithValue("@ürünadeti", txtadet.Text);
            ekle.Parameters.AddWithValue("@resmi", "/Resimler/" + resimadi);
            ekle.Parameters.AddWithValue("@durumu", "2");


            ekle.ExecuteNonQuery();
            Label8.Text = "";

        }
        Yukle();
        txtadet.Text = "";
        txtdetay.Text = "";
        txtfiyat.Text = "";
        txtürünadi.Text = "";
        




    }

    protected void Kategoriler_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void txtadet_TextChanged(object sender, EventArgs e)
    {

    }
    protected void markalar_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void txtfiyat_TextChanged(object sender, EventArgs e)
    {

    }
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    baglan.Open();
    //    SqlCommand ekle = new SqlCommand("insert into kategoriler (kategoriadi) values(@kategoriadi) ", baglan);
    //    ekle.Parameters.AddWithValue("@kategoriadi", txtkategoriekle.Text);
    //    ekle.ExecuteNonQuery();
    //    kategoriekle();
    //    txtkategoriekle.Text = "";
    //}
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    baglan.Open();
    //    SqlCommand ekle = new SqlCommand("insert into markalar (markaadı) values(@markaadı) ", baglan);
    //    ekle.Parameters.AddWithValue("@markaadı", txtmarkaekle.Text);
    //    ekle.ExecuteNonQuery();
    //    markaekle();
    //    txtmarkaekle.Text = "";
        
    //}
}