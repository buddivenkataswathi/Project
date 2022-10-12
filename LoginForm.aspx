<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }
        center {
        }
    </style>
    </head>
<body style="background-color:paleturquoise";>
    <h2><p style="color: blue; font-size: 20px;">Issue and Risk Tracker</p></h2>
    <h2><p style="color: hotpink; font-size: 20px;">Login Screen</p></h2>
    <form id="form1" name="f1" runat="server">
<table>
<tr>
<td>
User Name  :
</td>
<td class="auto-style1">
    &nbsp;<asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox>
&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Username Should  Be In8 Characters" ClientValidationFunction="validateLength" ControlToValidate="TextBox1" ForeColor="Red"></asp:CustomValidator>
    </td>
</tr>
<tr>
<td>
Password  :
</td>
<td class="auto-style1">
    &nbsp;<asp:TextBox ID="TextBox2" placeholder="Password" runat="server"></asp:TextBox>
</td>
</tr>
</table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Should Be In AlphaNumeric" ForeColor="Red" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Username And Password Should Not Same" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;
        <%--<asp:Button ID="Button2" runat="server" Text="Reset" />--%>
        <input type="reset" id="Button2" value="reset" />

    <br />
        
    <br /><a href="C:\Users\buddi.venkataswathi\source\repos\Project\ChangePassword">Change Password</a>
    <br />
    <a href="https://localhost:44324/ForgotPassword.aspx">Forget Password</a>
        <script type="text/ecmascript">
        function validateLength(sender, args) {
            debugger;
            if (args.Value.length < 8)
                return args.IsValid = false;
            else
                return args.IsValid = true;
            }
        </script>
        <p>
        <asp:Button ID="Button3" runat="server" Text="New Registration Form" OnClick="Button3_Click" />
        </p>
        </form>
</body>
</html>
