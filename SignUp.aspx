<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="custom-css/sign_up.css" rel="stylesheet">

    <title>Sign Up</title>
</head>
<body>
    <div class="container login-container">
        <div class="row">
            <div class="col-md-6 login-form-1">
                    <div class="row">
                    <div class="col-sm-6">
                       <asp:Image ID="imgMain" runat="server" ImageUrl="assets/sign_up.png"
                           Height="500px" Width="500px"/>
                    </div>
                </div>
            </div>
            <div class="col-md-6 login-form-2">
                <h3>Sign Up Here!</h3>
                <form  runat="server">
                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="Name" TextMode="SingleLine"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Placeholder="Email" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Placeholder="Mobile" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                   
                        <asp:Button ID="Button1" runat="server" CssClass="login-form-2 btnSubmit" OnClick="Button1_Click" Text="SIGN UP"/>
                        <b><asp:Label ID="Label1" runat="server"></asp:Label></b>
                    </div>
                    <div class="form-group">
                        <a href="Login.aspx" class="ForgetPwd">Already a member? Login here</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
