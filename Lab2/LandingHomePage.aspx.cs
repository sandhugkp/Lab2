using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

// Jason DiLoreta & Daniel Giglio

namespace Lab2
{
    public partial class LandingHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if statement - check to see is variable exists and has data
            if (Session["UserName"] != null)
            {
                // true condition - update lblUserLoggedIn to display validation of successful login to user.
                lblUserLoggedIn.ForeColor = Color.Green;
                lblUserLoggedIn.Font.Bold = true;
                // update lblUserLoggedIn to show to the user that they have successfully logged in (showing their username as well).
                lblUserLoggedIn.Text = "Successful Login for: " + Session["UserName"].ToString();
                
            }
            else
            {
                // false condition - create a new variable to store in memory and redirect back to the LoginPage
                Session["InvalidUse"] = "ERROR: You must login to access application.";
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // instantly delete users session/variable on the Web Server.
            Session.Abandon();
            // redirect back to login page.
            // add parameters to the URL for use in LoginPage .cs file
            Response.Redirect("LoginPage.aspx?loggedout=true");
        }

        protected void btnCustomerRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerRegistration.aspx");
        }
    }
}