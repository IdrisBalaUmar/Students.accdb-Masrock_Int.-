<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GISystematix_Asp.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>Registration Form</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.css" rel="stylesheet"/>
    <link href="dist/css/bootstrap-theme.css" rel="stylesheet"/>
    <link href="dist/css/bootstrapValidator.min.css" rel="stylesheet"/>
    <link href="dist/css/test/style.css" rel="stylesheet"/>

    <!-- live validation core CSS -->
    <link href="Adminassets/css/font-awesome.css" rel="stylesheet" />
    <link href="Adminassets/css/font-awesome.css" rel="stylesheet" />
    <link href="Adminassets/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/standard.css" type="text/css" />
    <link rel="stylesheet" href="../css/test.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/validation.css" type="text/css" />

    <!-- Custom styles for this template -->
    <link href="dist/css/signin.css" rel="stylesheet"/>
    <link href="dist/css/register3.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="assets/img/BatchLogoForAdmin.jpg"/>

    <script type="text/javascript" src="assets/js/jquery-1.10.2.js"></script>

</head>
<body>

<div class="container">

    <div class="header">
        

        <h3 class="text-muted"><center><img src="assets/img/background.png" height = "230px" width = "1140px" alt="No images" class="img-rounded"></cente></h3>
           
    </div>

    <form runat="server" class="well form-horizontal"> &nbsp;<fieldset>

            <!-- Form Name -->
            <legend>Application Form</legend>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">First Name</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="FName" runat="server" name="FirstName" placeholder="First Name" class="form-control" type="text" Height="50px" width = "300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FName" runat="server" ErrorMessage="Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                             
                             
                    </div>
                </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label" >Last Name</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="LName" runat="server" name="last_name" placeholder="Last Name" class="form-control" type="text" Height="50px" width = "300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="LName" runat="server" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" >Other Names</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="OName" runat="server" name="other_name" placeholder="Other Names" class="form-control" type="text" Height="50px" width = "300px"></asp:TextBox>
                    </div>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label">E-Mail</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <asp:TextBox ID="Email" runat="server" name="email" placeholder="E-Mail Address" class="form-control" type="text" Height="50px" width = "300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="Email" ForeColor="Red"></asp:RequiredFieldValidator>  
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                        <script type="text/javascript">
                            var Email = new LiveValidation('Email');
                            Email.add(Validate.Email);
		  </script>

                    </div>
                </div>
            </div>

        
            <!-- radio checks -->
            <div class="form-group">
                <label class="col-md-4 control-label">Gender</label>
                <div class="col-md-4">
                    <div class="radio">
                    </div>
                    <div class="radio">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" >
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        
                        <br>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Qualification</label>

                <div class="col-md-2">

                    <asp:DropDownList ID="Diploma" class="form-control" runat="server">
                        <asp:ListItem>ND</asp:ListItem>
                        <asp:ListItem>HND</asp:ListItem>
                        <asp:ListItem>Phd</asp:ListItem>
                        <asp:ListItem>Bsc</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    
                </div>
            </div>
            <!-- Text area -->

            <div class="form-group" style="display: none" id="specify">
                <label class="col-md-4 control-label">Specify Qualification</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                        <input runat="server" type="text"  class="form-control" name="q_specify" placeholder="Qualification"> </input>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Occupation</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <asp:TextBox ID="TxtOccupation" runat="server" type="text" Height="50px" width = "300px" class="form-control" name="occupation" placeholder="Occupation"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TxtOccupation" runat="server" ErrorMessage="What is your Occupation" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Are you proficient with computers?</label>
                <div class="col-md-4">
                    <div class="radio">
                    </div>
                    <div class="radio">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="70px">
                            <asp:ListItem Selected="True">Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                        <br/>
                    </div>
                </div>
            </div>



            <div class="form-group">
                <label class="col-md-4 control-label" id="course">Course(s) Selection</label>
                <div class="col-md-4 inputGroupContainer">
                    <label class="checkbox">
                        <asp:CheckBox ID="Course1" runat="server" type="checkbox" value="Yes" 
                        name="course1" Text="Introduction to GIS" />
                    </label><br/>

                    <label class="checkbox">
                    <asp:CheckBox ID="Course2" runat="server" type="checkbox" value="Yes" 
                        name="course2" Text="Image Processing Analysis" />
                    </label><br/>

                    <label class="checkbox">
                        <asp:CheckBox ID="Course3" runat="server" type="checkbox" value="Yes" 
                            name="course3" Text="Introduction to Web Mapping" />
                    </label><br/>

                    <label class="checkbox">
                        <asp:CheckBox ID="Course4" runat="server" type="checkbox" value="Yes" 
                            name="course4" Text="Certificate in Remote Sensing" />
                    </label><br/>

                    <label class="checkbox">
                        <asp:CheckBox ID="Course5" runat="server" type="checkbox" value="Yes" 
                            name="course5" Text="Principles of Remote Sensing" />
                    </label><br/>

                    <label class="checkbox">
                     <asp:CheckBox ID="Course6" runat="server" type="checkbox" value="Yes" 
                            name="course6" Text="Advanced GIS Techniques" />
                    </label><br/>

                    <label class="checkbox">
                        <asp:CheckBox ID="Course7" runat="server" type="checkbox" value="Yes" 
                            name="course7" Text="Certificate in GIS" />
                    </label><br/>

                    <label class="checkbox">
                        <asp:CheckBox ID="Course8" runat="server" type="checkbox" value="Yes" 
                            name="course8" Text="Diploma in Remote Sensing" />
                    </label><br/>

                    <label class="checkbox">
                        <asp:CheckBox ID="Course9" runat="server" type="checkbox" value="Yes" 
                            name="course9" Text="Spatial Data Management" />
                    </label><br/>

                    <label class="checkbox">
                        <asp:CheckBox ID="Course10" runat="server" type="checkbox" value="Yes" 
                            name="course10" Text="GIS and Hydrology" />
                    </label><br/>

                    <label class="checkbox">
                        <asp:CheckBox ID="Course11" runat="server" type="checkbox" value="Yes" 
                            name="course11" Text="Diploma in GIS" />
                    </label><br/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Expectation after learning this course</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <asp:TextBox ID="Comment" runat="server" class="form-control" name="comment" 
                            placeholder="Expectation after learning this course" TextMode="MultiLine" width = "300px"></asp:TextBox>
                    </div>
                </div>
            </div>

            <!-- Success message -->
            <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>


            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4">
                    <asp:Button ID="BtnSend" runat="server" class="btn btn-success" Text="Send" 
                        onclick="BtnSend_Click" /> <span class="glyphicon glyphicon-send"></span>
                </div>
            </div>

        </fieldset>
    </form>

</div>
</div><!-- /.container -->

</body>
</html>

