<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoEticaret.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 500px;
            width: 467px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <table align="center" class="auto-style1" style="background-color: #66FF99">
        <tr>
            <td colspan="2" align="center">
                <h2>Giriş Sayfası</h2>
            </td>
            
        </tr>
        <tr>
            <td align="center" style="width:50%">
                <b>E Mail:</b>

            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="211px" BackColor="#66FF99" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width:50%">
                <b>Şifre:</b>

            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="211px" BackColor="#66FF99" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Height="38px" Text="Giriş" Width="146px" BackColor="#66FF99" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Hemen Kaydol</asp:LinkButton>
            </td>
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
