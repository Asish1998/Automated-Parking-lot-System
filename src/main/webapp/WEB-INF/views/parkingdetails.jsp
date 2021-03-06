<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.myproject.myapp.models.UserInfo"%>

<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="resources/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Automated parking</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="resources/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="resources/css/light-bootstrap-dashboard.css?v=1.4.0"
	rel="stylesheet" />

<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="resources/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

	<%
UserInfo u=(UserInfo)session.getAttribute("userinfo");

%>
	<div class="wrapper">
		<div class="sidebar" data-color="gray"
			data-image="resources/img/sidebar-5.jpg">

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="http://www.creative-tim.com" class="simple-text">
						Parkomatic </a>
				</div>

				<ul class="nav">
					<li><a href="userhome"> <i class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="user.html"> <i class="pe-7s-user"></i>
							<p>User Profile</p>
					</a></li>
					<li class="active"><a href="usermap"> <i
							class="pe-7s-map-marker"></i>
							<p>Maps</p>
					</a></li>
					<li><a href="notifications.html"> <i class="pe-7s-bell"></i>
							<p>Notifications</p>
					</a></li>
					<!-- <li class="active-pro">
                    <a href="upgrade.html">
                        <i class="pe-7s-rocket"></i>
                        <p>Upgrade to PRO</p>
                    </a>
                </li> -->
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navigation-example-2">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Dashboard</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-left">

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-globe"></i> <b
								class="caret hidden-lg hidden-md"></b>
								<p class="hidden-lg hidden-md">
									5 Notifications <b class="caret"></b>
								</p>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#"><%= u.getLatitude() %></a></li>
								<li><a href="#">${u.latitude}</a></li>
								<li><a href="#">Notification 3</a></li>
								<li><a href="#">Notification 4</a></li>
								<li><a href="#">Another notification</a></li>
							</ul></li>
						<li><a href=""> <i class="fa fa-search"></i>
								<p class="hidden-lg hidden-md">Search</p>
						</a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="">
								<p><%=u.getFname()%></p>
						</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">
								<p>
									Dropdown <b class="caret"></b>
								</p>

						</a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
						<li><a href="userlogout">
								<p>Log out</p>
						</a></li>
						<li class="separator hidden-lg"></li>
					</ul>
				</div>
			</div>
			</nav>


			<div class="content">
				<div class="container-fluid">
					<div class="row">

						<p>parkingname = ${parkModel.name}</p>

						<a href="userbook">Book -></a>
					</div>
				</div>
			</div>


			<footer class="footer">
			<div class="container-fluid">
				<nav class="pull-left">
				<ul>
					<li><a href="userhome"> Home </a></li>
					<li><a href="#"> Company </a></li>
					<li><a href="#"> Portfolio </a></li>
					<li><a href="#"> Blog </a></li>
				</ul>
				</nav>
				<p class="copyright pull-right">
					&copy;
					<script>document.write(new Date().getFullYear())</script>
					<a href="http://www.creative-tim.com">Creative Tim</a>, made with
					love for a better web
				</p>
			</div>
			</footer>

		</div>
	</div>


</body>

<!--   Core JS Files   -->
<script src="resources/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="resources/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="resources/js/bootstrap-notify.js"></script>


<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="resources/js/light-bootstrap-dashboard.js?v=1.4.0"></script>


</html>
