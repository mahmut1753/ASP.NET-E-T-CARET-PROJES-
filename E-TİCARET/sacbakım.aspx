<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="sacbakım.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100px;
        }
        .auto-style3 {
            width: 312px;
        }
        .auto-style5 {
            width: 260px;
        }
        .auto-style6 {
            width: 11px;
        }
        .auto-style7 {
            width: 77px;
        }
    </style>
   
    </asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
        
            
    <div class="row">
        <div class="col-md-3" style="border-right:1px solid #c2c2c2">

<h4>  <asp:Label ID="Label1" runat="server" ForeColor="#CF3A56"  Text="KATEGORİLER"></asp:Label></h4>
            <br />
            <asp:RadioButtonList ID="radio1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            </asp:RadioButtonList>
            
            <h4>  <asp:Label ID="Label2" runat="server" ForeColor="#CF3A56" Text="MARKALAR"></asp:Label></h4>
            <br />
            <asp:RadioButtonList ID="radio2" runat="server" OnSelectedIndexChanged="radio2_SelectedIndexChanged">
            </asp:RadioButtonList>
            <hr />
             <h4>  &nbsp;</h4>
          
         
          
        </div>

        <div class="col-md-9">
            <div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text="Fiyat Aralığı:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="250px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="0">Fiyat Seçiniz</asp:ListItem>
                                <asp:ListItem Value=" 0 and 100000 ">Tüm Fiyatlar</asp:ListItem>
                                <asp:ListItem Value=" 0 and 100 ">0 - 100 TL</asp:ListItem>
                                <asp:ListItem Value=" 100 and 200 ">100 - 200 TL</asp:ListItem>
                                <asp:ListItem Value=" 200 and 300 ">200 - 300 TL</asp:ListItem>
                                <asp:ListItem Value=" 300 and 400 ">300 - 400 TL</asp:ListItem>
                                <asp:ListItem Value=" 500 and 100000 ">500+ TL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style7">
                            <asp:Label ID="Label5" runat="server" Text="Ürün Adı:"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtara" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" Text="Ara" OnClick="Button2_Click" />
                        &nbsp; </td>
                    </tr>
                </table>
            </div>
            <hr />
            <asp:Repeater ID="lürünler" runat="server">
                <ItemTemplate>
                    <div class="ürünler" style="/*border-right:1px solid #c2c2c2;*/border:1px solid #c2c2c2;border-radius:7px 7px; height:435px;width:280px;float:left;">
               
             <center><a href="üründetayi.aspx?ürünid=<%#Eval("id") %>"><asp:Image ID="Image1" ImageUrl='<%#Eval("resmi") %>' runat="server" style="max-height:240px; max-width:260px"   /></a> </center>
                <br />

                <center> <asp:Label ID="ürünadi" runat="server" style="text-align:center;font-style:italic;font-size:17px;max-height:23px"  Text='<%#Eval("ürünadi") %>'></asp:Label></center>
                        <br />
                <center><h5><asp:Label ID="ürünfiyat" runat="server" style="color:red;max-height:23px" Text='<%#Eval("fiyat") %>'></asp:Label>&nbsp;₺</h5></center>
                <br />
                        
                <center><a href="sacbakım.aspx?sepeteekle=<%#Eval("id") %>" class="btn btn-success">Sepete Ekle</a></center> 
                     
            </div>
                </ItemTemplate>
                
            </asp:Repeater>
            
        </div>
    </div>
     
    <br />
    <br />

    <div id="swet" runat="server">
        <script type='text/javascript'>swal('Sepet İşlemi!', 'Sepeti Ürün Eklemek İçin Lütfen Giriş Yapınız!...', 'error');</script>
    </div> 
    <div id="sepeteeklendi" runat="server">
        <script type='text/javascript'>swal('Sepet İşlemi!', 'Ürün Sepete Eklendi...', 'success');</script>
    </div> 
       
        
    
      

  
</asp:Content>

