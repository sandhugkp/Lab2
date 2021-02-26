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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if statement - check to see if variable passed in parameterized URL is equal to "true" string value.
            if (Request.QueryString.Get("loggedout") == "true")
            {
                // true condition - update lblStatus showing successful logout for user.
                lblStatus.ForeColor = Color.Green;
                lblStatus.Font.Bold = false;
                lblStatus.Text = "User has successfully logged out of the application.";
            }
            // if statement - if "loggedout" does not exist and "InvalidUse" exists
            if (Session["InvalidUse"] != null)
            {
                // true condition - update lblStatus to show invalid access to the application.
                lblStatus.ForeColor = Color.Red;
                lblStatus.Font.Bold = true;
                lblStatus.Text = Session["InvalidUse"].ToString();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Create strings for username and password
            string username = "ezelljd";
            string password = "dukedog";

            // if statement - verify that input(s) passed validation controls
            if (Page.IsValid)
            {
                // if statement - check to see if username and password TextBox values are equivalent to string values declared above.
                if (String.Equals(username, txtUsername.Text) && String.Equals(password, txtPassword.Text))
                {
                    // true condition - assign UserName variable into memory and give it the value of text in username TextBox.
                    Session["UserName"] = txtUsername.Text;
                    // redirect to Landing Page
                    Response.Redirect("LandingHomePage.aspx");
                }
                // false condition - update lblStatus to show unsuccessful login attempt.
                else
                {
                    lblStatus.ForeColor = Color.Red;
                    lblStatus.Font.Bold = true;
                    lblStatus.Text = "Unsuccessful Login Attempt: Either the Username and/or Password are incorrect.";
                }
            }
        }
    }
}