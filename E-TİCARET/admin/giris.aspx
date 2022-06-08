<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf8" />
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <style type="text/css">
        .auto-style1 {
            color: #0066FF;
            text-align: center;
            font-size: xx-large;
            height: 208px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 365px;
        }
        .auto-style4 {
            width: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong style="font-size: larger">Admin Paneli<br />
            <hr />
        <br />
        <br />
        <br />
        <br />
        </strong>
    
    </div>
        <table class="auto-style2">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Admin:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" placeholder="Admin" runat="server" Width="300px" CssClass="form-control is-valid"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" placeholder="Passowrd" runat="server" Width="300px" CssClass="form-control is-valid" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <br />
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Giriş" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" ></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
