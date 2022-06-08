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
        }
         
       
        
    }

    private void yukle()
    {
        baglan.Open();
        SqlCommand ara = new SqlCommand("select ü.id,ürünadi,m.markaadı,k.kategoriadi,fiyat,üründetayi,ürünadeti,resmi,drm.durum from ürünler ü join markalar m on ü.markakodu=m.marka_id join kategoriler k on ü.kategorikodu=k.kategori_id join durum drm on ü.durumu=drm.id where  ürünadi like '%" + txtürünadi.Text + "%'", baglan);
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
        SqlCommand ara = new SqlCommand("select ü.id,ürünadi,m.markaadı,k.kategoriadi,fiyat,üründetayi,ürünadeti,resmi,drm.durum from ürünler ü join markalar m on ü.markakodu=m.marka_id join kategoriler k on ü.kategorikodu=k.kategori_id join durum drm on ü.durumu=drm.id where  ürünadi like '%" + txtürünadi.Text + "%'",baglan);
        SqlDataReader goster = ara.ExecuteReader();

        GridView1.DataSource = goster;
        GridView1.DataBind();

        ara.Dispose();
        goster.Dispose();
        baglan.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        baglan.Open();
        GridViewRow getir = GridView1.SelectedRow;
        string sira = getir.Cells[2].Text;
        SqlCommand sil = new SqlCommand("Delete from ürünler where id='" + sira +"'", baglan);
        sil.ExecuteNonQuery();
        baglan.Close();
        yukle();
    }
    protected void sec_CheckedChanged(object sender, EventArgs e)
    {
        //CheckBox tüm = (CheckBox)GridView1.HeaderRow.FindControl("CheckBox1");
        //if (tüm.Checked)
        //{
        //    tüm.Checked = ((CheckBox)sender).Checked;
        //}
        //else
        //{
        //    bool secilim = true;
        //    foreach (GridViewRow item in GridView1.Rows)
        //    {
        //        if (!((CheckBox)item.FindControl("sec")).Checked)
        //        {
        //            secilim = false;
        //            break;
        //        }
        //    }
        //    tüm.Checked = secilim;
        //}
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow item in GridView1.Rows)
        {
            ((CheckBox)item.FindControl("sec")).Checked = ((CheckBox)sender).Checked;
        }
    }
}