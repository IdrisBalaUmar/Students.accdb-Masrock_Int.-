<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewStudents.aspx.cs" Inherits="GISystematix_Asp.AdminViewStudents" %>

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

          <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="Adminassets/img/BatchLogoForAdmin.jpg" alt="" class="user-image img-responsive"/>
					</li>
				
					
                      <li>
                        <a   href="Admin.aspx"><i class="glyphicon glyphicon-dashboard"></i> Dashboard</a>
                    </li>
                     <li>
                        <a class="active-menu"  href="AdminViewStudents.aspx"><i class="glyphicon glyphicon-user"></i> Students<!--Morris Charts--></a>
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

        <script>
            $(document).ready(function () {
                $('#info').on('show.bs.modal', function (e) {
                    var eid = $(e.relatedTarget).data('id');
                    $(e.currentTarget).find('input[name="Sid"]').val(eid);
                    var efname = $(e.relatedTarget).data('f_name');
                    $(e.currentTarget).find('input[name="FName"]').val(efname);
                    var elname = $(e.relatedTarget).data('l_name');
                    $(e.currentTarget).find('input[name="LName"]').val(elname);
                    var eoname = $(e.relatedTarget).data('o_name');
                    $(e.currentTarget).find('input[name="OName"]').val(eoname);
                    var eemail = $(e.relatedTarget).data('email');
                    $(e.currentTarget).find('input[name="Email"]').val(eemail);
                    var egender = $(e.relatedTarget).data('gender');
                    $(e.currentTarget).find('input[name="Gender"]').val(egender);
                    var equalify = $(e.relatedTarget).data('qualify');
                    $(e.currentTarget).find('input[name="Quali"]').val(equalify);
                    var eoccupy = $(e.relatedTarget).data('occupy');
                    $(e.currentTarget).find('input[name="Occup"]').val(eoccupy);
                    var ecomp_proc = $(e.relatedTarget).data('comp_proc');
                    $(e.currentTarget).find('input[name="CompProf"]').val(ecomp_proc);
                    var ecourse1 = $(e.relatedTarget).data('course1');
                    $(e.currentTarget).find('input[name="C1"]').val(ecourse1);
                    var ecourse2 = $(e.relatedTarget).data('course2');
                    $(e.currentTarget).find('input[name="C2"]').val(ecourse2);
                    var ecourse3 = $(e.relatedTarget).data('course3');
                    $(e.currentTarget).find('input[name="C3"]').val(ecourse3);
                    var ecourse4 = $(e.relatedTarget).data('course4');
                    $(e.currentTarget).find('input[name="C4"]').val(ecourse4);
                    var ecourse5 = $(e.relatedTarget).data('course5');
                    $(e.currentTarget).find('input[name="C5"]').val(ecourse5);
                    var ecourse6 = $(e.relatedTarget).data('course6');
                    $(e.currentTarget).find('input[name="C6"]').val(ecourse6);
                    var ecourse7 = $(e.relatedTarget).data('course7');
                    $(e.currentTarget).find('input[name="C7"]').val(ecourse7);
                    var ecourse8 = $(e.relatedTarget).data('course8');
                    $(e.currentTarget).find('input[name="C8"]').val(ecourse8);
                    var ecourse9 = $(e.relatedTarget).data('course9');
                    $(e.currentTarget).find('input[name="C9"]').val(ecourse9);
                    var ecourse10 = $(e.relatedTarget).data('course10');
                    $(e.currentTarget).find('input[name="C10"]').val(ecourse10);
                    var ecourse11 = $(e.relatedTarget).data('course11');
                    $(e.currentTarget).find('input[name="C11"]').val(ecourse11);
                    var ecomment = $(e.relatedTarget).data('comment');
                    $(e.currentTarget).find('input[name="Comment"]').val(ecomment);
                    $(document).on("click", "#acceptbtn", function (event) {

                    });
                })
            })
</script>


        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Student Applications</h2>
                        <h5>Welcome Admin. </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />

                 <div class="row">

               
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
                            </button>-->
                            <div class="modal fade" id="info" tabifndex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                           <!-- <h4 class="modal-title" id="myModalLabel">Modal title Here</h4>-->
                                        </div>
                                       
                                        <div class="modal-body">
                                        
                                             </div>
                    <form action="AdminViewStudents.aspx" runat="server" method="post">
                <div class="modal-body">
               <h3>  <Center>Verify Pending Student Details</Center> </h3>
                 <div class="form-group">
                
<label>Student Id</label>
                    
<input id="Sid" class="form-control" runat="server" name="sid" readonly/>
<label>First Name</label>
<input id="FName" class="form-control" runat="server" name="sf_name" readonly/>
<label>Last Name</label>
<input id="LName" class="form-control" runat="server" name="sl_name" readonly/>
<label>Other Names</label>
<input id="OName" class="form-control" runat="server" name="so_name" readonly/>
<label>Email</label>
<input id="Email" class="form-control" runat="server" name="semail" readonly/>
                     <label>Gender</label>
                     <input id="Gender" class="form-control" runat="server" name="sgender" readonly/>
<label>Qualification</label>
<input id="Quali" class="form-control" runat="server" name="squalify" readonly/>
<label>Occupation</label>
<input id="Occup" class="form-control" runat="server" name="soccupy" readonly/>
                     <label>Computer Proficiency</label>
                     <input id="CompProf" runat="server" class="form-control" name="scomp_proc" readonly/>
<label>Introduction to GIS</label>
<input id="C1" class="form-control" runat="server" name="scourse1" readonly/>
                     <label>Image Processing Analysis</label>
                     <input id="C2" runat="server" class="form-control" name="scourse2" readonly/>
                     <label>Introduction to Web Mapping</label>
                     <input id="C3" runat="server" class="form-control" name="scourse3" readonly/>
                     <label>Certificate in Remote Sensing</label>
                     <input id="C4" runat="server" class="form-control" name="scourse4" readonly/>
                     <label>Principles of Remote Sensing</label>
                     <input id="C5" runat="server" class="form-control" name="scourse5" readonly/>
                     <label>Advanced GIS Techniques</label>
                     <input id="C6" runat="server" class="form-control" name="scourse6" readonly/>
                     <label>Certificate in GIS</label>
                     <input id="C7" runat="server" class="form-control" name="scourse7" readonly/>
                     <label>Diploma in Remote Sensing</label>
                     <input id="C8" runat="server" class="form-control" name="scourse8" readonly/>
                     <label>Spatial Data Management</label>
                     <input id="C9" runat="server" class="form-control" name="scourse9" readonly/>
                     <label>GIS and Hydrology</label>
                     <input id="C10" runat="server" class="form-control" name="scourse10" readonly/>
                     <label>Diploma in GIS</label>
                     <input id="C11" runat="server" class="form-control" name="scourse11" readonly/>


<label>Expectation</label>
<input id="Comment" runat="server" class="form-control" name="scomment" readonly/>

                                                     
  </div>
                                        <div class="modal-footer">
                                            <asp:Button ID="acceptbtn" class="btn btn-success" name="submit" runat="server" OnClick="acceptbtn_Click" Text="Accept" />
                                            <asp:Button ID="declinebtn" class="btn btn-danger" name="decline" runat="server" OnClick="declinebtn_Click" Text="Decline" />
                                            
                                        </div>
                                    </div>
                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                     <!-- End Modals-->

                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th><!--Rendering engine-->Student Id</th>
                                            <th><!--Browser-->First Name</th>
                                            <th><!--Platform(s)-->Last Name</th>
											<th><!--Platform(s)-->Action</th>

											
                                        </tr>
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

             <!-- /. PAGE INNER  -->
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

