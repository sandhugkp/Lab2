<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="ViewServiceTicket.aspx.cs" Inherits="Lab2.ViewServiceTicket" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Jason DiLoreta & Daniel Giglio--%>


<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <asp:Table ID="tblViewServiceTicket" runat="server" HorizontalAlign="Center">
        <%--Table Row for Page Heading--%>
         <asp:TableRow>
            <asp:TableCell ColumnSpan="5" HorizontalAlign="Center" Font-Bold="true" Font-Size="X-Large">
                <asp:Label ID="lblPageHeader" runat="server" Text="View Service Ticket" CssClass="applicationAccess"></asp:Label>
            </asp:TableCell>
         </asp:TableRow>
        <%--Table Row for Labels--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblServiceID" runat="server" Text="Select a Service ID"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblTicketStatus" runat="server" Text="Ticket Status"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblTicketOpenDate" runat="server" Text="Ticket Open Date"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblEmployeeName" runat="server" Text="Initiating Employee Name"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblCustomerName" runat="server" Text="Customer Name"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for DDL and TextBox--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:DropDownList ID="ddlServiceID" runat="server" Width="175px" OnSelectedIndexChanged="ddlServiceID_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
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
        <%--Table Row for ListBoxes Titles--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblLBAllEmpID" runat="server" Text="All Employee IDs"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblEmpForTicket" runat="server" Text="Employee Associations"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Employee ListBoxes--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:ListBox ID="ListBox1" DataSourceID="srcAllEmp" DataTextField="EmployeeID" Width="175px" runat="server" AutoPostBack="true"></asp:ListBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ListBox ID="lbAllEmpName" DataSourceID="srcAllEmpName" DataTextField="EmployeeName" Width="175px" runat="server" AutoPostBack="true"></asp:ListBox>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Customer Titles--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblCustomerID" runat="server" Text="All Customer IDs"></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblAllCustomerName" runat="server" Text="Customer Associations"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for Customer ListBoxes--%>
        <asp:TableRow>
            <asp:TableCell>
                <asp:ListBox ID="lbAllCustomerIDs" DataSourceID="srcAllCust" DataTextField="CustomerID" Width="175px" runat="server" AutoPostBack="true"></asp:ListBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ListBox ID="lbAllCustName" DataSourceID="srcAllCustName" DataTextField="CustomerName" Width="175px" AutoPostBack="true" runat="server"></asp:ListBox>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for History of Employees Label--%>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblHistoryEmployee" runat="server" Text="History of Employees"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <%--Table Row for History of Employees ListBox--%>
        <asp:TableRow>
            <asp:TableCell>
                <%--<asp:ListBox ID="lbHistoryEmployee" runat="server" Width="175px"></asp:ListBox>--%>
                <asp:TextBox ID="txtHistoryEmployee" runat="server" Width="175px" Height="200px"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <%--All DataSources for Above ListBoxes--%>
    <asp:SqlDataSource 
        ID="srcAllEmp" 
        ConnectionString="Server=Localhost;Database=Lab2;Trusted_Connection=Yes;" 
        SelectCommand="SELECT EmployeeID FROM Employee" 
        runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource 
        ID="srcAllEmpName" 
        ConnectionString="Server=Localhost;Database=Lab2;Trusted_Connection=Yes;" 
        SelectCommand="SELECT FirstName + ' ' + LastName as EmployeeName from Employee" 
        runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource 
        ID="srcAllCust" 
        ConnectionString="Server=Localhost;Database=Lab2;Trusted_Connection=Yes;" 
        SelectCommand="SELECT CustomerID from Customer" 
        runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource 
        ID="srcAllCustName" 
        ConnectionString="Server=Localhost;Database=Lab2;Trusted_Connection=Yes;" 
        SelectCommand="SELECT FirstName + ' ' + LastName as CustomerName from Customer;" 
        runat="server"></asp:SqlDataSource>
</asp:Content>
