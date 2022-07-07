<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DemoEticaret.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 49px;
        }
        .auto-style2 {
            height: 49px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <table align="center" style="width: 750px; height: 744px; background-color: #00FFFF">
        <tr>
            <td colspan="2" align="center">
                <h2>Kayıt Ol</h2>
            </td>
            
        </tr>
        <tr>
            <td style="width:50%">
                <b>Ad :</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="185px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Adınızı Giriniz" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Characters " ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <b>Soyad :</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="185px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Soyadınızı Giriniz" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only Characters " ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <b>E Mail :</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="185px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="E Mail Giriniz" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <b>Cinsiyet:</b>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="190px">
                    <asp:ListItem>Cinsiyet</asp:ListItem>
                    <asp:ListItem>Kadın</asp:ListItem>
                    <asp:ListItem>Erkek</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Cinsiyet Seçiniz" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <b>Adres:</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="44px" Width="185px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Adresinizi Giriniz" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <b>Telefon Numarası :</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="185px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Telefon Numaranızı Giriniz" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Phone Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <b>Şifre :</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="22px" Width="185px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Şifre Giriniz" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <b>Şifre Tekrar:</b>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox7" runat="server" Height="22px" Width="185px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Şifrenizi Tekrar Giriniz" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Şifreler Uyuşmadı" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2"> 
                <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" Font-Bold="True"
                    Font-Size="Larger" Height="47px" Width="198px" OnClick="Button1_Click" />
            </td>      
        </tr>
        <tr>
            <td  colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>            
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
