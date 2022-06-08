<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf8" />
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="source/bootstrap-3.3.6-dist/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="source/font-awesome-4.5.0/css/font-awesome.css" />
	<link rel="stylesheet" type="text/css" href="style/slider.css" />
	<link rel="stylesheet" type="text/css" href="style/mystyle.css" />
	<link rel="stylesheet" type="text/css" href="style/contactstyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


     <br />
        <div class="row">
            
            <div class="col-md-12" style="text-align:center; color:#cf3a56;">
                <h2>İLETİŞİME GECİN</h2>
                <hr />
            </div>
            
        </div>


	
				
					<div class="contact-form">
						
							<div class="form-group group-coustume">
                                <asp:TextBox ID="txtad" CssClass="form-control" placeholder="Ad Soyad" style="height:30px;" runat="server"></asp:TextBox><br />
                                <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="E-mail"  style="height:30px;" runat="server"></asp:TextBox><br />
                                <asp:TextBox ID="txtkonu" CssClass="form-control" placeholder="Konu"  style="height:30px;" runat="server"></asp:TextBox><br />
								
								<textarea rows="4" cols="50" style="height:150px" placeholder="Mesaj" class="form-control"></textarea><br />
                                <asp:Button ID="Button1" runat="server" CssClass="btn form-control btn-success" Text="Gönder"  />
							</div>
					</div>
		
			<div class="google-maps">
			 <div id="googleMap">
                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12858.584461010247!2d36.188004981614824!3d36.32088766800618!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1525ec749422e4c5%3A0x9916d07bba8d24a4!2sAntakya+Meslek+Y%C3%BCksekokulu!5e0!3m2!1str!2str!4v1554736436109!5m2!1str!2str" width="1275" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe></div>

			</div>
	
 

</asp:Content>

