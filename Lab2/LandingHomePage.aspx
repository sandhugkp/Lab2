<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="LandingHomePage.aspx.cs" Inherits="Lab2.LandingHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Jason DiLoreta & Daniel Giglio--%>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">

    <asp:Table ID="tblLandingPage" runat="server" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblUserLoggedIn" runat="server" Text="Text"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                 <asp:Button ID="btnLogout" runat="server" Text="LOG OUT" Width="115px" Height="37.5px" OnClick="btnLogout_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
