<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAssignmentPanel.aspx.cs" Inherits="GISystematix_Asp.StudentAssignmentPanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head>
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Assignment Panel</title>
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
   <link rel="shortcut icon" href="assets/img/BatchLogoForAdmin.jpg">
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
                    
                </li>

            </ul>

        </div>

    </nav>
    </div>


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
                        <a class="active-menu" href="StudentAssignmentPanel.aspx"><i class="glyphicon glyphicon-open"></i><!--Tabs & Panels-->Assignment</a>

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
        
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Student Assignment submission Panel </h2>   
                        
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
                            Basic Tab For Assignment Submission</div>
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class=""><a href="#home" data-toggle="tab">SUMMARY</a>
                                </li>
                                <li class="active"><a href="#profile" data-toggle="tab">SUBMIT ASSIGNMENT</a>
                                
                               
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
   <th>Assignment Title</th>
    <th>Submission Date</th>
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

                            <div class="checkbox">
                                                <label>
                                                    <input value="" type="checkbox">I hereby declare that the attached assignment is my own work, that all sources of reference are acknowledged in full and that the work has not been submitted for any other course. I understand that my assignment will be screened by GISystematix' plagiarism detection system, and if found guilty of any infringement, penalties will apply in line with the institution's policy on Academic Impropriety.<input/>
                                                    </br>
                                                </label>
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
