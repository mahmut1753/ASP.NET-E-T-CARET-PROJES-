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
        if (!IsPostBack)
        {
            if (Request.Cookies["giris"] != null)
            {
                txtemail.Text = Server.HtmlDecode(Request.Cookies["giris"]["eposta"]);
                txtparola.Text = Server.HtmlDecode(Request.Cookies["giris"]["parola"]);
                //Response.Cookies["giris"].Expires = DateTime.Now.AddMinutes(-1);

            }
        }
     }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Giriş_Click(object sender, EventArgs e)
    {
      
           
            baglan.Open();
            SqlCommand cmd = new SqlCommand("Select * from üyeler where email=@email and parola=@parola ", baglan);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@parola", txtparola.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (txtemail.Text == "" || txtparola.Text == "")
            {
                Response.Write("<script>alert('Lütfen Email Ve Parola Giriniz...')</script>");
            }
            else
            {


                if (dr.Read())
                {


                    if (dr["durumu"].ToString() == "1")
                    {
                        if (CheckBox2.Checked)
                        {
                        HttpCookie cerez = new HttpCookie("giris");
                        cerez["eposta"] = Server.HtmlEncode(txtemail.Text);
                        cerez["parola"] = Server.HtmlEncode(txtparola.Text);
                        cerez.Expires = DateTime.Now.AddDays(10);
                        Response.Cookies.Add(cerez);
                        }

                        Session.Add("üyeid", dr["üye_id"]);
                        Session.Add("üyeadi", dr["adi"]);
                        Response.Redirect("anasayfa.aspx");
                        
                   }
                    else
                        Response.Write("<script>alert('Üyeliğiniz Onaylanmamıştır...')</script>");


                }

                else
                {

                    Response.Write("<script>alert('E mail veya Parola Yanlış')</script>");
                }
            }
       baglan.Close();

    }
}