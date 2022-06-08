<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.master" AutoEventWireup="true" CodeFile="sifredegistir.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 71px;
        }
        .auto-style3 {
            width: 438px;
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <div class="row">

        <div class="col-md-12" style="text-align: center; color: #cf3a56;">
            <h3>ŞİFRE DEĞİŞTİR</h3>
            <hr />
        </div>

    </div>
    <br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Şifre:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt1" runat="server" CssClass="form-control" Width="300px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Tekrar:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt2" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" Text="Değiştir" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>

