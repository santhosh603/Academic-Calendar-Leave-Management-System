<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="AcademicLeaveManagement.Leave" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Leave Management</title>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <h2>ACADEMIC LEAVE MANAGEMENT</h2>

            <h3>
                <asp:Label
                    ID="lblWelcome"
                    runat="server">
                </asp:Label>
            </h3>

            <table>

                <tr>
                    <td valign="top">
                        Leave Date:
                    </td>

                    <td>
                        <asp:Calendar
                            ID="calLeaveDate"
                            runat="server">
                        </asp:Calendar>
                    </td>
                </tr>

                <tr>
                    <td valign="top">
                        Leave To Date:
                    </td>

                    <td>
                        <asp:Calendar
                            ID="calLeaveToDate"
                            runat="server">
                        </asp:Calendar>
                    </td>
                </tr>

                <tr>
                    <td>
                        Leave Type:
                    </td>

                    <td>
                        <asp:DropDownList
                            ID="ddlLeaveType"
                            runat="server">

                            <asp:ListItem
                                Text="-- Select Leave Type --"
                                Value="">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Personal"
                                Value="Personal">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Medical"
                                Value="Medical">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Other"
                                Value="Other">
                            </asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td valign="top">
                        Reason:
                    </td>

                    <td>
                        <asp:TextBox
                            ID="txtReason"
                            runat="server"
                            TextMode="MultiLine"
                            Rows="5"
                            Columns="30">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                    </td>

                    <td>
                        <asp:Button
                            ID="btnApplyLeave"
                            runat="server"
                            Text="Apply Leave"
                            OnClick="btnApplyLeave_Click" />
                    </td>
                </tr>

                <tr>
                    <td>
                    </td>

                    <td>
                        <asp:Label
                            ID="lblStatus"
                            runat="server"
                            ForeColor="Green">
                        </asp:Label>
                    </td>
                </tr>

            </table>

            <br />

            <!-- LEAVE DETAILS -->

            <asp:Panel
                ID="pnlLeaveDetails"
                runat="server"
                Visible="false">

                <h3>Leave Details</h3>

                <table border="1" cellpadding="8">

                    <tr>
                        <td>
                            <b>Student Name</b>
                        </td>

                        <td>
                            <asp:Label
                                ID="lblStudentName"
                                runat="server">
                            </asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <b>Leave Date</b>
                        </td>

                        <td>
                            <asp:Label
                                ID="lblLeaveDate"
                                runat="server">
                            </asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <b>Leave To Date</b>
                        </td>

                        <td>
                            <asp:Label
                                ID="lblLeaveToDate"
                                runat="server">
                            </asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <b>Leave Type</b>
                        </td>

                        <td>
                            <asp:Label
                                ID="lblLeaveType"
                                runat="server">
                            </asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <b>Reason</b>
                        </td>

                        <td>
                            <asp:Label
                                ID="lblReason"
                                runat="server">
                            </asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <b>Status</b>
                        </td>

                        <td>
                            <asp:Label
                                ID="lblLeaveStatus"
                                runat="server"
                                ForeColor="Green">
                            </asp:Label>
                        </td>
                    </tr>

                </table>

                <br />

                <!-- LOGOUT BUTTON -->

                <asp:Button
                    ID="btnLogout"
                    runat="server"
                    Text="Logout"
                    OnClick="btnLogout_Click" />

            </asp:Panel>

        </div>

    </form>

</body>
</html>
