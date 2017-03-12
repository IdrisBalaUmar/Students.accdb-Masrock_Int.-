<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUploadMaterial.aspx.cs" Inherits="GISystematix_Asp.AdminUploadMaterial" %>

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
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Admin Panel &nbsp; <a href="Logout.aspx" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>


        <form id="form1" runat="server">
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="Adminassets/img/BatchLogoForAdmin.jpg" class="user-image img-responsive"/>
				  </li>
				
					
                    <li>
                        <a href="Admin.aspx"><i class="glyphicon glyphicon-dashboard"></i> Dashboard</a>
                    </li>
                     <li>
                        <a   href="AdminViewStudents.aspx"><i class="glyphicon glyphicon-user"></i> Students<!--Morris Charts--></a>
                    </li>
                    <li>
                        <a class="active-menu" href="AdminUploadMaterial.aspx"><i class="glyphicon glyphicon-open"></i><!--Tabs & Panels-->Upload Courseware Material</a>
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
                     <h2><B>Upload Panel </B></h2>   
                        <h5>Welcome Admin. </h5>
                       
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
                            <strong>Upload Courseware</strong> 
                          <div class="form-group">
                                            
                                            
                                </div>
            <div class="form-group">
                                            <label>Courses</label>
                                            
                                            <br />
                                            <asp:DropDownList ID="DropDownList1" runat="server" Cssclass="form-group form-control" name="Courses"
                                                DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:cn %>" 
                                                SelectCommand="SELECT [CourseName] FROM [Courses]"></asp:SqlDataSource>
&nbsp;<div class="form-group">
                    <label>Description</label>
                    <textarea ID="CDesc" class="form-control" rows="3" name="course_desc" runat="server"></textarea><P>
                </div>

                <div class="form-group">
                    <label>Upload Document</label>
                    <input id="File" type="file" name="file" runat="server">
                    <center>
                        <asp:Button ID="Button1" class="btn btn-lg btn-primary" name="signin" 
                            type="submit" runat="server" Text="Upload" onclick="Button1_Click" />
                    </center>
                    <br>
                </div>


                        </div>
                    </div>
                </div>
            </div>


    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
        </form>

       

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="Adminassets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="Adminassets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="Adminassets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="Adminassets/js/custom.js"></script>
    
   
</body>
</html>
