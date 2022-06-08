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
         Yukle();
       }
       
    }

   public void Yukle()
    {
       // baglan.Open();
        DataTable dt = new  DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select ü.id,ürünadi,m.markaadı,k.kategoriadi,fiyat,üründetayi,ürünadeti,resmi,drm.durum from ürünler ü join markalar m on ü.markakodu=m.marka_id join kategoriler k on ü.kategorikodu=k.kategori_id join durum drm on ü.durumu=drm.id", baglan);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
       // baglan.Close();
       }
    


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
   
    protected void combomarka_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ekle = new SqlCommand("Update ürünler set ürünadi=@ürünadi,markakodu=@markakodu,kategorikodu=@kategorikodu,fiyat=@fiyat,üründetayi=@üründetayi,ürünadeti=@ürünadeti,resmi=@resmi,durumu=@durumu where id=@id", baglan);

        if (furesim.HasFile)
        {
            uzantı = System.IO.Path.GetExtension(furesim.FileName);
            resimadi = furesim.FileName;
            furesim.SaveAs(Server.MapPath("../Resimler/" + resimadi));
            ekle.Parameters.AddWithValue("@resmi", "../Resimler/" + resimadi);
        }
        else
        {
            ekle.Parameters.AddWithValue("@resmi", Label12.Text);

        }
        

        ekle.Parameters.AddWithValue("@id",txtid.Text);
        ekle.Parameters.AddWithValue("@ürünadi", txtürün.Text);
        ekle.Parameters.AddWithValue("@markakodu", combomarka.SelectedValue);
        ekle.Parameters.AddWithValue("@kategorikodu", combokategori.SelectedValue);
        ekle.Parameters.AddWithValue("@fiyat", txtfiyat.Text.Replace(",", "."));
        ekle.Parameters.AddWithValue("@üründetayi", txtdetay.Text);
        ekle.Parameters.AddWithValue("@ürünadeti", txtadet.Text);
        
        ekle.Parameters.AddWithValue("@durumu", combodurumu.SelectedValue);
        
        ekle.ExecuteNonQuery();
        baglan.Close();
        
        
        
        txtid.Text = "";
        txtadet.Text = "";
        txtdetay.Text = "";
        txtfiyat.Text = "";
        txtürün.Text = "";
        Label12.Text = "";
        imgresim.ImageUrl = "";
         Yukle();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       
        GridViewRow grsatir = GridView1.SelectedRow;
        string id = Server.HtmlDecode(grsatir.Cells[2].Text);
        baglan.Open();

        SqlCommand cmd = new SqlCommand("Select * from ürünler where id=" + id, baglan);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtid.Text = Server.HtmlDecode(dr["id"].ToString());
            txtürün.Text = Server.HtmlDecode(dr["ürünadi"].ToString());
            txtfiyat.Text = Server.HtmlDecode(dr["fiyat"].ToString());
            txtadet.Text = Server.HtmlDecode(dr["ürünadeti"].ToString());
            txtdetay.Text = Server.HtmlDecode(dr["üründetayi"].ToString());
            combomarka.SelectedValue = Server.HtmlDecode(dr["markakodu"].ToString());
            combokategori.SelectedValue = Server.HtmlDecode(dr["kategorikodu"].ToString());
            combodurumu.SelectedValue = Server.HtmlDecode(dr["durumu"].ToString());
            Label12.Text = Server.HtmlDecode(dr["resmi"].ToString());
            imgresim.ImageUrl = Label12.Text;
        }
        baglan.Close();
        dr.Dispose();
        cmd.Dispose();
        
       
    }
    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        
       
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
          if (droplistele.SelectedIndex == 0)
            {
                Yukle();
            }


            if (droplistele.SelectedIndex == 1)
            {
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter("select ü.id,ürünadi,m.markaadı,k.kategoriadi,fiyat,üründetayi,ürünadeti,resmi,drm.durum from ürünler ü join markalar m on ü.markakodu=m.marka_id join kategoriler k on ü.kategorikodu=k.kategori_id join durum drm on ü.durumu=drm.id where durumu='1'", baglan);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                
            }
            if (droplistele.SelectedIndex == 2)
            {
                try
                {
                 baglan.Open();
                 SqlDataAdapter da = new SqlDataAdapter("select ü.id,ürünadi,m.markaadı,k.kategoriadi,fiyat,üründetayi,ürünadeti,resmi,drm.durum from ürünler ü join markalar m on ü.markakodu=m.marka_id join kategoriler k on ü.kategorikodu=k.kategori_id join durum drm on ü.durumu=drm.id where durumu='2'", baglan);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                }
                catch 
                {
                    
                    
                }
                finally
                {
                    baglan.Close();
                }
                

            
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ara = new SqlCommand();
        ara.Connection=baglan;

        if(droplistele.SelectedValue=="0")
        {
            ara.CommandText = "select ü.id,ürünadi,m.markaadı,k.kategoriadi,fiyat,üründetayi,ürünadeti,resmi,drm.durum from ürünler ü join markalar m on ü.markakodu=m.marka_id join kategoriler k on ü.kategorikodu=k.kategori_id join durum drm on ü.durumu=drm.id where  ürünadi like '%" + txtara.Text + "%'";

        }
        else
        {
            ara.CommandText = "select ü.id,ürünadi,m.markaadı,k.kategoriadi,fiyat,üründetayi,ürünadeti,resmi,drm.durum from ürünler ü join markalar m on ü.markakodu=m.marka_id join kategoriler k on ü.kategorikodu=k.kategori_id join durum drm on ü.durumu=drm.id where durum='" + droplistele.SelectedItem.Text + "' and ürünadi like '%" + txtara.Text + "%'";

        }
        SqlDataReader goster = ara.ExecuteReader();

        GridView1.DataSource = goster;
        GridView1.DataBind();

        ara.Dispose();
        goster.Dispose();
    }
    protected void txtara_TextChanged(object sender, EventArgs e)
    {

    }
  
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow item in GridView1.Rows)
        {
            ((CheckBox)item.FindControl("sec")).Checked = ((CheckBox)sender).Checked;
        }
    }
    protected void sec_CheckedChanged2(object sender, EventArgs e)
    {
        CheckBox tüm = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox1");
        if(tüm.Checked)
        {
            tüm.Checked = ((CheckBox)sender).Checked;
        }
        else
        {
            bool secilim = true;
            foreach (GridViewRow item in GridView1.Rows)
            {
                if(!((CheckBox)item.FindControl("sec")).Checked)
                {
                    secilim = false;
                    break;
                }
            }
            tüm.Checked = secilim;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand komut = new SqlCommand("update ürünler set durumu = 1 where durumu = 2 ",baglan);
        komut.ExecuteNonQuery();
        Yukle();
        baglan.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand komut = new SqlCommand("update ürünler set durumu = 2 where durumu = 1 ", baglan);
        komut.ExecuteNonQuery();
        Yukle();
        baglan.Close();
    }
}