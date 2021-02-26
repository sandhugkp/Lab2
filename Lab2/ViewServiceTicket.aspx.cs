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
    public partial class ViewServiceTicket : System.Web.UI.Page
    {
        private string serviceID;
        private string ticketStatus;
        private string ticketOpenDate;
        private string employeeName;
        private string customerID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!Page.IsPostBack)
                {
                    ddlServiceID.Items.Add(new ListItem("Select ServiceID", "0"));


                    // SqlConnection Statement
                    SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["Lab2"].ConnectionString);

                    using (sqlConnect)
                    {
                        // SqlCommand Statement
                        SqlCommand stCommand = new SqlCommand("SELECT ServiceID, ServiceID as ServiceIDs FROM ServiceTicket", sqlConnect);
                        // Open Connection
                        sqlConnect.Open();
                        // Execute Reader
                        ddlServiceID.DataSource = stCommand.ExecuteReader();
                        ddlServiceID.DataTextField = "ServiceIDs";
                        ddlServiceID.DataValueField = "ServiceID";
                        // DataBind
                        ddlServiceID.DataBind();

                    }
                }

            }
            else
            {
                Session["InvalidUse"] = "ERROR: You must login to access application.";
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void ddlServiceID_SelectedIndexChanged(object sender, EventArgs e)
        {
            serviceID = ddlServiceID.SelectedValue;

            // string variables
            string stringTicketStatus;
            string stringOpenDate;
            string stringInitiatingEmployee;
            string stringCustomerID;
            string stringEmployeeID;
            
            // SqlConnection Statement
            SqlConnection sqlSTConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["Lab2"].ConnectionString);
            // Open Connection
            sqlSTConnect.Open();

            // SqlCommand Statement
            SqlCommand statusCommand = new SqlCommand("SELECT TicketStatus FROM ServiceTicket WHERE ServiceID = " + serviceID, sqlSTConnect);
            // Utilize SqlDataAdapter
            SqlDataAdapter dataAdapter = new SqlDataAdapter(statusCommand);
            stringTicketStatus = Convert.ToString(statusCommand.ExecuteScalar());
            txtTicketStatus.Text = stringTicketStatus.ToString().Trim();

            // SqlCommand Statement
            SqlCommand openDateCommand = new SqlCommand("SELECT TicketOpenDate FROM ServiceTicket WHERE ServiceID = " + serviceID, sqlSTConnect);
            // Utilize SqlDataAdapter
            SqlDataAdapter dataAdapterDate = new SqlDataAdapter(openDateCommand);
            stringOpenDate = Convert.ToString(openDateCommand.ExecuteScalar());
            txtTicketOpenDate.Text = stringOpenDate.ToString().Trim();

            // SqlCommand Statement 
            SqlCommand initializingEmployeeCommand = new SqlCommand("SELECT InitiatingEmployee FROM ServiceTicket WHERE ServiceID = " + serviceID, sqlSTConnect);
            // Utilize SqlDataAdapter
            SqlDataAdapter dataAdapterInEmployee = new SqlDataAdapter(initializingEmployeeCommand);
            stringInitiatingEmployee = Convert.ToString(initializingEmployeeCommand.ExecuteScalar());
            txtInitiatingEmployee.Text = stringInitiatingEmployee.ToString().Trim();

            // SqlCommand Statement
            SqlCommand customerIDCommand = new SqlCommand("SELECT CustomerID FROM ServiceTicket WHERE ServiceID = " + serviceID, sqlSTConnect);
            // Utilize SqlDataAdapter
            SqlDataAdapter dataAdapterCustomerID = new SqlDataAdapter(customerIDCommand);
            stringCustomerID = Convert.ToString(customerIDCommand.ExecuteScalar());
            txtCustomerID.Text = stringCustomerID.ToString().Trim();

            // SqlCommand Statement
            SqlCommand employeeIDCommand = new SqlCommand("SELECT InitiatingEmployee FROM ServiceTicket WHERE ServiceID = " + serviceID, sqlSTConnect);
            // Utilize SqlDataAdapter
            SqlDataAdapter dataAdapterEmpID = new SqlDataAdapter(employeeIDCommand);
            stringEmployeeID = Convert.ToString(employeeIDCommand.ExecuteScalar());
            txtHistoryEmployee.Text = stringEmployeeID.ToString().Trim();
            

        }
    }
}