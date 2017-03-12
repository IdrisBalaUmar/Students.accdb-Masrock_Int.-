<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUploadAssignment.aspx.cs" Inherits="GISystematix_Asp.AdminUploadAssignment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Upload Assignment</title>
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

        
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/BatchLogoForAdmin.jpg" width="150" class="user-image img-responsive"/>
					</li>
				
					
                      <li>
                        <a href="Admin.aspx"><i class="glyphicon glyphicon-dashboard"></i> Dashboard</a>
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
                      <a class="active-menu" href="AdminUploadAssignment.aspx"><i class="glyphicon glyphicon-open"></i> <!--UI Elements-->Upload Assignment Material</a>
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
                     <h2><strong>Admin Assignment Upload Panel</strong> </h2>   
                        
  <div class="round">
  
 
       
        </div>
        
                    
                    
                </div>
                 
                 <hr>
                                 
            <form id="form1" runat="server">
                    <!-- /. ROW  -->
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Tab For Assignment Upload</div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class=""><a href="#home" data-toggle="tab">SUMMARY</a>
                                </li>
                                <li class="active"><a href="#profile" data-toggle="tab">UPLOAD ASSIGNMENT</a>
                                
                               
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade" id="home">
                                    <!--<h4>Home Tab</h4>-->
                                    <p></p><div class="panel panel-default">
                        <div id="Div1" >
            <div id="Div2">
                <div class="row">
                    <div class="col-md-12">
                     
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
   <th>Assignment Description</th>
   <th>Document Title</th>
    <th>Upload Date</th>
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
                    </div><p></p>
                                </div>
                                <div class="tab-pane fade active in" id="profile">
                                   
                                    <p></p><div class="form-group">
                                            <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong><h3>Upload Assignment</h3></strong>
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
                                         </p>
                                             
                                        <p></p>
                                </div>
                                <div class="tab-pane fade" id="messages">
                                   
                                <div class="tab-pane fade" id="settings">
                                    <h4>Settings Tab</h4>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
                    

    </div>
             <!-- /. PAGE INNER  -->
            </div>
            </form>
         <!-- /. PAGE WRAPPER  -->
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
         <!-- /. PAGE WRAPPER  -->
        </div>

    </form>
</body>
</html>
