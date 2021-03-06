<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cheaperbooks | Admin</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="<c:url value="/resourcess/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
     <link href="<c:url value="/resourcess/vendors/font-awesome-4.2.0/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resourcess/css/styles/black.css"/>" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="<c:url value="/resourcess/css/panel.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resourcess/css/metisMenu.css"/>" rel="stylesheet" type="text/css"/>
    <!-- end of global css -->
    <!--page level css -->
    <link href="<c:url value="/resourcess/vendors/jasny-bootstrap/css/jasny-bootstrap.css"/>" rel="stylesheet" />
    <!--end of page level css-->
	 <!--page level css -->
	<link href="<c:url value="/resourcess/vendors/datatables/css/select2.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resourcess/vendors/datatables/css/dataTables.bootstrap.css"/>"rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resourcess/css/pages/tables.css"/>" rel="stylesheet" type="text/css" />
    <!--end of page level css-->
	<!--page level css -->
	<link href="<c:url value="/resourcess/vendors/modal/css/component.css"/>"rel="stylesheet" />
    <!--end of page level css-->
</head>
<body class="skin-josh">
    <header class="header">
        <a href="index.html" class="logo">
            <img src="resourcess/img/logo.png" alt="logo"></a>
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="message-flag" data-loop="true" data-color="#42aaca" data-hovercolor="#42aaca" data-size="28"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages pull-right">
                            <li class="dropdown-title">4 New Messages</li>
                            <li class="unread message">
                                <a href="javascript:;" class="message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body"> <strong>Riot Zeast</strong>
                                        <br>
                                        Hello, You there?
                                        <br>
                                        <small>8 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body"> <strong>John Kerry</strong>
                                        <br>
                                        Can we Meet ?
                                        <br>
                                        <small>45 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Jenny Kerry</strong>
                                        <br>
                                        Dont forgot to call...
                                        <br>
                                        <small>An hour ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Ronny</strong>
                                        <br>
                                        Hey! sup Dude?
                                        <br>
                                        <small>3 Hours ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="footer">
                                <a href="#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="livicon" data-name="bell" data-loop="true" data-color="#e9573f" data-hovercolor="#e9573f" data-size="28"></i>
                            <span class="label label-warning">7</span>
                        </a>
                        <ul class=" notifications dropdown-menu">
                            <li class="dropdown-title">You have 7 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">after a long time</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Just Now
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="gift" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">Jef's Birthday today</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Few seconds ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="dashboard" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">out of space</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            8 minutes ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon bg-aqua" data-n="hand-right" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">New friend request</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            An hour ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon danger" data-n="shopping-cart-in" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">On sale 2 products</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            3 Hours ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="image" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">Lee Shared your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Yesterday
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="thumbs-up" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">David liked your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            2 July 2014
                                        </small>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img data-src="holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                            <div class="riot">
                                <div>
                                    Riot
                                    <span>
                                        <i class="caret"></i>
                                    </span>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header bg-light-blue">
                                <img data-src="holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                                <p class="topprofiletext">Riot Zeast</p>
                            </li>
                            <!-- Menu Body -->
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    My Profile
                                </a>
                            </li>
                            <li role="presentation"></li>
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="gears" data-s="18"></i>
                                    Account Settings
                                </a>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="lockscreen.html">
                                        <i class="livicon" data-name="lock" data-s="18"></i>
                                        Lock
                                    </a>
                                </div>
                                <div class="pull-right">
                                    <a href="login.html">
                                        <i class="livicon" data-name="sign-out" data-s="18"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas" style="background-color: rgb(84, 125, 121); min-height: 662px;">
            <section class="sidebar ">
                <div class="page-sidebar  sidebar-nav" style="background-color:#547d79;">
                    <div class="clearfix"></div>
                    <!-- BEGIN SIDEBAR MENU -->
                    <ul class="page-sidebar-menu" id="menu">
					<!-- Dashboard -->
                        <li >
                            <a href="http://localhost:8080/cheaperbooks/dashboard">
                                <i class="livicon" data-name="home" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
					<!-- Dashboard -->
					
						
                     </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
            </section>
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Dashboard</h1>
            </section>

									
                        <!-- Tables -->
                     <div class="col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Image</th>
                                                <th>Title</th>
                                                <th>Category</th>
                                                <th>Description</th>
												<th>Seller Name</th>
												<th>Date Posted</th>
											
												
												<th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
											   <c:forEach var="x" items="${list}">
                                      			    <tr>
                            			                <td>${x.adsid }</td>
			                                            <td>${x.image }</td>	
			                                            <td>${x.title }</td>	
			                                            <td>${x.category }</td>	
			                                            <td>${x.description }</td>	
			                                            <td>${x.sellername }</td>	
			                                            <td>${x.dateposted }</td>	
			                                           
			                                           <td>
                                           <button class="btn btn-success" href="#responsive" data-toggle="modal" data-id="${e.emp_id }" data-fname="${e.emp_fname }" data-mname="${e.emp_mname }"data-lname="${e.emp_lname }"data-age="${e.emp_age }"data-contactnumber="${e.emp_contact_number }"data-address="${e.emp_address }" data-emailaddress="${e.emp_email_address }"> Edit</button>	
                                                   	
													 <a class="btn btn-danger" type="button"  onclick="bura(${e.emp_id})">
                                                        <i class="fa fa-trash-o"></i>
                                                        Delete
                                                    </a>
                                                </td>
			                                        </tr>
			                                    </c:forEach>	
			                                  												
										</tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
					</div>
					<!-- Tables -->
					
						<!--- responsive model -->
				<form:form class="form-horizontal" id="updateForm" action="employee/update" method="post" modelAttribute="EmployeeModel"><fieldset>
                <div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                                <h4>Edit</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <!-- <h4>Some More data</h4> -->
                                         <p>
                                        	
                                       
                                           <input id="empid" name="emp_id" class="form-control" type="hidden" />
                                        </p>
                                        <p>
                                        	
                                           <input id="firstname" name="emp_fname" type="text" placeholder="First name" class="form-control"/>
                                        </p>
                                        <p>
                                           <input id="middlename" name="emp_mname" type="text" placeholder="Middle name" class="form-control"/>
                                        </p>
                                        <p>
                                            <input id="lastname" name="emp_lname" type="text" placeholder="Last name" class="form-control"/>
                                        </p>
                                        <p>
                                            <input id="age" name="emp_age" type="text" placeholder="Age" class="form-control"/>
                                        </p>
                                        <p>
                                             <input id="contactnumber" name="emp_contact_number" type="text" placeholder="Contact number" class="form-control"/>
                                        </p>
                                        <p>
                                             <input id="address" name="emp_address" type="text" placeholder="Address" class="form-control"/>
                                        </p>
										<p>
                                            <input id="emailaddress" name="emp_email_address" type="text" placeholder="Email address" class="form-control"/>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                </fieldset>
			      	</form:form>
					<!-- END modal-->
        </aside>
        <!-- right-side -->
	</div>
		
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
   <!-- global js -->
    <script src="<c:url value="/resourcess/js/jquery-1.11.1.min.js"/>"> </script>
    <script src="<c:url value="/resourcess/js/bootstrap.min.js"/>"></script>
    <!--livicons-->
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/livicons/minified/raphael-min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/livicons/minified/livicons-1.4.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resourcess/js/josh.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/js/metisMenu.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/holder-master/holder.js"/>"> </script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <script src="<c:url value="/resourcess/vendors/jasny-bootstrap/js/jasny-bootstrap.js"/>"></script>
    <!-- end of page level js -->
	    <!-- begining of page level js -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/datatables/select2.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/datatables/jquery.dataTables.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/datatables/dataTables.bootstrap.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/js/pages/table-editable.js"/>"> </script>
    <!-- end of page level js -->
	 <script src="<c:url value="/resourcess/vendors/modal/js/classie.js"/>"></script>
    <script src="<c:url value="/resourcess/vendors/modal/js/modalEffects.js"/>"></script>
     <script>
     $('#responsive').on('show.bs.modal', function (e) {
   	  // get information to update quickly to modal view as loading begins
   	  var opener=e.relatedTarget;//this holds the element who called the modal
   	   
   	  //we get details from attributes
   	  var empid=$(opener).attr('data-id');
   	  var fname=$(opener).attr('data-fname');
   	  var mname=$(opener).attr('data-mname');
   	  var lname=$(opener).attr('data-lname');
   	  var age=$(opener).attr('data-age');
   	  var contact=$(opener).attr('data-contactnumber');
   	  var address=$(opener).attr('data-address');
   	  var email=$(opener).attr('data-emailaddress');
   	  

   	  //set what we got to our form
	  	  $('#updateForm').find('[id="empid"]').val(empid);
     	  $('#updateForm').find('[id="firstname"]').val(fname);
     	  $('#updateForm').find('[id="middlename"]').val(mname);
     	  $('#updateForm').find('[id="lastname"]').val(lname);
     	  $('#updateForm').find('[id="age"]').val(age);
     	  $('#updateForm').find('[id="contactnumber"]').val(contact);
     	  $('#updateForm').find('[id="address"]').val(address);
     	  $('#updateForm').find('[id="emailaddress"]').val(email);

   	});
     
     function bura(x){
			if(confirm("Are you sure you want to delete?") == true){
				window.location.href = 'employee/delete/'+x;
			}
			else{
				
			}
		}
	</script>
</body>
</html>