<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="DemoEticaret.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="navbar" style="border-width:3px; border-color:#333333;height:auto">
            <table style="width:700px; height:390px; background-color:#5f98f3;"  align="center">
                <tr>
                    <td align="center" width="%50" colspan="2">
                        <h1> Ürün Ekle</h1>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td align="center" width="%50">
                        <h3> 
                            Kategori:
                        </h3>
                    </td>
                    <td width="%50"> 
                        <asp:DropDownList ID="DropDownList1" runat="server"
                            DataSourceID="SqlDataSource1" DataTextField="CategoryName"
                            DataValueField="CategoryName"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="DropDownList1" Display="Dynamic"
                            ErrorMessage="Kategori zorunludur" ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%">
                        <h3>
                            Ürün Adı:
                        </h3>
                    </td>
                    <td width="50%">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txtName" Display="Dynamic"
                            ErrorMessage="Ürün adı zorunludur" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%">
                        <h3>Ürün Açıklaması</h3>
                    </td>
                    <td width="50%">
                        <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="txtDesc" Display="Dynamic"
                            ErrorMessage="Ürün Açıklaması Gereklidir" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%">
                        <h3>Resim:</h3>
                    </td>
                    <td width="50%">
                        <asp:FileUpload ID="imageUpload" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="imageUpload" Display="Dynamic"
                            ErrorMessage="Ürün Resmi Zorunludur" ForeColor="red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%">
                        <h3>
                            Ürün Fiyatı(TL):
                        </h3>
                    </td>
                    <td width="50%">
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="txtPrice" Display="Dynamic"
                            ErrorMessage="Ürün Fiyatı Zorunludur" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Fiyat Geçersiz"
                            ForeColor="Red" ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td width="50%" align="center">
                        <h3>Ürün Adedi:</h3>
                    </td>
                    <td width="50%">
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ControlToValidate="txtQuantity" Display="Dynamic"
                        ErrorMessage="Ürün Miktarı Zorunludur" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ControlToValidate="txtQuantity" Display="Dynamic"
                        ErrorMessage="Ürün Miktarı Geçerli Değil" ForeColor="Red"
                        ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td align="center" width="50%" colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Ekle" Font-Bold="true"
                            ForeColor="Black" Height="36px" Width="88px" OnClick="btnSubmit_Click" />                      
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Hatalar" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:RecordDBConnectionString %>"
                SelectCommand="SELECT   * FROM [Category1]"></asp:SqlDataSource>
        </div>


</asp:Content>


       

