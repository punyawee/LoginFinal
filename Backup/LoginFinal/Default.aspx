<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoginPage.Default" %>

<!DOCTYPE html>
<html lang="en">
  <head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>
     <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            font-family: "TH SarabunPSK";
            font-size: large;
        }
    </style>
</head>
<body style="font-family: 'TH SarabunPSK'; font-size: xx-large; font-weight: 700">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        WELCOME !!
        <br /><img src="pic/logo.png" style="max-width:100%" />
        <br />
        <br />
        <asp:Button ID="txt_GLogin" runat="server" CssClass="style1" 
            onclick="txt_GLogin_Click" Text="LOGIN" Width="78px" />
&nbsp;
        <asp:Button ID="txt_GRegis" runat="server" CssClass="style1" 
            onclick="txt_GRegis_Click" Text="REGISTER" />
    </div>
   
    </form>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
