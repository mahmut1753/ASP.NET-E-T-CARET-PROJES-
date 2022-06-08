<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="üyelikiptal.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <style type="text/css">
        .auto-style1 {
            width: 68px;
        }
        .auto-style2 {
            width: 313px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <br />
        <h2 class="text-center">ÜYE SİL</h2>
    <hr />
        <br />
     <table class="w-100">
         <tr>
             <td class="auto-style1">
                 <asp:Label ID="Label1" runat="server" Text="TC NO:"></asp:Label>
             </td>
             <td class="auto-style2">
                 <asp:TextBox ID="txttcno" runat="server" Width="300px" CssClass="form-control"></asp:TextBox>
             </td>
             <td>
                 <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Ara" OnClick="Button1_Click" />
             </td>
         </tr>
     </table>
     <br />
     <asp:Button ID="btnsil" CssClass="btn btn-danger" runat="server" Text="Sil" OnClick="btnsil_Click" />
     <br />
        <br />
     <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
         <Columns>
             <asp:CommandField SelectText="SEÇ" ControlStyle-CssClass="btn btn-danger" ShowSelectButton="True" ButtonType="Button" />
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

