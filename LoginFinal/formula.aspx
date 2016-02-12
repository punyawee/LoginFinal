<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formula.aspx.cs" Inherits="LoginPage.formula" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>formularsuki</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h2>
            ForMularSuki</h2>
        <p>
            สูตรการทำSuki :<asp:SqlDataSource 
                ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:project-testConnectionString %>" 
                SelectCommand="SELECT * FROM [formular]"></asp:SqlDataSource>
            &nbsp;</p>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </div>
    <p>
        &nbsp;</p>
    <div class="container">
        <div class="rom">
            <div class="col-md-12 col-lg-offset-5">
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Add_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
