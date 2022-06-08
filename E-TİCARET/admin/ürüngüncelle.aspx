<%@ Page Title="" ValidateRequest="false" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodePage="28599" CodeFile="�r�ng�ncelle.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254" />

    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <style type="text/css">
        .auto-style9 {
            width: 77%;
            height: 371px;
        }
        .auto-style10 {
            width: 207px;
        }
        .auto-style11 {
            width: 626px;
        }
        .auto-style13 {
            width: 305px;
        }
        .auto-style14 {
            width: 41px;
        }
        .auto-style15 {
            width: 211px;
        }
        .auto-style17 {
            width: 139px;
        }
        .auto-style18 {
            width: 205px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
        <h2 class="text-center">�R�N G�NCELLE</h2>
    <hr />
        <br />
     <table class="w-100">
         <tr>
             <td class="auto-style11">&nbsp;
                 <table class="auto-style9">
                     <tr>
                         <td class="auto-style10">
                             <asp:Label ID="Label10" runat="server" Text="�r�n �D:"></asp:Label>
                         </td>
                         <td>
                             <asp:TextBox ID="txtid" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                 <asp:Label ID="Label1" runat="server" style="text-align: right" Text="�r�n Ad�:"></asp:Label>
                         </td>
                         <td>
                 <asp:TextBox ID="txt�r�n" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                 <asp:Label ID="Label2" runat="server" Text="Marka Ad�:"></asp:Label>
                         </td>
                         <td>
                 <asp:DropDownList ID="combomarka" CssClass="form-control" runat="server" Width="300px" DataSourceID="marka" DataTextField="markaad�" DataValueField="marka_id" OnSelectedIndexChanged="combomarka_SelectedIndexChanged">
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="marka" runat="server" ConnectionString="<%$ ConnectionStrings:sacbakimiConnectionString %>" SelectCommand="SELECT [markaad�], [marka_id] FROM [markalar]"></asp:SqlDataSource>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                 <asp:Label ID="Label3" runat="server" Text="Kategori Ad�:"></asp:Label>
                         </td>
                         <td>
                 <asp:DropDownList ID="combokategori" CssClass="form-control" runat="server" Width="300px" DataSourceID="kategori" DataTextField="kategoriadi" DataValueField="kategori_id">
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="kategori" runat="server" ConnectionString="<%$ ConnectionStrings:sacbakimiConnectionString %>" SelectCommand="SELECT [kategori_id], [kategoriadi] FROM [kategoriler]"></asp:SqlDataSource>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                 <asp:Label ID="Label4" runat="server" Text="�r�n Fiyat�:"></asp:Label>
                         </td>
                         <td>
                 <asp:TextBox ID="txtfiyat" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                 <asp:Label ID="Label5" runat="server" Text="�r�n Adeti:"></asp:Label>
                         </td>
                         <td>
                 <asp:TextBox ID="txtadet" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                 <asp:Label ID="Label6" runat="server" Text="�r�n Detay�:"></asp:Label>
                         </td>
                         <td>
                 <asp:TextBox ID="txtdetay" CssClass="form-control" runat="server" Width="300px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                 <asp:Label ID="Label7" runat="server" Text="�r�n Resmi:"></asp:Label>
                         </td>
                         <td>
                 <asp:FileUpload CssClass="form-control" runat="server" Width="300px" ID="furesim" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">
                 <asp:Label ID="Label8" runat="server" style="text-align: right" Text="Durumu:"></asp:Label>
                         </td>
                         <td>
                 <asp:DropDownList ID="combodurumu" runat="server" CssClass="form-control" Width="300px">
                     <asp:ListItem Value="1">Aktif</asp:ListItem>
                     <asp:ListItem Value="2">Pasif</asp:ListItem>
                 </asp:DropDownList>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style10">&nbsp;</td>
                         <td>
                             <br />
                 <asp:Button ID="btng�ncelle" CssClass="btn btn-primary btn-block" runat="server" Text="G�ncelle" OnClick="Button1_Click" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="Label11" runat="server"></asp:Label>
                         </td>
                     </tr>
                 </table>
             </td>
             <td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Image ID="imgresim" runat="server" style="max-height:250px;max-width:250px"  />
                 <br />
                 <br />
     <asp:Label ID="Label12" runat="server"></asp:Label>
                 </td>
         </tr>
     </table>
     <br />
     <table class="w-100">
         <tr>
             <td class="auto-style17">
                 <br />
                 <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Toplu Aktif Yap" CssClass="btn btn-success btn-block" Width="135px" />
                 &nbsp;
             </td>
             <td>
                 <asp:Button ID="Button5" runat="server" CssClass="btn btn-danger" Text="Toplu Pasif Yap" Width="135px" OnClick="Button5_Click" />
             </td>
             <td class="auto-style18">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text="�r�n L�stele:"></asp:Label>
             </td>
             <td></td>
             <td class="auto-style13">
                 <asp:DropDownList ID="droplistele" runat="server" CssClass="form-control" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                     <asp:ListItem Value="0">T�m �r�nler</asp:ListItem>
                     <asp:ListItem Value="1">Aktif</asp:ListItem>
                     <asp:ListItem Value="2">Pasif</asp:ListItem>
                 </asp:DropDownList>
             </td>
             <td class="auto-style14">
                 &nbsp;</td>
             <td class="auto-style15">
                 <asp:TextBox ID="txtara" runat="server" CssClass="form-control" OnTextChanged="txtara_TextChanged" Width="300px"></asp:TextBox>
             </td>
             <td>
                 <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="Bul" OnClick="Button3_Click" />
             </td>
         </tr>
     </table>
     <br />
     <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
         <Columns>
             <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-danger" ButtonType="Button" >
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
             </asp:CommandField>
<asp:TemplateField>
    <HeaderTemplate>
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
    </HeaderTemplate>
    <ItemTemplate>
                 <asp:CheckBox ID="sec"  Width="30px" runat="server" OnCheckedChanged="sec_CheckedChanged2"/>
                
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
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sacbakimiConnectionString %>" SelectCommand="SELECT �.id, �.�r�nadi, m.markaad�, k.kategoriadi, �.fiyat, �.�r�ndetayi, �.�r�nadeti, �.resmi, �.durumu FROM �r�nler AS � INNER JOIN markalar AS m ON �.markakodu = m.marka_id INNER JOIN kategoriler AS k ON �.kategorikodu = k.kategori_id "></asp:SqlDataSource>
     <br />
     <br />
        

    




</asp:Content>

