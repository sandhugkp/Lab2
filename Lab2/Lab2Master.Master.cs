using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Jason DiLoreta & Daniel Giglio

namespace Lab2
{
    public partial class Lab2Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if statement - check to see if variable exists in memory and is not null
            if (Session["UserName"] != null)
            {
                // true condition - update lblCurrentUser to value of UserName variable
                lblCurrentUser.Text = "Current User: " + Session["UserName"].ToString();
            }
            // else condition - place "No Current User Logged In" in lblCurrentUser
            else
            {
                lblCurrentUser.Text = "No Current User Logged In.";
            }
        }
    }
}