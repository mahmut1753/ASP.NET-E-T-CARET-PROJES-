<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link rel="stylesheet" href="sss/sss.css" type="text/css" media="all" /> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="sss/sss.min.js"></script> 
<script>
    jQuery(function ($) {
        $('.slider').sss();
    });
</script>
    <style>
        .btn{
            cursor:pointer;
        }

    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="sayfa">
<div class="slider">
<img src="image/1.jpg"/>
<img src="image/2.jpg"/>
<img src="image/3.jpg"/>
<img src="image/4.jpg"/>
</div>
</div>
          <br />
        <div class="row">
            
            <div class="col-md-12" style="text-align:center; color:#cf3a56;">
                <h3>GÜNÜN FIRSATI</h3>
                <hr />
            </div>
            
        </div>
        <div class="row">
            
            <div class="col-md-3" style=" height:400px;   ">
                <center>
                <img src="image/urun1.jpg" title="Ruj" alt="Alternate Text"  />
                    <p style="font-style:italic; ">Kerastase Aminexil Force Saç Bakım Serumu 42x6ml</p>
                    <p style="color:red;"><del>870,00</del>/520,00 TL</p>
                    <p style="color:red;">
                        <asp:Button ID="Button2" CssClass="btn btn-success" Width="110px" runat="server"  Text="Sepete Ekle"   />
                    </p>

                </center>
            </div>
            <div class="col-md-3" style=" height:400px;">
                <center>
                <img src="image/urun2.jpg" title="Nemlendirici" alt="Alternate Text"  />
                     <p style="font-style:italic; ">Kerastase Aminexil Force Saç Bakım Serumu 42x6ml</p>
                    <p style="color:red;"><del>870,00</del>/520,00 TL</p>
                    <p style="color:red;">
                        <asp:Button ID="Button3"   CssClass="btn btn-success" Width="110px"  runat="server" Text="Sepete Ekle" />
                    </p>
                    </center>
            </div>
            <div class="col-md-3" style=" height:400px;">
                <center>
                <img src="image/urun3.jpg" title="Bakım Kremi" alt="Alternate Text" />
                     <p style="font-style:italic; ">Kerastase Aminexil Force Saç Bakım Serumu 42x6ml</p>
                    <p style="color:red;"><del>870,00</del>/520,00 TL</p>
                    <p style="color:red;">
                        <asp:Button ID="Button4"  CssClass="btn btn-success" Width="110px"  runat="server" Text="Sepete Ekle"  />
                    </p>
                    </center>
            </div>
            <div class="col-md-3" style=" height:400px; ">
                <center>
                <img src="image/urun4.jpg" title="Bakım Seti" alt="Alternate Text"  />
                     <p style="font-style:italic; ">Kerastase Aminexil Force Saç Bakım Serumu 42x6ml</p>
                    <p style="color:red;"><del>870,00</del>/520,00 TL</p>
                    <p style="color:red;">
                        <asp:Button ID="Button5"  CssClass="btn btn-success" Width="110px"  runat="server"  Text="Sepete Ekle"   />
                    </p>
                    </center>
            </div>
            
        </div>
        <br />
        <br />   


    <br />
        <div class="row">
            
            <div class="col-md-12" style="text-align:center; color:#cf3a56;">
                <h3>ÇOK SATANLAR</h3>
                <hr />
            </div>
            
        </div>
        <div class="row">
            
            <div class="col-md-3" style="height:400px;   ">
                <center>
                <img src="image/urun1.jpg" title="Ruj" alt="Alternate Text"  />
                    <p style="font-style:italic; ">Kerastase Aminexil Force Saç Bakım Serumu 42x6ml</p>
                    <p style="color:red;"><del>870,00</del>/520,00 TL</p>
                    <p style="color:red;">
                        <asp:Button ID="Button1"  CssClass="btn btn-success" Width="110px"   runat="server"  Text="Sepete Ekle"  />
                    </p>

                </center>
            </div>
            <div class="col-md-3" style=" height:400px;">
                <center>
                <img src="image/urun2.jpg" title="Nemlendirici" alt="Alternate Text"  />
                     <p style="font-style:italic; ">Kerastase Aminexil Force Saç Bakım Serumu 42x6ml</p>
                    <p style="color:red;"><del>870,00</del>/520,00 TL</p>
                    <p style="color:red;">
                        <asp:Button ID="Button6"  CssClass="btn btn-success" Width="110px"  runat="server"  Text="Sepete Ekle"  />
                    </p>
                    </center>
            </div>
            <div class="col-md-3" style=" height:400px;">
                <center>
                <img src="image/urun3.jpg" title="Bakım Kremi" alt="Alternate Text" />
                     <p style="font-style:italic; ">Kerastase Aminexil Force Saç Bakım Serumu 42x6ml</p>
                    <p style="color:red;"><del>870,00</del>/520,00 TL</p>
                    <p style="color:red;">
                        <asp:Button ID="Button7"  CssClass="btn btn-success" Width="110px"  runat="server"  Text="Sepete Ekle"   />
                    </p>
                    </center>
            </div>
            <div class="col-md-3" style=" height:400px; ">
                <center>
                <img src="image/urun4.jpg" title="Bakım Seti" alt="Alternate Text"  />
                     <p style="font-style:italic; ">Kerastase Aminexil Force Saç Bakım Serumu 42x6ml</p>
                    <p style="color:red;"><del>870,00</del>/520,00 TL</p>
                    <p style="color:red;">
                        <asp:Button ID="Button8"   CssClass="btn btn-success" Width="110px"  runat="server"  Text="Sepete Ekle"   />
                    </p>
                    </center>
            </div>
            
        </div>
        <br />
        <br />   
</asp:Content>

