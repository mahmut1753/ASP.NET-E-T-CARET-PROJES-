<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="kategori.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 689px;
        }
        .auto-style3 {
            width: 134px;
        }
        .auto-style4 {
            width: 330px;
        }
        .auto-style5 {
            width: 469px;
        }
        .auto-style6 {
            width: 181px;
        }
        .auto-style11 {
            width: 148px;
        }
        .auto-style12 {
            width: 117px;
        }
        .auto-style13 {
            width: 366px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <br />
    <h2 class="text-center">KATEGORİ VE MARKA İŞLEMLERİ</h2>
    <hr />
     <br />
     <table class="auto-style1">
         <tr>
             <td class="auto-style2">
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="MARKA"></asp:Label>
             </td>
             <td>
                 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="KATEGORİ"></asp:Label>
             </td>
         </tr>
     </table>
     <br />
     <br />
     <table class="auto-style1">
         <tr>
             <td class="auto-style3">
                 <asp:Label ID="Label7" runat="server" Text="Marka İD:"></asp:Label>
             </td>
             <td class="auto-style4">
                 <asp:TextBox ID="txtmarkaid" runat="server" CssClass="form-control" Width="200px" Enabled="False" OnTextChanged="txtmarkaid_TextChanged"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style11">
                 <asp:Label ID="Label8" runat="server" Text="Kategori İD:"></asp:Label>
             </td>
             <td class="auto-style13">
                 <asp:TextBox ID="txtkategoriid" runat="server" CssClass="form-control" Width="200px" Enabled="False"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">
                 <asp:Label ID="Label3" runat="server" Text="Marka Adı:"></asp:Label>
             </td>
             <td class="auto-style4">
                 <asp:TextBox ID="txtmarkaadi" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style11">
                 <asp:Label ID="Label5" runat="server" Text="Kategori Adı:"></asp:Label>
             </td>
             <td class="auto-style13">
                 <asp:TextBox ID="txtkategoriadi" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
             </td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">
                 <asp:Label ID="Label4" runat="server" Text="Marka Durumu:"></asp:Label>
             </td>
             <td class="auto-style4">
                 <asp:DropDownList ID="dropmarka" runat="server" CssClass="form-control" Width="200px">
                     <asp:ListItem Value="0">Durum Seçin</asp:ListItem>
                     <asp:ListItem Value="1">Aktif</asp:ListItem>
                     <asp:ListItem Value="2">Pasif</asp:ListItem>
                 </asp:DropDownList>
             </td>
             <td>&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style11">
                 <asp:Label ID="Label6" runat="server" Text="Kategori Durumu:"></asp:Label>
             </td>
             <td class="auto-style13">
                 <asp:DropDownList ID="dropkategori" runat="server" CssClass="form-control" Width="200px">
                     <asp:ListItem Value="1">Aktif</asp:ListItem>
                     <asp:ListItem Value="2">Pasif</asp:ListItem>
                 </asp:DropDownList>
             </td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td class="auto-style4">
                 <br />
                 <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="Ekle" OnClick="Button3_Click" />
&nbsp;
                 <asp:Button ID="Button4" CssClass="btn btn-danger" runat="server" Text="Güncelle" Width="100px" OnClick="Button4_Click" />
             &nbsp;
                 <%--<asp:Button ID="Button8" CssClass="btn btn-info" runat="server" Text="İptal" />--%>
                 <asp:Button ID="Button8" CssClass="btn btn-info" runat="server" Text="Sil" OnClick="Button8_Click" />
             </td>
             <td>&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td class="auto-style13">
                 <br />
                 <asp:Button ID="Button5" CssClass="btn btn-primary" runat="server" Text="Ekle" OnClick="Button5_Click" />
&nbsp;
                 <asp:Button ID="Button6" CssClass="btn btn-danger" runat="server" Text="Güncelle" OnClick="Button6_Click" />
             &nbsp;
                 <asp:Button ID="Button7" CssClass="btn btn-info" runat="server" Text="Sil" OnClick="Button7_Click" />
             </td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td class="auto-style4">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td class="auto-style13">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style3">&nbsp;</td>
             <td class="auto-style4">&nbsp;</td>
             <td>&nbsp;</td>
             <td class="auto-style12">&nbsp;</td>
             <td class="auto-style11">&nbsp;</td>
             <td class="auto-style13">&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
     <br />
     <table class="auto-style1">
         <tr>
             <td class="auto-style5">
                 <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                     <Columns>
                         <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-danger" CommandName="Select" Text="SEÇ" />
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
             </td>
             <td class="auto-style6">&nbsp;</td>
             <td>
                 <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                     <Columns>
                         <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-danger" CommandName="Select" Text="SEÇ" />
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
             </td>
         </tr>
     </table>
    <br />




</asp:Content>

