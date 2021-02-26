<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Lab2.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Jason DiLoreta & Daniel Giglio--%>

<asp:Content ID="pageContent" ContentPlaceHolderID="cph1" runat="server">
    <br />
    <br />
    <asp:Table ID="tblLoginForm" runat="server" HorizontalAlign="Center">
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" Font-Bold="true" Font-Size="X-Large">
                <asp:Label ID="lblPageHeader" runat="server" Text="Application Access" CssClass="applicationAccess"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Username Label and TextBox (along with RequiredFieldValidator) (adjusted Width Size)--%>
        <asp:TableRow Width="100px" HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <%--Required Field Validator for txtUsername--%>
                <asp:RequiredFieldValidator 
                    ID="reqUsername" 
                    ControlToValidate="txtUsername" 
                    Text="Please enter a Username." 
                    Font-Bold="true" 
                    ForeColor="Red"
                    runat="server"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Password Label and TextBox (along with RequiredFieldValidator--%>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <%--Required Field Validator for txtPassword--%>
                <asp:RequiredFieldValidator 
                    ID="reqPassword" 
                    ControlToValidate="txtPassword" 
                    Text="Please enter a Password." 
                    Font-Bold="true" 
                    ForeColor="Red" 
                    runat="server"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Login Button--%>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <%--Label for Status of Login - to be updated based on C# statements--%>
    <asp:Label ID="lblStatus" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>


</asp:Content>
