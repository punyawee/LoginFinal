<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock_remove.aspx.cs" Inherits="LoginPage.stock_remove" %>

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

            <div class="panel panel-danger" style="margin-top: 80px">
                <div class="panel-heading">
                    Removing Material<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-testConnectionString %>" SelectCommand="SELECT * FROM [choice]"></asp:SqlDataSource>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        Name :
                            <asp:TextBox ID="insert_name" runat="server" CssClass="form-control" placeholder="insert name for deleting material"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="insert_name" ErrorMessage="*** Please insert name for deleting material" ForeColor="Red"></asp:RequiredFieldValidator>
                        <p style="margin-top:5px">
                            <asp:Button ID="Button_cancel" runat="server" Text="cancel" CssClass="btn pull-right" BackColor="White" BorderColor="Red" BorderStyle="Solid" ForeColor="Red" OnClick="Button_cancel_Click" CausesValidation="False" />
                            <asp:Button ID="Button_remove" runat="server" Text="Remove" CssClass="btn pull-right" BackColor="White" BorderColor="#00CC00" BorderStyle="Solid" ForeColor="#00CC00" OnClick="Button_remove_Click" />
                        </p>
                    </div>

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" Width="100%" CssClass="table table-bordered table-hover table-responsive" PageSize="15"></asp:GridView>



                </div>
            </div>
        </div>
    </form>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
