<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="siparis.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf8" />
    <link rel="stylesheet" href="css/bootstrap.min.css"/>

     <style type="text/css">
         .auto-style1 {
             width: 100%;
         }
         .auto-style2 {
             height: 29px;
         }
         .auto-style3 {
             height: 31px;
         }
         .auto-style4 {
             width: 173px;
         }
         .auto-style5 {
             width: 1003px;
         }
     </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <br />
        <div class="row">
            
            <div class="col-md-12" style="text-align:center; color:#cf3a56;">
                <h2>Şipariş Takip</h2>
                <hr />
            </div>
            
        </div>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
             <div>

            <table class="auto-style1">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="E-POSTA" runat="server" Width="300px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="SİPARİŞ NUMARASI" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Sorgula" />
                        </td>
                    </tr>
                </table>
                

            </div>
            <br />
            <br />
            <br />
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style5">
             <asp:Image ID="Image1" ImageUrl="image/kargobanner.jpg" Width="747px" runat="server" />
                     </td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
            <br />
            <br />
           
        </div>
        <div class="col-md-2"></div>
    </div>
 
 

</asp:Content>

