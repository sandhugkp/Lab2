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
    public partial class ServiceRegistration : System.Web.UI.Page
    {

        private string serviceType;
        private string serviceDescription;
        private string miscNotes;

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

        protected void btnClear_Click(object sender, EventArgs e)
        {

            ddlServiceType.SelectedValue = "";
            txtServiceDescription.Text = "";
            txtMiscNotes.Text = "";

        }

        protected void btnPopulate_Click(object sender, EventArgs e)
        {

            ddlServiceType.SelectedValue = "0";
            txtServiceDescription.Text = "2 TVs, 2 Couches, 1 Bedroom Set.";
            txtMiscNotes.Text = "23 Miles Used";

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                //try
                //{
                    serviceType = ddlServiceType.Text;
                    serviceDescription = txtServiceDescription.Text;
                    miscNotes = txtMiscNotes.Text;

                    string serviceQuery = "INSERT INTO Service (ServiceType, ServiceDescription, MiscellaneousNotes) VALUES ('" + serviceType + "', '" + serviceDescription + "', '" + miscNotes + "')";

                    SqlConnection sqlServiceConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Lab2"].ConnectionString);
                    SqlCommand serviceCommand = new SqlCommand(serviceQuery, sqlServiceConnection);
                    serviceCommand.Connection.Open();
                    serviceCommand.ExecuteNonQuery();
                    serviceCommand.Connection.Close();

                }
                //catch (Exception x)
                //{
                //    Console.WriteLine("Exception: Occured while writing to the table: " + x.Message);
                //}
            }
        }
    }
