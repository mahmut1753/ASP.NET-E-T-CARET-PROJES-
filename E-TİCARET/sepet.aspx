<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="sepet.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="col-md-12" style="text-align: center; color: #cf3a56;">
        <h3>SEPET</h3>
        <hr />
    </div>
    <br />
    <br />
    <div class="row">
        <div id="swet" runat="server">
            <script type='text/javascript'>swal('Sepet İşlemi!', 'Sepeti Görüntülemek İçin Lütfen Giriş Yapınız!...', 'error');</script>
        </div>
        
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <center>
                    <div style="border:1px solid #373a3c36; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); /*height:300px; max-width:900px;*/ padding:5px">
                        <div class="row">
                            <div class="col-md-2" >Ürün Resmi</div>
                            <div class="col-md-2" >Ürün Adı</div>
                            <div class="col-md-2" >Ürün Fiyatı</div>
                            <div class="col-md-2" >Adet</div>
                            <div class="col-md-2" >Tutar</div>
                            <div class="col-md-2" >Sil</div>
                        </div>
                        <hr />
                        <br />
                        <asp:Repeater ID="lsepet" runat="server">
                            <ItemTemplate>
                        <div class="row">
                            <div class="col-md-2" ><asp:Image ID="Image1" ImageUrl='<%#Eval("resmi") %>' style="height:100px" runat="server"></asp:Image></div>
                            <div class="col-md-2" ><asp:Label ID="Label2" runat="server" Text='<%#Eval("ürünadi") %>'></asp:Label></div>
                            <div class="col-md-2" ><asp:Label ID="Label3" runat="server" Text='<%#Eval("fiyat") %>'></asp:Label></div>
                            <div class="col-md-2" ><asp:TextBox ID="TextBox1"  TextMode="Number" Width="70px" CssClass="form-control" min="1" max="10" step="1" Text='<%#Eval("ürün_adet") %>' runat="server" AutoPostBack="False"></asp:TextBox>
                               </div>
                           
                            <div class="col-md-2" ><a href="#"><%#Eval("fiyat") %></a></div>
                            <div class="col-md-2" ><a href="sepet.aspx?ürünsil=<%#Eval("id") %>" class="btn btn-danger" >Sil</a></div>
                        </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        <div class="row">
                            <div class="col-md-2" > </div>
                            <div class="col-md-2" > </div>
                            <div class="col-md-2" > </div>
                            <div class="col-md-2" ></div>
                            <div class="col-md-2" >Toplam Tutar : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                            <div class="col-md-2" ></div>
                        </div>
                    </div>

                    </center>
                </div>

                <div class="col-md-1"></div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <asp:Button ID="Button1" runat="server" CssClass="btn form-control btn-success" Text="Satın Al" />
                    
                </div>
                <div class="col-md-1"></div>
            </div>

        </div>
       
    </div>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div id="sepeteeklendi" runat="server">
        <script type='text/javascript'>swal('Sepet İşlemi!', 'Ürün Sepete Eklendi...', 'success');</script>
    </div> 

</asp:Content>

