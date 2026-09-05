using System;

namespace AcademicLeaveManagement
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check whether user is logged in
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            // Display welcome message
            if (!IsPostBack)
            {
                lblWelcome.Text =
                    "Welcome " + Session["Username"].ToString() + "!";
            }
        }


        protected void btnApplyLeave_Click(object sender, EventArgs e)
        {
            // Check Leave Type
            if (ddlLeaveType.SelectedValue == "")
            {
                lblStatus.ForeColor =
                    System.Drawing.Color.Red;

                lblStatus.Text =
                    "Please select leave type.";

                pnlLeaveDetails.Visible = false;

                return;
            }


            // Check Reason
            if (txtReason.Text.Trim() == "")
            {
                lblStatus.ForeColor =
                    System.Drawing.Color.Red;

                lblStatus.Text =
                    "Please enter reason.";

                pnlLeaveDetails.Visible = false;

                return;
            }


            // Check Leave Date
            if (calLeaveDate.SelectedDate == DateTime.MinValue)
            {
                lblStatus.ForeColor =
                    System.Drawing.Color.Red;

                lblStatus.Text =
                    "Please select Leave Date.";

                pnlLeaveDetails.Visible = false;

                return;
            }


            // Check Leave To Date
            if (calLeaveToDate.SelectedDate == DateTime.MinValue)
            {
                lblStatus.ForeColor =
                    System.Drawing.Color.Red;

                lblStatus.Text =
                    "Please select Leave To Date.";

                pnlLeaveDetails.Visible = false;

                return;
            }


            // Check date order
            if (calLeaveToDate.SelectedDate <
                calLeaveDate.SelectedDate)
            {
                lblStatus.ForeColor =
                    System.Drawing.Color.Red;

                lblStatus.Text =
                    "Leave To Date cannot be before Leave Date.";

                pnlLeaveDetails.Visible = false;

                return;
            }


            // Display approval message
            lblStatus.ForeColor =
                System.Drawing.Color.Green;

            lblStatus.Text =
                "Leave Approved!!!";


            // Display Student Name
            lblStudentName.Text =
                Session["Username"].ToString();


            // Display Leave Date
            lblLeaveDate.Text =
                calLeaveDate.SelectedDate.ToString("dd/MM/yyyy");


            // Display Leave To Date
            lblLeaveToDate.Text =
                calLeaveToDate.SelectedDate.ToString("dd/MM/yyyy");


            // Display Leave Type
            lblLeaveType.Text =
                ddlLeaveType.SelectedValue;


            // Display Reason
            lblReason.Text =
                txtReason.Text;


            // Display Status
            lblLeaveStatus.ForeColor =
                System.Drawing.Color.Green;

            lblLeaveStatus.Text =
                "Approved";


            // Show Leave Details
            pnlLeaveDetails.Visible = true;
        }


        // LOGOUT
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear Session
            Session.Clear();
            Session.Abandon();

            // Clear Cookie
            if (Request.Cookies["Username"] != null)
            {
                Response.Cookies["Username"].Expires =
                    DateTime.Now.AddDays(-1);
            }

            // Go back to Login page
            Response.Redirect("Login.aspx");
        }
    }
}