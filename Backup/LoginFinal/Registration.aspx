<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LoginPage.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>REGISTRATION</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 8px;
            text-align: right;
        }
        .style3
        {
            text-align: right;
            font-family: "TH SarabunPSK";
            font-size: x-large;
            font-weight: bold;
            width: 8px;
        }
        .style4
        {
            font-family: "TH SarabunPSK";
            font-size: x-large;
            font-weight: bold;
        }
        .style5
        {
            width: 221px;
        }
        #Reset1
        {
            font-family: "TH SarabunPSK";
            font-size: x-large;
            font-weight: 700;
            height: 35px;
            width: 82px;
        }
        .style7
        {
            font-family: "TH SarabunPSK";
            font-size: xx-large;
        }
        .style8
        {
            text-align: right;
            font-family: "TH SarabunPSK";
            font-size: x-large;
            font-weight: bold;
            width: 8px;
            height: 69px;
        }
        .style9
        {
            width: 221px;
            height: 69px;
        }
        .style10
        {
            height: 69px;
        }
        .style11
        {
            text-align: right;
            font-family: "TH SarabunPSK";
            font-size: x-large;
            font-weight: bold;
            width: 593px;
            height: 69px;
        }
        .style12
        {
            text-align: right;
            font-family: "TH SarabunPSK";
            font-size: x-large;
            font-weight: bold;
            width: 593px;
        }
        .style13
        {
            width: 593px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><span class="style7"><strong>Registration
                    </strong></span><strong>
        <br class="style7" />
        </strong>
        <img src="pic/logo.png" 
            style="max-width:100%; height: 243px; width: 390px;" >
        </center>
      
        <table class="style1">
            <tr>
                <td class="style11">
                    Username :</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    <asp:TextBox ID="txt_Name" class="form-control" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt_Name" CssClass="style4" 
                        ErrorMessage="* Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    Password :</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style9">
                    <asp:TextBox ID="txt_Password" class="form-control" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txt_Password" CssClass="style4" 
                        ErrorMessage="* Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    Confirm Password :</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    <asp:TextBox ID="txt_RPassword" class="form-control" runat="server" Width="180px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txt_RPassword" CssClass="style4" 
                        ErrorMessage="* Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txt_Password" ControlToValidate="txt_RPassword" 
                        ErrorMessage="* Both Password must be same" ForeColor="Red" 
                        style="font-family: 'TH SarabunPSK'; font-size: x-large; font-weight: 700"></asp:CompareValidator>
                </td>
            </tr><br />
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="txt_Submit" runat="server" Height="35px" onclick="txt_Submit_Click" 
                        style="font-family: 'TH SarabunPSK'; font-size: x-large; font-weight: 700" 
                        Text="SUBMIT" />
&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value="RESET" /></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
