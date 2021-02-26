using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

// Jason DiLoreta & Daniel Giglio

namespace Lab2
{
    public partial class CustomerRegistration : System.Web.UI.Page
    {

        private string firstName;
        private string lastName;
        private string initialContact;
        private string otherContact;
        private string hearingCompany;
        private string phoneType;
        private string phoneNumber;
        private string emailAddress;
        private string serviceInterest;
        private string startAddress;
        private string toAddress;
        private string itemLocationAddress;
        private string deadlineType;
        private string specificDate;
        private string dateOne;
        private string dateTwo;
        private string time;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {

            }
            else
            {
                Session["InvalidUse"] = "ERROR: You must login to access application.";
                Response.Redirect("LoginPage.aspx");
            }

        }

        protected void ddlInitialContact_SelectedIndexChanged(object sender, EventArgs e)
        {
            // if statement - see if SelectedValue = 5 (equivalent of Other being selected)
            if (ddlInitialContact.SelectedValue == "Other")
            {
                // true condition - enable textBox
                txtOtherContact.Enabled = true;
            }
            else
            {
                // false condition - disable textBox
                txtOtherContact.Enabled = false;
                reqOtherContact.Enabled = false;
            }

        }

        protected void ddlDeadlineType_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (ddlDeadlineType.SelectedValue == "Specific Date")
            {
                txtSpecificDate.Enabled = true;
                reqDateOne.Enabled = false;
                reqDateTwo.Enabled = false;
            }
            else
            {
                txtSpecificDate.Enabled = false;
            }
            if (ddlDeadlineType.SelectedValue == "Range of Dates")
            {
                txtDateOne.Enabled = true;
                txtDateTwo.Enabled = true;
                reqSpecificDate.Enabled = false;
                reqDateOne.Enabled = true;
                reqDateTwo.Enabled = true;
            }
            else
            {
                txtDateOne.Enabled = false;
                txtDateTwo.Enabled = false;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            ddlInitialContact.SelectedValue = "0";
            txtOtherContact.Text = "";
            txtHearingCompany.Text = "";
            ddlPhoneType.SelectedValue = "";
            txtPhoneNumber.Text = "";
            txtEmailAddress.Text = "";
            ddlServiceInterest.SelectedValue = "0";
            txtFromAddress.Text = "";
            txtToAddress.Text = "";
            txtItemLocationAddress.Text = "";
            ddlDeadlineType.SelectedValue = "";
            txtSpecificDate.Text = "";
            txtDateOne.Text = "";
            txtDateTwo.Text = "";
            txtTime.Text = "";

        }

        protected void btnPopulate_Click(object sender, EventArgs e)
        {
                txtFirstName.Text = "David";
                txtLastName.Text = "Smith";
                ddlInitialContact.SelectedValue = "In Person";
                txtHearingCompany.Text = "Yellowpages";
                ddlPhoneType.SelectedValue = "Home";
                txtPhoneNumber.Text = "703-123-1234";
            txtEmailAddress.Text = "dsmith123@gmail.com";
            ddlServiceInterest.SelectedValue = "Move";
            txtFromAddress.Text = "123 S Main St";
            txtToAddress.Text = "225 S Liberty St";
            ddlDeadlineType.SelectedValue = "Specific Date";
            txtSpecificDate.Text = "02/27/2021";
            txtTime.Text = "1100";
            reqOtherContact.Enabled = false;
            reqItemLocationAddress.Enabled = false;
            reqDateOne.Enabled = false;
            reqDateTwo.Enabled = false;

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                try
                {

                    firstName = txtFirstName.Text;
                    lastName = txtLastName.Text;
                    initialContact = ddlInitialContact.Text;
                    otherContact = txtOtherContact.Text;
                    hearingCompany = txtHearingCompany.Text;
                    phoneType = ddlPhoneType.Text;
                    phoneNumber = txtPhoneNumber.Text;
                    emailAddress = txtEmailAddress.Text;
                    serviceInterest = ddlServiceInterest.Text;
                    startAddress = txtFromAddress.Text;
                    toAddress = txtToAddress.Text;
                    itemLocationAddress = txtItemLocationAddress.Text;
                    deadlineType = ddlDeadlineType.Text;
                    specificDate = txtSpecificDate.Text;
                    dateOne = txtDateOne.Text;
                    dateTwo = txtDateTwo.Text;
                    time = txtTime.Text;

                    string insertCustomerQuery = "INSERT into Customer (FirstName, LastName, InitialContact, HearInfo, PhoneNumberType, PhoneNumber, ServiceOfInterest, LocationAddress, FromAddress, ToAddress, EmailAddress, SpecificDate," +
                        "FirstDate, SecondDate, TimeOfDeadline) VALUES ('" + firstName + "', '" + lastName + "', '" + initialContact + "', '" + hearingCompany + "', '" + phoneType + "', '" +
                        phoneNumber + "', '" + serviceInterest + "', '" + itemLocationAddress + "', '" + startAddress + "', '" + toAddress + "', '" + emailAddress + "', '" + specificDate + "', '" +
                        dateOne + "', '" + dateTwo + "', '" + time + "')";

                    SqlConnection sqlCustomerConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Lab2"].ConnectionString);
                    SqlCommand customerCommand = new SqlCommand(insertCustomerQuery, sqlCustomerConnection);
                    customerCommand.Connection.Open();
                    customerCommand.ExecuteNonQuery();
                    customerCommand.Connection.Close();
                }
                catch (Exception x)
                {
                    Console.WriteLine("Exception: Occured while writing to the table: " + x.Message);
                }

            }
        }

        protected void ddlServiceInterest_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlServiceInterest.SelectedValue == "Move")
            {
                txtFromAddress.Enabled = true;
                txtToAddress.Enabled = true;
                txtItemLocationAddress.Enabled = false;
                reqFromAddress.Enabled = true;
                reqToAddress.Enabled = true;
                reqItemLocationAddress.Enabled = false;
            }
            if (ddlServiceInterest.SelectedValue == "Auction")
            {
                txtFromAddress.Enabled = false;
                txtToAddress.Enabled = false;
                txtItemLocationAddress.Enabled = true;
                reqFromAddress.Enabled = false;
                reqToAddress.Enabled = false;
                reqItemLocationAddress.Enabled = true;
            }
        }
    }
}
