<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="EditServiceTicket.aspx.cs" Inherits="Lab2.EditServiceTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Jason DiLoreta & Daniel Giglio--%>


<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <asp:Table ID="tblEditTicket" runat="server" HorizontalAlign="Center">
         <%--Table Row for Page Heading--%>
         <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell ColumnSpan="5" HorizontalAlign="Center" Font-Bold="true" Font-Size="X-Large">
                <asp:Label ID="lblPageHeader" runat="server" Text="Edit Service Ticket" CssClass="applicationAccess"></asp:Label>
            </asp:TableCell>
         </asp:TableRow>
        <%--Table Row for Labels--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblSelectService" runat="server" Text="Select a Service ID"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblTicketStatus" runat="server" Text="Ticket Status"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblOpenDate" runat="server" Text="Ticket Open Date"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblCurrentEmp" runat="server" Text="Current Employee ID"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblCustName" runat="server" Text="Customer ID"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for TextBoxes and DDL--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:DropDownList ID="ddlServiceID" Width="175px" AutoPostBack="true" OnSelectedIndexChanged="ddlServiceID_SelectedIndexChanged" runat="server"></asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtTicketStatus" runat="server" Width="175px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtTicketOpenDate" runat="server" Width="175px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtInitiatingEmployee" runat="server" Width="175px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtCustomerID" runat="server" Width="175px"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Note Header--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblNoteHeader" runat="server" Text="Note Header"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Note Header TextBox--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:TextBox ID="txtNoteHeader" runat="server" Width="175px"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Note Body Header--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblNoteBody" runat="server" Text="Note Body"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Note Body TextBox--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="txtNoteBody" Width="175px" Height="200px" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Save Button--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Button ID="btnSave" runat="server" Text="SAVE TICKET" Width="115px" Height="37.5px" OnClick="btnSave_Click" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnSaveNote" runat="server" Text="SAVE NOTE" Width="115px" Height="37.5px" OnClick="btnSaveNote_Click" />
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>
</asp:Content>
