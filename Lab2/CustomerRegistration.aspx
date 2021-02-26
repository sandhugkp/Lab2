<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2Master.Master" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="Lab2.CustomerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Jason DiLoreta & Daniel Giglio--%>

<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <div>
        <asp:Table ID="tblCustomerRegistration" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center" Font-Bold="true" Font-Size="X-Large">
                    <asp:Label ID="lblPageHeader" runat="server" Text="Customer Registration" CssClass="applicationAccess"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for First Name--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqFirstName" 
                        ControlToValidate="txtFirstName" 
                        Text="Please enter a First Name." 
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Last Name--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqLastName" 
                        ControlToValidate="txtLastName" 
                        Text="Please enter a Last Name."
                        Font-Bold="true" 
                        ForeColor="Red"
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Initial Contact--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblIntialContact" runat="server" Text="Form of Initial Contact"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlInitialContact" runat="server" Width="125px" OnSelectedIndexChanged="ddlInitialContact_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="" Value="0"></asp:ListItem>
                        <asp:ListItem Text="In Person" Value="In Person"></asp:ListItem>
                        <asp:ListItem Text="By Phone" Value="By Phone"></asp:ListItem>
                        <asp:ListItem Text="Email" Value="Email"></asp:ListItem>
                        <asp:ListItem Text="Text" Value="Text"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Other Form of Initial Contact--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblOtherContact" runat="server" Text="Other Form of Contact"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtOtherContact" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqOtherContact" 
                        ControlToValidate="txtOtherContact" 
                        Text="Please enter Other Form of Contact."
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Hearing About Company--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblHearingCompany" runat="server" Text="How They Heard About Midland"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtHearingCompany" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqHearingCompany" 
                        ControlToValidate="txtHearingCompany" 
                        Text="Please enter Information."
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Phone Number Type--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblPhoneType" runat="server" Text="Phone Type"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlPhoneType" runat="server" Width="125px">
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem Text="Home" Value="Home"></asp:ListItem>
                        <asp:ListItem Text="Cell" Value="Cell"></asp:ListItem>
                        <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Phone Number--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqPhoneNumber" 
                        ControlToValidate="txtPhoneNumber" 
                        Text="Please enter a Phone Number." 
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Email Address--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqEmailAddress" 
                        ControlToValidate="txtEmailAddress" 
                        Text="Please enter an Email Address" 
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Service Interested In--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblServiceInterest" runat="server" Text="Service of Interest"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlServiceInterest" runat="server" Width="125px" AutoPostBack="true" OnSelectedIndexChanged="ddlServiceInterest_SelectedIndexChanged">
                        <asp:ListItem Text="" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Moving" Value="Move"></asp:ListItem>
                        <asp:ListItem Text="Auction" Value="Auction"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for From Address--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="fromAddress" runat="server" Text="From Address"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFromAddress" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqFromAddress" 
                        ControlToValidate="txtFromAddress" 
                        Text="Please enter a From Address." 
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for To Address--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblToAddress" runat="server" Text="To Address"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtToAddress" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqToAddress" 
                        ControlToValidate="txtToAddress" 
                        Text="Please enter a To Address." 
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Item Location Address--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblItemLocationAddress" runat="server" Text="Item(s) Location Address"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtItemLocationAddress" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqItemLocationAddress" 
                        ControlToValidate="txtItemLocationAddress" 
                        Text="Please enter an Address." 
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Deadline Type--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblDeadlineType" runat="server" Text="Date Deadline Type"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlDeadlineType" runat="server" Width="125px" OnSelectedIndexChanged="ddlDeadlineType_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="" Value=""></asp:ListItem>
                        <asp:ListItem Text="Specific Date" Value="Specific Date"></asp:ListItem>
                        <asp:ListItem Text="Range of Dates" Value="Range of Dates"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Specific Date--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSpecificDate" runat="server" Text="Specific Date"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSpecificDate" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqSpecificDate" 
                        ControlToValidate="txtSpecificDate" 
                        Text="Please enter a Date." 
                        Font-Bold="true"
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Range of Dates--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblDateOne" runat="server" Text="First Available Date"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDateOne" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqDateOne" 
                        ControlToValidate="txtDateOne"
                        Text="Please enter First Available Date." 
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Range of Dates--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblDateTwo" runat="server" Text="Last Available Date"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDateTwo" runat="server" Enabled="false"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator
                        ID="reqDateTwo"
                        ControlToValidate="txtDateTwo"
                        Text="Please enter Last Available Date."
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Time--%>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblTime" runat="server" Text="Time of Deadline"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator 
                        ID="reqTime" 
                        ControlToValidate="txtTime" 
                        Text="Please enter Time of Deadline." 
                        Font-Bold="true" 
                        ForeColor="Red" 
                        runat="server"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <%--Table Row for Buttons--%>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="btnClear" runat="server" Text="CLEAR" OnClick="btnClear_Click" Height="37.5px" Width="115px" CausesValidation="false" />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="btnPopulate" runat="server" Text="POPULATE" OnClick="btnPopulate_Click" Height="37.5px" Width="115px" CausesValidation="false" />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="btnSave" runat="server" Text="SAVE" OnClick="btnSave_Click" Height="37.5px" Width="115px" CausesValidation="true" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
