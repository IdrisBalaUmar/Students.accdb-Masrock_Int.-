<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="GISystematix_Asp.AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<!-- Mirrored from getbootstrap.com/examples/signin/ by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 02 Oct 2013 12:14:41 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/img/BatchLogoForAdmin.jpg">

    <title>Admin: Login</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dist/css/signin.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    

</head>

<body>

<div class="container">

    <img src="assets/img/background.png" height = "200px" width = "1200px" class="user-image img-responsive" />
    
        <div class="header">
            <ul class="nav nav-pills pull-right">
                <!--<li class="disabled"><a href="#">Student Portal</a></li>-->
                <li class="active"><a href="http://gisystematix.com" target="_blank">GISystematix</a></li>
            </ul>

            <!--<h3 class="text-muted"><img src="assets/ico/favicon.png" alt="No images" class="img-rounded"></h3>-->
            <h3>&nbsp;Login: Admin</h3>
        </div>


    <form id="Form1" runat="server" class="form-signin" method="post"> &nbsp;<h2 class="form-signin-heading">Please sign in</h2>
        
        <div class="form-group">
        <input type="text" id ="LoginTxt" class="form-control" placeholder="Email address" name="email" runat="server" autofocus > <input/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="LoginTxt" ErrorMessage="Please insert your Email Address" 
                ValidationGroup="Login">Please Insert your Email Address</asp:RequiredFieldValidator></br>


        </div>
        <div class="form-group">
            <input type="password" id ="PassTxt" class="form-control" name="password" runat="server" placeholder="Password"> <input/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="PassTxt" ErrorMessage="Please Insert your Password" 
                ValidationGroup="Login">Please Insert your Password</asp:RequiredFieldValidator>
        </div>
        <label class="checkbox">
            <input type="checkbox" value="remember-me" name="remember"> Remember me <input/>
        </label>
        <div class="form-group">
            <asp:Button ID="Button1" CssClass="btn btn-lg btn-primary btn-block" 
                name="signin" type="button" runat="server" Text="Sign in" Width="300px" 
                onclick="Button1_Click" />
            </div>
            
    

</div> <!-- /container -->
<div class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</form>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

</body>

<!-- Mirrored from getbootstrap.com/examples/signin/ by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 02 Oct 2013 12:14:41 GMT -->
</html>
