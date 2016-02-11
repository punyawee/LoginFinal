<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock_manage.aspx.cs" Inherits="LoginPage.stock" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Materails management</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <form id="form1" runat="server"> <!---->

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-cutlery"></span>  Suki Service</a>
                
            </div>
        </div>
    </nav>

    <div class="container" style="margin-top:80px">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project-testConnectionString %>" SelectCommand="SELECT * FROM [choice]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_choice" DataSourceID="SqlDataSource1" Width="100%" CssClass="table table-bordered table-hover table-responsive" AllowPaging="True" AllowSorting="True" PageSize="15">
                    <Columns>
                        <asp:BoundField DataField="id_choice" HeaderText="id_choice" InsertVisible="False" ReadOnly="True" SortExpression="id_choice" />
                        <asp:BoundField DataField="name_choice" HeaderText="name_choice" SortExpression="name_choice" />
                        <asp:BoundField DataField="stock_choice" HeaderText="stock_choice" SortExpression="stock_choice" />
                        <asp:BoundField DataField="push_choice" HeaderText="push_choice" SortExpression="push_choice" />
                    </Columns>
                </asp:GridView>

        <br />
        <asp:Button  ID="button_remove" runat="server" Text="Remove" CssClass="pull-right btn" OnClick="button_remove_Click" BorderStyle="Solid" BorderColor="Red" BackColor="White" ForeColor="Red" />
        <asp:Button  ID="button_add" runat="server" Text="Add" CssClass="pull-right btn" OnClick="button_add_Click" BorderStyle="Solid" BorderColor="#00CC00" BackColor="White" ForeColor="#00CC00" />
        

    </div>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
