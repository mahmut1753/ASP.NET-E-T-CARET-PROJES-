<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="siparişliste.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf8" />
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="table-responsive">
        <br />
        <h2>SİPARİŞ LİSTESİ</h2>
        <hr />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="table table-striped" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="siparis_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="siparis_id" HeaderText="siparis_id" ReadOnly="True" SortExpression="siparis_id" />
                <asp:BoundField DataField="sepetkod" HeaderText="sepetkod" SortExpression="sepetkod" />
                <asp:BoundField DataField="siparisdurumu" HeaderText="siparisdurumu" SortExpression="siparisdurumu" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eticaretConnectionString %>" DeleteCommand="DELETE FROM [siparis] WHERE [siparis_id] = @siparis_id" InsertCommand="INSERT INTO [siparis] ([sepetkod], [siparisdurumu]) VALUES (@sepetkod, @siparisdurumu)" ProviderName="<%$ ConnectionStrings:eticaretConnectionString.ProviderName %>" SelectCommand="SELECT [siparis_id], [sepetkod], [siparisdurumu] FROM [siparis]" UpdateCommand="UPDATE [siparis] SET [sepetkod] = @sepetkod, [siparisdurumu] = @siparisdurumu WHERE [siparis_id] = @siparis_id">
            <DeleteParameters>
                <asp:Parameter Name="siparis_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sepetkod" Type="Int32" />
                <asp:Parameter Name="siparisdurumu" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sepetkod" Type="Int32" />
                <asp:Parameter Name="siparisdurumu" Type="Int32" />
                <asp:Parameter Name="siparis_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </div>
</asp:Content>

