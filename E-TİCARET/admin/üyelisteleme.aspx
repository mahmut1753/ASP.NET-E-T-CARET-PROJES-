<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="üyelisteleme.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
    <link rel="stylesheet" href="../css/bootstrap.min.css" />

    <style type="text/css">
        .auto-style1 {
            width: 80px;
        }
        .auto-style2 {
            width: 291px;
        }
        .auto-style3 {
        width: 93px;
    }
        .auto-style4 {
            width: 137px;
        }
        .auto-style5 {
            width: 293px;
        }
        .auto-style6 {
            width: 62px;
        }
        .auto-style7 {
            width: 277px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
        <h2 class="text-center">ÜYE LİSTELEME</h2>
    <hr />
    <table class="w-100">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="TC NO:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txttcno" runat="server" CssClass="form-control" Width="293px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Üye Durumu:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="dropdurum" runat="server" CssClass="form-control" Width="300px">
                    <asp:ListItem Value="0">Tüm Üyeler</asp:ListItem>
                    <asp:ListItem Value="1">Aktif Üyeler</asp:ListItem>
                    <asp:ListItem Value="2">Pasif Üyeler</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Ara" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Durumu:"></asp:Label>
            </td>
            <td class="auto-style2">
                <br />
                <br />
                <asp:DropDownList ID="dropgüncelle" runat="server" CssClass="form-control" Width="300px">
                </asp:DropDownList>
            </td>
            <td class="auto-style3">
                <br />
                <br />
                <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="Güncelle" OnClick="Button3_Click" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="w-100">
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button4" CssClass="btn btn-success" runat="server" Width="110px" Text="Toplu Aktif" OnClick="Button4_Click" />
            </td>
            <td>
                <asp:Button ID="Button5" CssClass="btn btn-danger" runat="server" Width="110px" Text="Toplu Pasif" OnClick="Button5_Click" />
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-danger" ButtonType="Button" />
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
    
      


</asp:Content>

