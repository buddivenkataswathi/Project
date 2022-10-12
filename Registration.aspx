<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project.Registration1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 295px;
        }
    </style>
</head>   
<body style="background-color:yellow";>
    <font color="red" face="verdana"
size="4">
</ font>
    <form id="form1" runat="server">
       <h2><p style="color: blue; font-size: 20px;">Registration Screen</p></h2> 
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">UserName</td>
                <td>
                    <asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" MaxLength="8" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Must Be In Alpha Numeric And Must Be 8 Characters" ForeColor="Red" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Re-Enter Password</td>
                <td>
                    <asp:TextBox ID="TextBox3" placeholder="ReEnterPassword" runat="server" MaxLength="8"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password And Re-Enter Password Should Be Same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">First Name</td>
                <td>
                    <asp:TextBox ID="TextBox4" placeholder="Firstname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Middle Name</td>
                <td>
                    <asp:TextBox ID="TextBox5" placeholder="Middlename" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name</td>
                <td>
                    <asp:TextBox ID="TextBox6" placeholder="Lastname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Hint Question</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" placeholder="Select" runat="server">
                        <asp:ListItem Value="1">Select</asp:ListItem>
                        <asp:ListItem Value="1">What Is Your GrandMother Name</asp:ListItem>
                        <asp:ListItem Value="2">What Is Favorite Color				</asp:ListItem>
                        <asp:ListItem Value="3">What Is Your School Name</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Hint Answer</td>
                <td>
                    <asp:TextBox ID="TextBox8" placeholder="HintAnswer" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                         
<%--&nbsp;<asp:Button ID="Button2" runat="server" Text="Reset" />--%>
                    <input type="reset" id="Button2" value="reset" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
