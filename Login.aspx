<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="custom-css/login.css" rel="stylesheet">

    <title>Log In</title>
</head>
<body>
    <div class="container login-container">
  <div class="row">
    <!-- <div class="col-md-6 login-form-1">
      <div class="row">
        <div class="col-sm-6">
          <asp:Image ID="imgMain" runat="server" ImageUrl="images/sign_up.png" Height="500px" Width="500px" />
        </div>
      </div>
    </div> -->
    <div class="col-md-6 login-form-2">
      <h3>Login to Code Pizza!</h3>
      <form runat="server">
        <div class="form-group">
          <!-- Email -->
          <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="Email" TextMode="Email"></asp:TextBox>
          <b><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ErrorMessage="Email Required!" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></b>
        </div>
        <div class="form-group">
          <!-- Password -->
          <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Placeholder="Password" TextMode="Password"></asp:TextBox>
           <b> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" ErrorMessage="Password Required!" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></b>
        </div>

          <div class="form-check">
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-check-input position-static"/>
            <asp:Label ID="Label2" runat="server" Text="Label" CssClass="ForgetPwd">Remember Me</asp:Label>
            <%--<input  type="checkbox" id="blankCheckbox" value="option1" aria-label="...">--%>
           </div> <br/>

        <div class="form-group">
          <asp:Button ID="Button1" runat="server" CssClass="login-form-2 btnSubmit" 
            Text="Log In" OnClick="Button1_Click" />
        </div>
        <div class="form-group">
          <a href="SignUp.aspx" class="ForgetPwd">Not a member? Sign up here</a>
        </div>
          <div class="form-group">
              <b><asp:Label ID="Label1" runat="server" CssClass="ForgetPwd text-danger"> </asp:Label></b>
          <%--<a href="SignUp.aspx" class="ForgetPwd">Not a member? Sign up here</a>--%>
        </div>
      </form>
    </div>
  </div>
</div>

    <%--<div id="login" runat="server">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form  class="form" runat="server">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Email</label><br>
                                
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input
                                            id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-info btn-md" Text="Login" />
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="SignUp.aspx" class="text-info">Register here</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <%--<form >
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email:</td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>--%>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
