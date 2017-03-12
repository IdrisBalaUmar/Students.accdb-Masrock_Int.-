<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GISystematix_Asp.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="Adminassets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="Adminassets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->

        <!-- CUSTOM STYLES-->
    <link href="Adminassets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
    <link href="Adminassets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

    <link rel="shortcut icon" href="assets/img/BatchLogoForAdmin.jpg" type="image/x-icon"/>

    <script src="Adminassets/js/jquery-1.10.2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Admin.aspx">Admin</a>
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Admin Panel &nbsp; <a href="Logout.aspx" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>


           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
              <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="Adminassets/img/BatchLogoForAdmin.jpg" class="user-image img-responsive"/>
				  </li>
				
					
                    <li>
                        <a class="active-menu"  href="Admin.aspx"><i class="glyphicon glyphicon-dashboard"></i> Dashboard</a>
                    </li>
                     <li>
                        <a   href="AdminViewStudents.aspx"><i class="glyphicon glyphicon-user"></i> Students<!--Morris Charts--></a>
                    </li>
                    <li>
                        <a  href="AdminUploadMaterial.aspx"><i class="glyphicon glyphicon-open"></i><!--Tabs & Panels-->Upload Courseware Material</a>
                    </li>	
                     <li>
                        <a  href="AdminUploadCourseware.aspx"><i class="glyphicon glyphicon-list-alt" ></i> <!--UI Elements-->View Uploaded Courseware</a>
                    </li>
                    <li>
                      <a href="AdminUploadAssignment.aspx"><i class="glyphicon glyphicon-open"></i> <!--UI Elements-->Upload Assignment Material</a>
                  </li>
                  <li>
                      <a  href="AdminViewAssignment.aspx"><i class="glyphicon glyphicon-list-alt"></i> <!--UI Elements-->Assignments</a>
                  </li>
                    
				   

                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Dashboard</h2>   
                        <h5>Welcome Admin. </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="glyphicon glyphicon-user"></i>
                </span>
              <div class="button" >
                <p class="main-text">
				
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                  <asp:Panel ID="Panel1" runat="server">
                    </asp:Panel>
					
				</p>
				
                  <p class="text-muted">Total number of registered users</p>
                    <p class="text-muted">&nbsp;</p>
                </div>
             </div>
		     </div>
                  
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown set-icon">
                    <i class="glyphicon glyphicon-warning-sign"></i>
                </span>
              <div class="text-box" >
                <p class="main-text">
					
				    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
				</p>
                  <p class="text-muted">Total number of users pending approval</p>
                    <p class="text-muted">&nbsp;</p>
                </div>
             </div>
		     </div>
                   
			</div>

                        
        </div>
                 <!-- /. ROW  -->
                <div class="row"> 
                    
                      

           </div>
                 <!-- /. ROW  -->
                <div class="row" >

                 <!-- /. ROW  -->
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
    <script src="Adminassets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="Adminassets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="Adminassets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="Adminassets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="Adminassets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="Adminassets/js/custom.js"></script>
    
   
    </form>
    
   
</body>
</html>

