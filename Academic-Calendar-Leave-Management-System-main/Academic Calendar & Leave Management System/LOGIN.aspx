<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AcademicLeaveManagement.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Academic Leave Management</title>
</head>

<body>
    <form id="form1" runat="server">

        <div>

            <h2>ACADEMIC LEAVE MANAGEMENT</h2>

            <table>
                <tr>
                    <td>ID</td>
                    <td>
                        <asp:TextBox
                            ID="txtUsername"
                            runat="server">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            TextMode="Password">
                        </asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button
                            ID="btnLogin"
                            runat="server"
                            Text="Login"
                            OnClick="btnLogin_Click" />
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Label
                            ID="lblMessage"
                            runat="server"
                            ForeColor="Red">
                        </asp:Label>
                    </td>
                </tr>
            </table>

        </div>

    </form>
</body>
</html>