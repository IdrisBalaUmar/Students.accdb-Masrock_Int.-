﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageAccount.aspx.cs" Inherits="GISystematix_Asp.ManageAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Account</title>
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
font-size: 16px;"> <a href="StudentLogout.aspx" class="btn btn-danger square-btn-adjust">Logout</a> </div>
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
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
              <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="../assets/img/BatchLogoForAdmin.jpg" class="user-image img-responsive"/>
				  </li>
				
					
                    <li>
                        <a   href="Welcome.aspx"><i class="glyphicon glyphicon-home"></i> <strong>Home</strong></a>
                    </li>
                     
                    <li>
                        <a href="StudentAssignmentPanel.aspx"><i class="glyphicon glyphicon-open"></i><!--Tabs & Panels-->Assignment</a>

                    </li>
						   <li  >
                        <a   href="DownloadCourseMaterial.aspx"><i class="glyphicon glyphicon-download-alt"></i> Download Course Material(s)<!--Morris Charts--></a>
                    </li>	
										</li>
						   <li  >
                        <a  class="active-menu" href="ManageAccount.aspx"><i class="glyphicon glyphicon-user"></i> Manage Account<!--Morris Charts--></a>
                    </li>
              </ul>

               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Student Dashboard</h2>   
                        <h5>Welcome <?php echo $_SESSION['firstname']." ".$_SESSION['lastname']?> </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6"> 
				<span class="icon-box bg-color-green set-icon">
                    
					<a href = "ChangePassword.aspx" class="btn btn-primary btn-lg" role="button"><i class="glyphicon glyphicon-user">CHANGE PASSWORD</i></a>
                </span>
					
			<!--<div class="panel panel-back noti-box"> 
                
              <div class="button" >
                <p class="main-text"></p>
                  <p class="text-muted">CHANGE PASSWORD</p>
                    <p class="text-muted">&nbsp;</p>
                </div>
             </div> -->
			 
			 
		     </div>
			 
			 
			 
			 
				
                    
                        
        </div>
                 <!-- /. ROW  -->
                <div class="row"> 
                
           </div>
                 <!-- /. ROW  -->
                <div class="row" >
                    
                <div class="row">
                    
                </div>     
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   

</html>
