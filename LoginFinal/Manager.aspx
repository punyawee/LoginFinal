<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="LoginPage.Manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>STOCK</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .style1
        {
            font-family: "TH SarabunPSK";
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="#">STOCK</a></li>
        <li role="presentation"><a href="#">REPORT BY DATE</a></li>
        <li role="presentation"><a href="#">REPORT BY EMPLOYEE</a></li>
    </ul>
    <form id="form1" runat="server">
    <center>
        <div class="style1">
            <strong>STOCK </strong>
        </div>
    </center>
    <center>
        <div style="height: 286px; width: 1081px">
            <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:project-testConnectionString %>"
                SelectCommand="SELECT * FROM [choice]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_choice" DataSourceID="SqlDataSourceRegistration"
                ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="3px" CellSpacing="2" Height="514px" Width="624px">
                <Columns>
                    <asp:BoundField DataField="id_choice" HeaderText="Materail ID" InsertVisible="False"
                        ReadOnly="True" SortExpression="id_choice" />
                    <asp:BoundField DataField="name_choice" HeaderText="Material" SortExpression="name_choice" />
                    <asp:BoundField DataField="stock_choice" HeaderText="Total" SortExpression="stock_choice" />
                    <asp:BoundField DataField="push_choice" HeaderText="Volume" SortExpression="push_choice" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
        </div>
    </center>
    <div>
    </div>
    <center>
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="txt_back" runat="server" Text="LOG OUT" OnClick="Button1_Click" Style="font-weight: 700;
                font-family: 'TH SarabunPSK'; font-size: large; height: 39px" Width="105px" />
            &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="REPORT" Height="39px"
                Width="105px" />
        </div>
    </center>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
