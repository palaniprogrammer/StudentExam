<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>
    <style>
        body {
            margin: auto;
        }

        .main-div {
            position: absolute;
            display: table;
            width: 100%;
            height: 100%;
            background: #cccca0;
        }

        .main-inner-div {
            display: table-cell;
            vertical-align: middle;
            text-align: center;
        }

        .main-content {
            display: inline-block;
            text-align: left;
            background: #ddffca;
            padding: 200px;
            border: 1px solid #000;
            border-radius: 10px;
        }

        .btn {
            background: #000000;
            background-image: -webkit-linear-gradient(top, #000000, #2980b9);
            background-image: -moz-linear-gradient(top, #000000, #2980b9);
            background-image: -o-linear-gradient(top, #000000, #2980b9);
            background-image: linear-gradient(to bottom, #000000, #2980b9);
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 6px;
            font-family: Arial;
            color: #ffffff;
            font-size: 19px;
            padding: 3px 20px;
            text-decoration: none;
        }

            .btn:hover {
                background: #261c61;
                background-image: -webkit-linear-gradient(top, #261c61, #3498db);
                background-image: -moz-linear-gradient(top, #261c61, #3498db);
                background-image: -o-linear-gradient(top, #261c61, #3498db);
                background-image: linear-gradient(to bottom, #261c61, #3498db);
                text-decoration: none;
                cursor: pointer;
            }
    </style>

    <script>
        function StartTest(popUpPage) {
            window.open(popUpPage, 'null', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,fullscreen=yes');
        }
    </script>

    <style type="text/css">
        .style1
        {
            width: 532px;
        }
        .style2
        {
        }
        .style4
        {
            width: 119px;
        }
        .style5
        {
            width: 196px;
        }
        .style6
        {
            width: 196px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-div">
            <div class="main-inner-div">
                <div class="main-content">
                   <%-- <table>
                        <tr>
                            <td style="text-align:center;">
                                <b>
                                    <asp:Label ID="lbstatus" runat="server"></asp:Label>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;"><b>Start You online Asp.Net Test</b></td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">
                                <asp:Button ID="btnStartTest" Text="Start Test" runat="server" OnClientClick="return StartTest('default2.aspx');" CssClass="btn" />
                            </td>
                        </tr>
                    </table>--%>

                     <div>
    <asp:Label ID="lbstatus" runat="server"></asp:Label>
        <table align="center" class="style1" style="border: thin solid #008080">
            <tr>
                <td colspan="3" 
                    style="border-bottom: thin solid #008080; font-weight: 700; text-align: center;">
                    Student Profile</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    FirstName :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtfname" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtfname" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    LastName :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtlname" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtlname" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    City :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtcity" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtcity" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Email :
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtemail" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Mobile&nbsp; :</td>
                <td class="style4">
                    <asp:TextBox ID="txtpassword" runat="server" Width="120px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="!!" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                        onclick="btnsubmit_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <%--<tr>
                <td colspan="3">
                    &nbsp;<asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>--%>
        </table>
    
    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
