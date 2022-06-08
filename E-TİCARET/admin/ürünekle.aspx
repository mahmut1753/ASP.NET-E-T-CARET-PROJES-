<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ürünekle.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <style type="text/css">
        .auto-style2 {
            width: 341px;
        }
        .auto-style3 {
            width: 171px;
        }
        .auto-style4 {
            width: 288px;
        }
        .auto-style5 {
            width: 275px;
        }
        .auto-style6 {
            width: 275px;
            height: 31px;
        }
        .auto-style7 {
            width: 341px;
            height: 31px;
        }
        .auto-style8 {
            width: 171px;
            height: 31px;
        }
        .auto-style9 {
            width: 288px;
            height: 31px;
        }
        .auto-style10 {
            height: 31px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h2 class="text-center">ÜRÜN EKLE</h2>
    <hr />

    
    <br />
    <table class="w-100">
        <tr>
            <td class="auto-style5">

    
    <asp:Label ID="Label1" runat="server" Text="Ürün Adı:"></asp:Label>
                        </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtürünadi" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
                            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
    <asp:Label ID="Label2"  runat="server" Text="Marka Adı:"></asp:Label>
                        </td>
            <td class="auto-style2">
    <asp:DropDownList ID="combomarka" CssClass="form-control" runat="server" Width="300px">
    </asp:DropDownList>
                            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style6">
    <asp:Label ID="Label3" runat="server" Text="Kategori Adı:"></asp:Label>
                        </td>
            <td class="auto-style7">
    <asp:DropDownList ID="combokategori" CssClass="form-control" runat="server" Width="300px">
    </asp:DropDownList>
                            </td>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                </td>
            <td class="auto-style10">
                </td>
        </tr>
        <tr>
            <td class="auto-style5">
    <asp:Label ID="Label4" runat="server" Text="Ürün Fiyatı:"></asp:Label>
                        </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtfiyat" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
                            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5">
    <asp:Label ID="Label5" runat="server" Text="Ürün Adeti:"></asp:Label>
                        </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtadet" CssClass="form-control" runat="server" Width="300px" OnTextChanged="txtadet_TextChanged"></asp:TextBox>
                            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5">
    <asp:Label ID="Label7"  runat="server" Text="Ürün Detayı:"></asp:Label>
                        </td>
            <td class="auto-style2">
    <asp:TextBox ID="txtdetay" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
                            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5">
    <asp:Label ID="Label6" runat="server" Text="Ürün Resmi:"></asp:Label>
                        </td>
            <td class="auto-style2">
    <asp:FileUpload ID="furesim" CssClass="form-control" runat="server" Width="300px" />
                            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">
    <asp:Button ID="Ekle"  CssClass="btn btn-primary btn-block" runat="server" Text="Ekle" Width="130px" OnClick="Ekle_Click" />
                        </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="form-control">
        <Columns>
            <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-danger" SelectText="Seç" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />



</asp:Content>

