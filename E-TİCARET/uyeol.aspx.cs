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
        {
          yukle();
          dropsehir.AutoPostBack = true;
          

          dropilce.Enabled = false;
        }
        
    }
    bool emaildurum;
    protected void emailsorgu()
    {
        baglan.Open();
        SqlCommand komut = new SqlCommand("select email,tcno from üyeler where email=@email ", baglan);
        komut.Parameters.AddWithValue("@email", txtemail.Text);
       // komut.Parameters.AddWithValue("@tcno", txttcno.Text);

        SqlDataReader dr = komut.ExecuteReader();
        if(dr.Read())
        {
            emaildurum = false;
        }
        else
        {
            emaildurum = true;
        }
        baglan.Close();
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        emailsorgu();
        if (emaildurum == true)
        {


            baglan.Open();
            SqlCommand ekle = new SqlCommand("insert into üyeler(adi,soyadi,tcno,email,parola,telefon,sehir,ilce,adres,durumu) values (@adi,@soyadi,@tcno,@email,@parola,@telefon,@sehir,@ilce,@adres,@durumu) ", baglan);

            if (txtadi.Text == "" || txtsoyadi.Text == "" || txttcno.Text == "" || txtemail.Text == "" || txtparola.Text == "" || txttelefon.Text == "" || txtadres.Text == "")
            {
                // Label1.Text = "Lütfen Tüm Alanları Doldurun...";
                Response.Write("<script>alert('Lütfen Tüm Alanları Doldurun...')</script>");
            }
            else if (CheckBox1.Checked == false)
            {
                Response.Write("<script>alert('Üye Olabilmek İçin Lütfen Sözleşmeyi Kabul Edin...')</script>");
            }

            else
            {

                ekle.Parameters.AddWithValue("@adi", txtadi.Text);
                ekle.Parameters.AddWithValue("@soyadi", txtsoyadi.Text);
                ekle.Parameters.AddWithValue("@tcno", txttcno.Text);
                ekle.Parameters.AddWithValue("@email", txtemail.Text);
                ekle.Parameters.AddWithValue("@parola", txtparola.Text);
                ekle.Parameters.AddWithValue("@telefon", txttelefon.Text);
                ekle.Parameters.AddWithValue("@sehir", dropsehir.SelectedValue);
                ekle.Parameters.AddWithValue("@ilce", dropilce.SelectedValue);
                ekle.Parameters.AddWithValue("@adres", txtadres.Text);
                ekle.Parameters.AddWithValue("@durumu", "2");
                ekle.ExecuteNonQuery();
                baglan.Close();

                Response.Write("<script>alert('Başarıyla Üye Oldunuz Giriş Yapabilmek İçin Yönetici Onayını Bekleyiniz...')</script>");
                
            }
            txtadi.Text = "";
            txtsoyadi.Text = "";
            txttcno.Text = "";
            txtemail.Text = "";
            txtparola.Text = "";
            txttelefon.Text = "";
            txtadres.Text = "";
        }
        else
        {
            Response.Write("<script>alert('E-POSTA MEVCUT...')</script>");

        }
    }

    protected void yukle()//tbalo bağla
    {
        try
        {
            baglan.Open();
            SqlDataAdapter sorgu1 = new SqlDataAdapter("select * from iller", baglan);
            DataSet ds1 = new DataSet();
            sorgu1.Fill(ds1);
            dropsehir.DataSource = ds1;
            dropsehir.DataValueField = "id";
            dropsehir.DataTextField = "il";
            dropsehir.DataBind();
            sorgu1.Dispose();
            ds1.Dispose();



            SqlDataAdapter sorgu2 = new SqlDataAdapter("select * from ilceler", baglan);
            DataSet ds2 = new DataSet();
            sorgu2.Fill(ds2);
            dropilce.DataSource = ds2;
            dropilce.DataValueField = "id";
            dropilce.DataTextField = "ilce";
            dropilce.DataBind();
            sorgu2.Dispose();
            ds2.Dispose();


        }
        catch 
        {
            Response.Write("<script>alert('Veri Tabanında Hata Var...')</script>");
            
        }
    }

    protected void iliski()
    {

        baglan.Open();
        SqlDataAdapter sorgu = new SqlDataAdapter("select * from ilceler where ilid='"+dropsehir.SelectedItem.Value +"'",baglan);
        DataSet ds = new DataSet();
        sorgu.Fill(ds);
        dropilce.DataSource = ds;
        dropilce.DataValueField = "id";
        dropilce.DataTextField = "ilce";
        dropilce.DataBind();
        sorgu.Dispose();
        ds.Dispose();
        baglan.Close();

    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void dropsehir_SelectedIndexChanged(object sender, EventArgs e)
    {
       
         iliski();
        dropilce.Enabled = true;
        
        
    }
}