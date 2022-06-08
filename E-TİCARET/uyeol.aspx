<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="uyeol.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <style>
        span{
            float:left;
        }
        a{
            font-size:15px;
            padding-top:-10px;
        }

        input[type="checkbox"]{
        float:left;

       }
        .btngiris{
            background-color:#12b1bc;
            padding:5px 10px;

        }
        .btngiris:hover{
            background-color:#cf3a56;
            cursor: pointer;


        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="col-md-12" style="text-align:center; color:#cf3a56;">
                <h3>ÜYE OL</h3>
                <hr />
            </div>
    

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <center> <div style="border:1px solid #373a3c36; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); max-width:340px; padding:5px">
            
            &nbsp;&nbsp;<asp:TextBox ID="txtadi" required="required" placeholder="Ad" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
            <br />
           
            <asp:TextBox ID="txtsoyadi" required="required" placeholder="Soyad" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
            <br />
            
            <asp:TextBox ID="txttcno" required="required"  placeholder="TC NO" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
            <br />
            
            <asp:TextBox ID="txttelefon" required="required" placeholder="Telefon" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
            <br />
            
            <asp:DropDownList ID="dropsehir" CssClass="form-control" runat="server" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="dropsehir_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
          
            <asp:DropDownList ID="dropilce" CssClass="form-control" runat="server" Width="300px">
            </asp:DropDownList>
            <br />
           
            <asp:TextBox ID="txtadres" required="required" placeholder="Adres" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
                <br />
            
            <asp:TextBox ID="txtemail" required="required" placeholder="Email" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
                <br />
           
            <asp:TextBox ID="txtparola" required="required" placeholder="Parola" CssClass="form-control" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
               <div style=""><asp:CheckBox ID="CheckBox1"  runat="server"  /><a href="#" >Üyelik Sözleşmesi'ni ve Gizlilik Sözleşmesini okudum ve kabul ediyorum</a><br />
                  <br /> <asp:Button ID="Button2" CssClass="btn btn-primary"   runat="server" Text="Üye Ol" Width="100px" OnClick="Button2_Click" />
                   <br />
                </div> 
                <br />
            <br />
                </div></center>
        </div>
        <div class="col-md-3">

        </div>
    </div>
    <br />
    <br />
</asp:Content>

