using System;

namespace AcademicLeaveManagement
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Login credentials
            if (username == "santhosh" && password == "12345")
            {
                // Create Session
                Session["Username"] = "Santhosh";

                // Create Cookie
                Response.Cookies["Username"].Value = "Santhosh";
                Response.Cookies["Username"].Expires =
                    DateTime.Now.AddDays(7);

                // Redirect to Leave Page
                Response.Redirect("Leave.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid ID or Password!";
            }
        }
    }
}
