<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="üründetayi.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 262px;
        }
        .auto-style3 {
            width: 262px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">

        <div class="col-md-12" style="text-align: center; color: #cf3a56;">
            <h3>ÜRÜN DETAYI</h3>
            <hr />
        </div>

    </div>

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-5">
                    <asp:Image ID="Image1" Height="456px" Width="456px" runat="server" />
                </div>
                <div class="col-md-7">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td class="auto-style4">
                                </td>
                            <td class="auto-style4"></td>
                            <td class="auto-style4"></td>
                            <td class="auto-style4"></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <h4><asp:Label ID="lblad" runat="server" Text="Label" ForeColor="#CF3A56"></asp:Label></h4> 
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <h5> <asp:Label ID="lblfiyat" runat="server" Text="Label"></asp:Label>&nbsp ₺</h5> 
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text="ADET:"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="100px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>10+</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="Sepete Ekle" Width="250px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
            <br />
            <br />
            <div class="row">

                <div class="col-md-12" style="text-align: center; color: #cf3a56;">
                    <h4><asp:Label ID="lblyorum" runat="server" Text="Label"></asp:Label>&nbsp;Yorumları</h4>
                    <hr />
                </div>

            </div>
           
        </div>

        <div class="col-md-2"></div>
    </div>
    <br />
    <br />

    <br />
    <br />
    <br />
    <br />
</asp:Content>

