<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPage.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>LOGIN</title>
    <link href="testcss/css.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <div class="account-wall">
                    <div id="my-tab-content" class="tab-content">
                        <div class="tab-pane active" id="login">
                            <img class="profile-img" src="pic/logo.png" style="max-width:100%"
                                alt="">
                            <form class="form-signin" action="" method="" runat="server">
                            <br />
                            <!--    <input type="text" class="form-control" placeholder="Username" required autofocus>
                                <input type="password" class="form-control" placeholder="Password" required> <br />
                                <input type="submit" class="btn btn-lg btn-default btn-block" value="Sign In" /> -->
                                <br />
                            <asp:TextBox ID="User_Tbx" CssClass="form-control" runat="server"></asp:TextBox><br />
                                <asp:TextBox ID="Pass_Tbx" CssClass="form-control" runat="server" 
                                TextMode="Password"></asp:TextBox></br>
                                <asp:Button ID="Button1" CssClass="btn btn-lg btn-default btn-block" runat="server" Text="LOGIN" OnClick="Button1_Click" />

                            </form>
                            <div id="tabs" data-tabs="tabs"> <br />
                       
                                <p class="text-center"><a href="Registration.aspx" data-toggle="tab">Register</a></p>
                            </div>
                        </div>
                        <div class="tab-pane" id="register">
                            <form class="form-signin" action="" method="">
                                <input type="text" class="form-control" placeholder="User Name ..." required autofocus>
                                <input type="email" class="form-control" placeholder="Emaill Address ..." required>
                                <input type="password" class="form-control" placeholder="Password ..." required>
                                <input type="submit" class="btn btn-lg btn-default btn-block" value="Sign Up" />
                            </form>
                            <div id="tabs" data-tabs="tabs">
                                <p class="text-center"><a href="#login" data-toggle="tab">Have an Account?</a></p>
                            </div>
                        </div>
                        <div class="tab-pane" id="select">
                            <div id="tabs" data-tabs="tabs">
                                <div class="media account-select">
                                    <a href="#user1" data-toggle="tab">
                                        <div class="pull-left">
                                            <img class="select-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                                                alt="">
                                        </div>
                                        <div class="media-body">
                                            <h4 class="select-name">User Name 1</h4>
                                        </div>
                                    </a>
                                </div>
                                <hr />
                                <div class="media account-select">
                                    <a href="#user2" data-toggle="tab">
                                        <div class="pull-left">
                                            <img class="select-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                                                alt="">
                                        </div>
                                        <div class="media-body">
                                            <h4 class="select-name">User Name 2</h4>
                                        </div>
                                    </a>
                                </div>
                                <hr />
                                <p class="text-center"><a href="#login" data-toggle="tab">Back to Login</a></p>
                            </div>
                        </div>
                        <div class="tab-pane" id="user1">
                            <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                                alt="">
                            <h3 class="text-center">User Name 1</h3>
                            <form class="form-signin" action="" method="">
                                <input type="hidden" class="form-control" value="User Name">
                                <input type="password" class="form-control" placeholder="Password" autofocus required>
                                <input type="submit" class="btn btn-lg btn-default btn-block" value="Sign In" />
                            </form>
                            <p class="text-center"><a href="#login" data-toggle="tab">Back to Login</a></p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
