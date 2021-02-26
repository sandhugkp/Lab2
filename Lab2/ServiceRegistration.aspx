<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="ServiceRegistration.aspx.cs" Inherits="Lab2.ServiceRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Jason DiLoreta & Daniel Giglio--%>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    
    <asp:Table ID="tblServiceRegistration" runat="server" HorizontalAlign="Center">
        <%--Table Row for Page Heading--%>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" Font-Bold="true" Font-Size="X-Large">
                <asp:Label ID="lblPageHeader" runat="server" Text="Service Registration" CssClass="applicationAccess"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Service Type--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblServiceType" runat="server" Text="Service Type"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlServiceType" runat="server" Width="125px">
                    <asp:ListItem Text="" Value=""></asp:ListItem>
                    <asp:ListItem Text="Move" Value="Move"></asp:ListItem>
                    <asp:ListItem Text="Auction" Value="Auction"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Service Description--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblServiceDescription" runat="server" Text="Service Description"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtServiceDescription" runat="server" Height="100px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator 
                    ID="reqServiceDescription" 
                    ControlToValidate="txtServiceDescription" 
                    Text="Please enter a Service Description" 
                    ForeColor="Red" 
                    Font-Bold="true" 
                    runat="server"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Miscellaneous Notes--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblMiscNotes" runat="server" Text="Miscellaneous Notes"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtMiscNotes" runat="server" Height="100px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator 
                    ID="reqMiscNotes" 
                    ControlToValidate="txtMiscNotes" 
                    Text="Please enter Miscellaneous Notes" 
                    ForeColor="Red" 
                    Font-Bold="true" s
                    runat="server"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Buttons--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="btnClear" runat="server" Text="CLEAR" Width="115px" Height="37.5px" OnClick="btnClear_Click" CausesValidation="false" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnPopulate" runat="server" Text="POPULATE" Width="115px" Height="37.5px" OnClick="btnPopulate_Click" CausesValidation="false" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnSave" runat="server" Text="SAVE" Width="115px" Height="37.5px" OnClick="btnSave_Click" CausesValidation="true" />
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>
</asp:Content>
