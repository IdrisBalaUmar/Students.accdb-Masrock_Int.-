﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewUploadedCourseware.aspx.cs" Inherits="GISystematix_Asp.AdminUploadCourseware" %>

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
            </div>4
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Admin Panel &nbsp; <a href="#" class="btn btn-success square-btn-adjust">Go To Exam Panel</a> </div>
        </nav>

        
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/BatchLogoForAdmin.jpg" width="150" class="user-image img-responsive"/>
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
                     <h2>Uploaded Courseware</h2>   
                        <h5>Welcome Admin. </h5>

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

                                        
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
   <thead><tr>
   <th>Course Name</th>
   <th>Course Material</th>
   <th>Course Description</th>
    <th>Action</th>
     </thead>


                                    <tbody>
                                        <asp:Panel ID="Panel1" runat="server">
                                        </asp:Panel>
                                    

                                    </tbody>
                                </table>
                            </div>  
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
            </div>
            </div>
        </div>
           <!-- </div>-->
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="Adminassets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="Adminassets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="Adminassets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="Adminassets/js/dataTables/jquery.dataTables.js"></script>
    <script src="Adminassets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>

         <!-- CUSTOM SCRIPTS -->
    <script src="Adminassets/js/custom.js"></script>
    
   
</body>
</html>
