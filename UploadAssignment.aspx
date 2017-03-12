<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadAssignment.aspx.cs" Inherits="GISystematix_Asp.UploadAssignment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    <link rel="shortcut icon" href="assets/img/BatchLogoForAdmin.jpg" type="image/x-icon"/>
    <style>
        .round h4{position:relative; left:90%;
            text-align:center; border-radius:50%;
            background-color:#F00; width:30px; height:30px;
            color:#fff; padding-bottom:5px; font-weight:bold; font-size:12px; float:left; margin:5px;}
    </style>
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../../index.php">GISystematix</a>
        </div>
        <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> <?php echo $_SESSION['firstname']." ".$_SESSION['lastname']?> <a href="logout.php" class="btn btn-danger square-btn-adjust">Logout</a> </div>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="Ul1">
                <li class="text-center">
                    <img src="assets/img/find-user1.jpg" class="user-image img-responsive"/>
                </li>

            </ul>

        </div>

    </nav>
    </div>
    </body>
    </html>




    <!-- /. NAV TOP  -->
<form id="form1" runat="server">
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li class="text-center">
                    <img src="../assets/img/BatchLogoForAdmin.jpg" class="user-image img-responsive"/>
                </li>


                <li>
                    <a color = "green"  href="Welcome.aspx"><i class="glyphicon glyphicon-home"></i> <strong>Home</strong></a>
                </li>
                
                <li>
                    <a class="active-menu" href="UploadAssignment.aspx"><i class="glyphicon glyphicon-open"></i><!--Tabs & Panels-->Upload Assignment</a>
                </li>
                <li  >
                    <a   href="DownloadCourseMaterial.aspx"><i class="glyphicon glyphicon-download-alt"></i> Download Course Material(s)<!--Morris Charts--></a>
                </li>

                </li>
                <li  >
                    <a   href="ManageAccount.aspx"><i class="glyphicon glyphicon-user"></i> Manage Account<!--Morris Charts--></a>
                </li>

            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper" >
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h2><B>Upload Assignment </B></h2>
                    <h5>Welcome  </h5>

                </div>
            </div>
            <!-- /. ROW  -->
            <hr />

            <div class="row">



            </div>
            <!-- /. ROW  -->
            <div class="row">




            </div>
            <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>Upload Assignment</strong>
                            <div class="form-group">


                            </div>
                            <div class="form-group">
                                <label>Courses</label>

                                <br />
&nbsp;<asp:DropDownList ID="CourseSelect" Cssclass="form-group form-control" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="CourseName" 
                                    DataValueField="CourseName">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:cn %>" 
                                    SelectCommand="SELECT [CourseName] FROM [Courses]"></asp:SqlDataSource>
                             </div>
                            <!--<div class="form-group">
                                <label>Title</label>
                                <input class="form-control" name="asc_title"/>
                                <!--<p class="help-block">Help text here.</p>
                            </div>-->




                            <div class="form-group">
                                <label>Description</label>
                                <textarea id="Desc" class="form-control" rows="3" name="asc_desc" runat="server"></textarea><P>
                            </div>

                            <div class="form-group">
                                <label>Upload Document</label>
                                <input id="File" type="file" name="file" runat="server"><center><asp:Button ID="BtnUpload" Cssclass = "btn btn-lg btn-primary" runat="server" text="Upload" onclick="Button1_Click"/></center>
                                <br>
                            </div>

                        </div>
                        <div class="panel-body">
                            <div class="panel-group" id="accordion">



                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /. ROW  -->


            <!-- /. ROW  -->

            <!-- /. ROW  -->

        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
</form>


<!-- /. WRAPPER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="../assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="../assets/js/bootstrap.min.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="../assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="../assets/js/custom.js"></script>


</body>
</html>
