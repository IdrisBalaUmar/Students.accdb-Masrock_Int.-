<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="GISystematix_Asp.ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
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


<?php $title = 'GIS - Manage Password';
include '../includes/header.php';?>
<form id="form1" runat="server">
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="../assets/img/BatchLogoForAdmin.jpg" class="user-image img-responsive"/>
					</li>
				
					
                      <li>
                        <a  href="Welcome.aspx"><i class="glyphicon glyphicon-home"></i> <strong>Home</strong> </a>
                    </li>
                    
                    <li>
                        <a  href="UploadAssignment.aspx"><i class="glyphicon glyphicon-open"></i><!--Tabs & Panels-->Upload Assignment</a>
                    </li>
						   <li  >
                        <a   href="DownloadCourseMaterial.aspx"><i class="glyphicon glyphicon-download-alt"></i> Download Course Material(s)<!--Morris Charts--></a>
                    </li>	
					
					</li>
						   <li  >
                        <a class="active-menu"  href="ManageAccount.aspx"><i class="glyphicon glyphicon-user"></i> Manage Account<!--Morris Charts--></a>
                    </li>	
                                     </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Password Change</h2>   
                        <h5>Welcome <?php echo $_SESSION['firstname']." ".$_SESSION['lastname']?> </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <!-- Add Student--> <!--  Modals-->
                    <div class="panel panel-default">
                        <!--<div class="panel-heading">
                            Modals Example
                        </div>-->
                        <div class="panel-body">
                            <!--<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                              Student Verification
                            </button> -->
							
							<div class="modal-body">
               <h3>  <Center>Change Password</Center> </h3>
							
							<label>Enter Current Password</label>
							<input id="oldpass" type = "password" name="oldpass" class="form-control" required minlength="8"/>
							<label>Enter New Password</label>
							<input id="newpass" type = "password" name="newpass" class="form-control" required minlength="8"/>
							<label>Verify New Password</label>
							<input id="newpass2" type = "password" name="newcpass" class="form-control" required minlength="8"/>
							
							<div class="modal-footer">
                                          <center>
                                              <asp:Button id="Button1" class="btn btn-lg btn-success" name="Change" type="submit" runat="server" text="Change"  />
                                              <asp:Button id="Button2" class="btn btn-lg btn-danger" href="Default.aspx" runat="server" text="Cancel" />
										  </center>
                                        </div>
							
							
							
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                           <!-- <h4 class="modal-title" id="myModalLabel">Modal title Here</h4>-->
                                        </div>
                                       
                                        <div class="modal-body">
                                        
                                             </div>
                                       
                
                 <div class="form-group">
                 </div>
                                    </div>
                                </div>
                



                                                     
  </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Modals-->
                        </div>
                        
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
</form>
            
             <!-- /. PAGE INNER  -->
           <!-- </div>-->
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="../assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="../assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="../assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="../assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="../assets/js/dataTables/dataTables.bootstrap.js"></script>
         <!-- CUSTOM SCRIPTS -->
    <script src="../assets/js/custom.js"></script>

 
</body>
</html>

