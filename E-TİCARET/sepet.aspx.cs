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
        
         
        sepeteeklendi.Visible = false;
        double toplam = 0;
        if (Session["üyeid"] != null && Session["üyeadi"] != null)
        {

            swet.Visible = false;
            string üyeid = Session["üyeid"].ToString();
            baglan.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter ürünid = new SqlDataAdapter("select ürün_id,ürün_adet,id,ürünadi,resmi,fiyat from sepet s join ürünler ü on s.ürün_id=ü.id  where  üye_id='" + üyeid + "'", baglan);
            ürünid.Fill(dt);
            //SqlDataReader dr = ürünid.ExecuteReader();
         
                
            
            lsepet.DataSource = dt;
            lsepet.DataBind();

            for (int i = 0; i < dt.Rows.Count; i++)//yine tablonun tüm alanlarında dönecek döngü başlatılıyor
            {
                toplam += Convert.ToDouble(dt.Rows[i]["fiyat"].ToString());//her satırdaki tutar miktarı toplam değişkenine aktarılıyor
                
            }
            Label1.Text = toplam.ToString();
            
                //foreach (RepeaterItem item in lsepet.Items)
                //{
                //    Label label5 = item.FindControl("Label5") as Label;
                //    if (dr.Read())
                //    {
                //        label5.Text = dr["fiyat"].ToString();
                //    }
                //    else
                //    {
                //        Response.Write("<script>alert'asdasdas'</script>")
                //    }
                    
                //}


            baglan.Close();

            //System.Web.UI.WebControls.Label la = (System.Web.UI.WebControls.Label)lsepet.FindControl("Label5");
          
            

        }
        else
        {
            swet.Visible = true;
        }

        if (Request.QueryString["ürünsil"] != null)
        {
            string ürünid = Request.QueryString["ürünsil"];
            string üyeid=Session["üyeid"].ToString();
            baglan.Open();
            SqlCommand ürünsil = new SqlCommand("delete from sepet where ürün_id='"+ürünid+"' and üye_id='"+üyeid+"'", baglan);
            ürünsil.ExecuteNonQuery();
            baglan.Close();
       
            Response.Redirect("sepet.aspx");
            

            System.Reflection.PropertyInfo isreadonly = typeof(System.Collections.Specialized.NameValueCollection).GetProperty("IsReadOnly", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic);
            isreadonly.SetValue(this.Request.QueryString, false, null);

            this.Request.QueryString.Remove("ürünsil");

        }
    }
   

    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
}


