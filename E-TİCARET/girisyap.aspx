<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="girisyap.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <meta charset="utf8" />
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <style>
        
        a{
            font-size:15px;
            padding-top:-10px;
        }

       
      
      
        .btngiris{
            background-color:#12b1bc;
            padding:5px 10px;

        }
        .btngiris:hover{
            background-color:#cf3a56;
            cursor: pointer;


        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
            width: 79px;
        }
        .auto-style4 {
            width: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <br />
    <div class="row">

        <div class="col-md-12" style="text-align: center; color: #cf3a56;">
            <h3>GİRİŞ YAP</h3>
            <hr />
        </div>

    </div>
    <br />
    

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <center> <div style="border:1px solid #373a3c36; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); max-width:340px; padding:5px">
            
          <br />
    

    <div class="row">
        <div class="col-md-3">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtemail" placeholder="Email" required="required" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtparola" placeholder="Parola" required="required" runat="server" CssClass="form-control" Width="300px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <br />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Beni Hatırla" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                       <a href="sifreyenile.aspx"><asp:Label ID="Label1" runat="server" Text="Şifremi Unuttum"></asp:Label></a>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Giriş" CssClass="btn btn-primary" Width="90px" runat="server" Text="Giriş Yap" OnClick="Giriş_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    <br /> 
    <br />
          
            
            
                </div> 
            <br />
                </center>
        </div>
        <div class="col-md-3">
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    

</asp:Content>

