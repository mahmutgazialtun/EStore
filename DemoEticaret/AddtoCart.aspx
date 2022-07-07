<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="DemoEticaret.AddtoCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="aqua">
    <form id="form1" runat="server">
        <div align="center" style="margin:0 auto;">
            <h2 style ="text-decoration : underline overline blink; color #5f98f3"> Sepetiniz</h2>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="collonna mt" Font-Size="X-Large" NavigateUrl="~/Default.aspx">Alışverişe devam et</asp:HyperLink>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF6699" BorderColor="#333333" BorderWidth="5px" EmptyDataText="Hemen sepetinize ürün ekleyin" Font-Bold="True" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sıra no">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pid" HeaderText="Ürün ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Ürün Fotoğrafı">
                        <ControlStyle Height="300px" Width="340px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pname" HeaderText="Ürün Adı">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Fiyat">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pquantity" HeaderText="Adet">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ptotalprice" HeaderText="Toplam Fiyat">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Sil" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#0666FF" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="DarkOrchid" ForeColor="White" />
            </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" BackColor="#FF6699" BorderColor="#0A2C2A" BorderStyle="Ridge" Font-Bold="True" Font-Size="Large" Height="46px" Width="135px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
