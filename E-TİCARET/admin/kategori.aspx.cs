using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
         gridmarka();
         gridkategori();
        }
    }

    private void gridkategori()
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select kategori_id,kategoriadi,d.durum from kategoriler k join durum d on k.durumu=d.id ", baglan);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }

    private void gridmarka()
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select marka_id,markaadı,d.durum from markalar m join durum d on m.durumu=d.id ", baglan);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow grsatir = GridView2.SelectedRow;
        string idi = Server.HtmlDecode(grsatir.Cells[1].Text);
        baglan.Open();

        SqlCommand cmd = new SqlCommand("Select * from kategoriler where kategori_id=" + idi, baglan);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtkategoriid.Text = Server.HtmlDecode(dr["kategori_id"].ToString());

            txtkategoriadi.Text = Server.HtmlDecode(dr["kategoriadi"].ToString());
            dropkategori.SelectedValue = Server.HtmlDecode(dr["durumu"].ToString());


        }
        baglan.Close();
        dr.Dispose();
        cmd.Dispose();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow grsatir = GridView1.SelectedRow;
     
        string id = Server.HtmlDecode(grsatir.Cells[1].Text);
        baglan.Open();

        SqlCommand cmd = new SqlCommand("Select * from markalar where marka_id=" + id, baglan);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtmarkaid.Text = Server.HtmlDecode(dr["marka_id"].ToString());

          txtmarkaadi.Text = Server.HtmlDecode(dr["markaadı"].ToString());
            dropmarka.SelectedValue = Server.HtmlDecode(dr["durumu"].ToString());
                                    

        }
        baglan.Close();
        dr.Dispose();
        cmd.Dispose();
    }
    protected void txtmarkaid_TextChanged(object sender, EventArgs e)
    {

    }
    
    protected void Button5_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ekle = new SqlCommand("insert into kategoriler (kategoriadi,durumu) values (@kategoriadi,@durumu)", baglan);
        ekle.Parameters.AddWithValue("@kategoriadi", txtkategoriadi.Text);
        ekle.Parameters.AddWithValue("@durumu",dropkategori.SelectedValue);
        ekle.ExecuteNonQuery();
        gridkategori();
        txtkategoriadi.Text = "";
        txtkategoriid.Text = "";
      
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ekle = new SqlCommand("Update kategoriler set kategoriadi=@kategoriadi,durumu=@durumu  where kategori_id=@kategori_id", baglan);
        ekle.Parameters.AddWithValue("@kategori_id", txtkategoriid.Text);
        ekle.Parameters.AddWithValue("@kategoriadi", txtkategoriadi.Text);
        ekle.Parameters.AddWithValue("@durumu", dropkategori.SelectedValue);
        ekle.ExecuteNonQuery();
        txtkategoriadi.Text = "";
        txtkategoriid.Text = "";
        gridkategori();


    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        baglan.Open();
        GridViewRow getir = GridView2.SelectedRow;
        string sira = getir.Cells[1].Text;
        SqlCommand sil = new SqlCommand("Delete from kategoriler where kategori_id=" + sira, baglan);
        sil.ExecuteNonQuery();
        baglan.Close();
        gridkategori();
        txtkategoriadi.Text = "";
        txtkategoriid.Text = "";
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ekle = new SqlCommand("insert into markalar (markaadı,durumu) values (@markaadı,@durumu)", baglan);
        ekle.Parameters.AddWithValue("@markaadı",txtmarkaadi.Text);
        ekle.Parameters.AddWithValue("@durumu", dropmarka.SelectedValue);
        ekle.ExecuteNonQuery();
        gridmarka();
        txtmarkaid.Text = "";
        txtmarkaadi.Text = "";

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        baglan.Open();
        GridViewRow getir = GridView1.SelectedRow;
        string sira = getir.Cells[1].Text;
        SqlCommand sil = new SqlCommand("Delete from markalar where marka_id=" + sira, baglan);
        sil.ExecuteNonQuery();
        baglan.Close();
        txtmarkaid.Text = "";
        txtmarkaadi.Text = "";
        gridmarka();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        baglan.Open();
        SqlCommand ekle = new SqlCommand("Update markalar set markaadı=@markaadı,durumu=@durumu  where marka_id=@marka_id", baglan);
        ekle.Parameters.AddWithValue("@marka_id",txtmarkaid.Text);
        ekle.Parameters.AddWithValue("@markaadı",txtmarkaadi.Text);
        ekle.Parameters.AddWithValue("@durumu", dropmarka.SelectedValue);
        ekle.ExecuteNonQuery();
        txtmarkaid.Text = "";
        txtmarkaadi.Text = "";
        gridmarka();
    }
}