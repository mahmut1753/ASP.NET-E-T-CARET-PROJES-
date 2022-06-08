using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        swet.Visible = false;
        sepeteeklendi.Visible = false;
        if (Request.QueryString["sepeteekle"] != null)
        {
            
            if (Session["üyeid"] != null && Session["üyeadi"] != null)
            {
                string id = Request.QueryString["sepeteekle"];
                string üyeid =Session["üyeid"].ToString();
                baglan.Open();
                SqlCommand cmd = new SqlCommand("insert into sepet(ürün_id,üye_id,ürün_adet) values ('"+id+"','"+üyeid+"','"+1+"') ", baglan);
                SqlDataReader dr = cmd.ExecuteReader();

                    sepeteeklendi.Visible = true;
                    System.Reflection.PropertyInfo isreadonly = typeof(System.Collections.Specialized.NameValueCollection).GetProperty("IsReadOnly", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic);
                    isreadonly.SetValue(this.Request.QueryString, false, null);

                    this.Request.QueryString.Remove("sepeteekle");
                
                dr.Close();
                baglan.Close();
                

            }
            else
            {
                swet.Visible = true;
                System.Reflection.PropertyInfo isreadonly = typeof(System.Collections.Specialized.NameValueCollection).GetProperty("IsReadOnly", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic); 
                isreadonly.SetValue(this.Request.QueryString, false, null);

                this.Request.QueryString.Remove("sepeteekle");
             
            
            }
        }
        
       if(!IsPostBack)
     {
       gridview();
       yukle();
       radio1.AutoPostBack = true;
       radio2.AutoPostBack = true;
       DropDownList1.AutoPostBack = true;
       radiocek();
       radio1.SelectedIndex = 0;
       radio2.SelectedIndex = 0;
     }

    }
    protected void btnsepet_Click(object sender, EventArgs e)
    {

    }
    private void radiocek()
    {
        SqlDataAdapter sorgu2 = new SqlDataAdapter("select * from markalar where durumu=1 ", baglan);
        DataSet ds2 = new DataSet();
        sorgu2.Fill(ds2);
        radio2.DataSource = ds2;
        radio2.DataValueField = "marka_id";
        radio2.DataTextField = "markaadı";
        radio2.DataBind();
        sorgu2.Dispose();
        ds2.Dispose();

        baglan.Close();
    }


    private void gridview()
    {
        baglan.Open();
        SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1", baglan);
        SqlDataReader dr = cmd.ExecuteReader();
        lürünler.DataSource = dr;
        lürünler.DataBind();
        baglan.Close();
    }
    protected void yukle()//tbalo bağla
    {
        try
        {
            baglan.Open();
            SqlDataAdapter sorgu1 = new SqlDataAdapter("select * from kategoriler where durumu=1", baglan);
            DataSet ds1 = new DataSet();
            sorgu1.Fill(ds1);

            radio1.DataSource = ds1;
            radio1.DataValueField = "kategori_id";
            radio1.DataTextField = "kategoriadi";
            radio1.DataBind();
            sorgu1.Dispose();
            ds1.Dispose();
            baglan.Close();


            
        }
        catch
        {
            Response.Write("<script>alert('Veri Tabanında Hata Var...')</script>");

        }
    }
   
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        //if (radio1.SelectedIndex == 0 && radio2.SelectedIndex == 0)
        //{

        //    baglan.Open();
        //    SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1 ", baglan);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    lürünler.DataSource = dr;
        //    lürünler.DataBind();
        //    baglan.Close();
        //}


        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex == 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1 ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex != 0)
        {

            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1  and markakodu='" + radio2.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio2.SelectedIndex == 0 && radio1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1 and  kategorikodu='" + radio1.SelectedValue + "'", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1 and markakodu='" + radio2.SelectedValue + "' and kategorikodu='" + radio1.SelectedValue + "'", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and kategorikodu='" + radio1.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and markakodu='" + radio2.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex != 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and markakodu='" + radio2.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and kategorikodu='" + radio1.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex != 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and kategorikodu='" + radio1.SelectedValue + "' and durumu=1 and markakodu='" + radio2.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
       
     
    }
 

    protected void radio2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex == 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1 ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1 and  markakodu='" + radio2.SelectedValue + "'", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio2.SelectedIndex == 0 && radio1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1 and  kategorikodu='" + radio1.SelectedValue + "'", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex != 0)
        {
            // radio1.AutoPostBack = false;
            // check1.AutoPostBack = true;
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where durumu=1 and markakodu='" + radio2.SelectedValue + "' and kategorikodu='" + radio1.SelectedValue + "'", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }

        if (radio2.SelectedIndex == 0 && radio1.SelectedIndex != 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and  durumu=1 and kategorikodu='" + radio1.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio2.SelectedIndex != 0 && radio1.SelectedIndex == 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and markakodu='" + radio2.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex != 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and kategorikodu='" + radio1.SelectedValue + "' and durumu=1 and markakodu='" + radio2.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
    }
 
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex != 0)
        {

            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and kategorikodu='" + radio1.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex != 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and markakodu='" + radio2.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex != 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1 and markakodu='" + radio2.SelectedValue + "' and kategorikodu='" + radio1.SelectedValue + "' ", baglan);
            SqlDataReader dr = cmd.ExecuteReader();
            lürünler.DataSource = dr;
            lürünler.DataBind();
            baglan.Close();
        }
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex == 0)
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();

            ara.Dispose();
            goster.Dispose();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex == 0)
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where kategorikodu='" + radio1.SelectedValue + "' and  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();

            ara.Dispose();
            goster.Dispose();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex != 0 && DropDownList1.SelectedIndex == 0)
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where  and markakodu='" + radio2.SelectedValue + "' and  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();

            ara.Dispose();
            goster.Dispose();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();

            ara.Dispose();
            goster.Dispose();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex != 0 && DropDownList1.SelectedIndex == 1)
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where  durumu=1 and markakodu='" + radio2.SelectedValue + "' and kategorikodu='" + radio1.SelectedValue + "' and  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();

            ara.Dispose();
            goster.Dispose();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1  and kategorikodu='" + radio1.SelectedValue + "' and  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();

            ara.Dispose();
            goster.Dispose();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex != 0 && DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1  and markakodu='" + radio2.SelectedValue + "' and  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();

            ara.Dispose();
            goster.Dispose();
            baglan.Close();
        }
        if (radio1.SelectedIndex != 0 && radio2.SelectedIndex != 0 & DropDownList1.SelectedIndex != 0)
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where fiyat between " + DropDownList1.SelectedValue + " and durumu=1  and kategorikodu='" + radio1.SelectedValue + "' and markakodu='" + radio2.SelectedValue + "' and  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();

            ara.Dispose();
            goster.Dispose();
            baglan.Close();
        }
        if (radio1.SelectedIndex == 0 && radio2.SelectedIndex == 0 && DropDownList1.SelectedIndex == 0 && txtara.Text == "")
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where   durumu=1 ", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();
        }
        if(radio1.SelectedIndex==0&&radio2.SelectedIndex==0&&DropDownList1.SelectedIndex==0&&txtara.Text!="")
        {
            baglan.Open();
            SqlCommand ara = new SqlCommand("select * from ürünler where   durumu=1 and  ürünadi like '%" + txtara.Text + "%'", baglan);
            SqlDataReader goster = ara.ExecuteReader();
            lürünler.DataSource = goster;
            lürünler.DataBind();
        }

        
        //string aramasarti = "select * from ürünler where durumu=1  ";
        //// string durumu=" durumu=1 ";
        //string ara = " and ürünadi like '%"+ txtara.Text + "%' ";
        //string kategori = " and kategorikodu= '" + radio1.SelectedValue + "' ";
        //string marka = " and  markakodu= '" + radio2.SelectedValue + "' ";
        //string fiyat = " and fiyat between '" + DropDownList1.SelectedValue + "' and '" + DropDownList2.SelectedValue + "'";

        
        //if (txtara.Text != "")
        //{
        //   aramasarti += ara  ;
        //}
        //if (radio1.SelectedValue != "0")
        //{ 
        //aramasarti += kategori.ToString()  ;
        //} 
        //if (radio2.SelectedIndex != 0)
        //{
        //    aramasarti += marka  ;
        //}
        //if (DropDownList1.SelectedValue != "0")
        //{
        //    aramasarti += fiyat ;
        //}
   
        //baglan.Open();
        //SqlCommand cmd = new SqlCommand(  aramasarti , baglan);
        //SqlDataReader dr = cmd.ExecuteReader();
        //lürünler.DataSource = dr;
        //lürünler.DataBind();
        //baglan.Close();
        
    }
}