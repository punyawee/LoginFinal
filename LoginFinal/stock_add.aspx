<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock_add.aspx.cs" Inherits="LoginPage.stock_add" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Adding Material</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <form id="form1" runat="server">

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-cutlery"></span> Suki Service</a>

                </div>
            </div>
        </nav>

        <div class="container">

            <div class="panel panel-success" style="margin-top: 80px">
                <div class="panel-heading">Adding Material<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-testConnectionString %>" SelectCommand="SELECT * FROM [choice]"></asp:SqlDataSource>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        Name :
                            <asp:TextBox ID="insert_name" runat="server" CssClass="form-control" placeholder="insert name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error_name" runat="server" ControlToValidate="insert_name" ErrorMessage="*** Please insert name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        Use/Pack : 
                            <asp:TextBox ID="insert_push" runat="server" CssClass="form-control" placeholder="insert use/pack"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error_push" runat="server" ControlToValidate="insert_push" ErrorMessage="*** Please insert use/pack" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        Stock : 
                            <asp:TextBox ID="insert_stock" runat="server" CssClass="form-control" placeholder="insert stock"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="error_stock" runat="server" ControlToValidate="insert_stock" ErrorMessage="*** Please insert stock" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <p>
                        <asp:Button ID="Button_cancel" runat="server" Text="cancel" CssClass="btn pull-right" BackColor="White" BorderColor="Red" BorderStyle="Solid" ForeColor="Red" OnClick="Button_cancel_Click" CausesValidation="False" />
                        <asp:Button ID="Button_add" runat="server" Text="Add" CssClass="btn pull-right" BackColor="White" BorderColor="#00CC00" BorderStyle="Solid" ForeColor="#00CC00" OnClick="Button_add_Click" />
                    </p>

                </div>
            </div>
        </div>
    </form>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
