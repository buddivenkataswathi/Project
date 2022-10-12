<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Project_Assignment.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Change Password Screen</title>
    <style type="text/css">
      
        .auto-style2 {
            width: 180px;
            text-align:center;
            font-size:30px;
        }
        .auto-style3 {
            width: 180px;
            font-size:20px;
            
        }
        .auto-style4{
            border-radius:20px;
        }

        table{
            margin:auto;
            width:400px;
            border:5px black ridge;
            position: absolute;
            top:50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color:lightgrey;
        }
    </style>
</head>
<body>
<%--    <section>
    <h4>Change Password</h4>
    <form runat="server">
    Old Password :<asp:TextBox ID="OldPass" type="password" runat="server" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Password " ControlToValidate="OldPass" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^.{8,16}$"  runat="server" ErrorMessage="Password must be 8-16 character long" ControlToValidate="OldPass" Display="Dynamic" ForeColor="Red"  />
       
        </br>
        </br>
    New Password :<asp:TextBox ID="NewPass" type="password" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password " ControlToValidate="NewPass" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^.{8,16}$"  runat="server" ErrorMessage="Password must be 8-16 character long" ControlToValidate="NewPass" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"  />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Password Should be Alpha-Numeric" ControlToValidate="NewPass" Forecolor="Red" ValidationExpression="[a-zA-Z0-9]*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                  <asp:CompareValidator ID="CompareValidatorDate" runat="server" ErrorMessage="Old and New password should not be same" ControlToValidate ="OldPass" ControlToCompare="NewPass" Operator ="NotEqual" Type ="String" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator></br></br>
                  <asp:Button ID="Button1" runat="server"  text="Submit" OnClick="Button1_Click1" />
                  <input id="Reset1" type="reset" value="reset" />
        
     
        
    </form>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </section>--%>

  <form runat="server">
      <div>
    <table cellpadding="4" cellspacing="4">
        <tr>
            <td class="auto-style2" colspan="2">&nbsp;Change Password</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Old Password:</td>
            <td>
                <asp:TextBox ID="OldPass" runat="server" Type="password"  Width="179px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="OldPass" Display="Dynamic" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^.{8,16}$"  runat="server" ErrorMessage="Password must be 8-16 character long" ControlToValidate="OldPass" Display="Dynamic" ForeColor="Red"  />
       
            </td>
        </tr>
        <tr>
            <td class="auto-style3">New Password:</td>
            <td>
                <asp:TextBox ID="NewPass" runat="server" Type="password" Width="179px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NewPass" Display="Dynamic" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^.{8,16}$"  runat="server" ErrorMessage="Password must be 8-16 character long" ControlToValidate="NewPass" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"  />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Password Should be Alpha-Numeric" ControlToValidate="NewPass" Forecolor="Red" ValidationExpression="[a-zA-Z0-9]*$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidatorDate" runat="server" ErrorMessage="Old and New password should not be same" ControlToValidate ="OldPass" ControlToCompare="NewPass" Operator ="NotEqual" Type ="String" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                &nbsp;&nbsp;
                <input id="Reset2" type="reset" value="Reset" /></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
   </form>
</body>
</html>
