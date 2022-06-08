<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ürünsil.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <style type="text/css">
        .auto-style1 {
            width: 87px;
        }
        .auto-style2 {
            width: 233px;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
        <h2 class="text-center">ÜRÜN GÜNCELLE</h2>
    <hr />
        <br />


     <table class="w-100">
         <tr>
             <td class="auto-style1">
                 <asp:Label ID="Label1" runat="server" Text="Ürün Adı:"></asp:Label>
             </td>
             <td class="auto-style2">
                 <asp:TextBox ID="txtürünadi" runat="server" CssClass="form-control is-invalid" Width="300px"></asp:TextBox>
             </td>
             <td>
                 <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Ürün Ara" />
             </td>
         </tr>
     </table>


     <br />
     <br />
     <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" OnClick="Button2_Click" Text="SİL" />
     <br />
     <br />
     <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
         <Columns>
             <asp:CommandField  SelectText="SEÇ" ControlStyle-CssClass="btn btn-danger" ShowSelectButton="True" ButtonType="Button" >
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
             </asp:CommandField>
<asp:TemplateField>
    <HeaderTemplate>
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
    </HeaderTemplate>
    <ItemTemplate>
                     <asp:CheckBox ID="sec" runat="server" OnCheckedChanged="sec_CheckedChanged" />
                 
</ItemTemplate>
</asp:TemplateField>
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


    </asp:Content>

