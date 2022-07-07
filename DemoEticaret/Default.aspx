<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DemoEticaret.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1150px;height:30px;">
        <tr style="background-color:#5f98f3">
            <td colspan="2" style="text-align:right" >
                <asp:Label ID="Label4" runat="server" style="text-align:left" Font-Bold="True"
                    Font-Italic="True" Font-Names="Bahnschrift SemiBold"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True"
                    Font-Names="Arial Rounded MT Bold" NavigateUrl="~/Login.aspx">Giriş yapmak için tıklayın</asp:HyperLink>
                <asp:Button ID="Button1" runat="server" Text="Çıkış" BackColor="#FF5050" 
                    BorderColor="White" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="Aqua" Height="27px" Width="105px" OnClick="Button1_Click" />
            </td>
            <td style="text-align:right">
                <asp:DropDownList ID="ProductCategories" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ProductCategories_SelectIndexChanged" BackColor="#5F98F3" Font-Bold="True" Font-Size="Medium" ForeColor="White"
                    ></asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="174px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/Images/searchbutton1.jpg" Width="25px" OnClick="ImageButton2_Click" />
            </td>
        </tr>
        </table>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductId"
            DataSourceID="SqlDataSource1" Height="293px" Width="310px" 
            RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:center; background-color:#f598f3">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="open sams Extrabold" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center;">
                            <asp:Image ID="Image1" runat="server" BorderColor="#5F98F3" BorderWidth="1px" Height="279px" Width="278px" ImageUrl='<%# Eval("Pimage") %>' />
                            <div class="stock">
                                &nbsp;Adet:&nbsp;
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Pquantity") %>'
                                    BackColor='<%# (int)Eval("Pquantity") <10 ? System.Drawing.Color.Red:System.Drawing.Color.Green %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center; background-color:#f598f3">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True"
                                Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="TL" Font-Bold="True"
                                Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td align="center">Adet
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center;">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="40px"
                                ImageUrl="~/Images/sepeteekle1.jpg" Width="160px" CommandArgument='<%# Eval("ProductId") %>' CommandName="AddToCart" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecordDBConnectionString %>"
       SelectCommand="SELECT [ProductId],[Pname],[Pimage],[Pprice],[Pquantity] from [Product1]"></asp:SqlDataSource>
</asp:Content>
