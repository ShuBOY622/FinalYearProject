<%@page import="com.db.conn.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title><jsp:include page="projectTitle.jsp"></jsp:include></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" />
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link rel="shortcut icon" href="assets/ico/favicon.ico">
</head>
<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw"></div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div id="gototop"></div>
		<header id="header">
		<div class="row">
			<div class="span4">
				<h1>
					<a class="logo" href="index.jsp"><span><jsp:include
								page="projectTitle.jsp"></jsp:include></span> <img
						src="assets/img/umai.png"
						alt="bootstrap sexy shop"> </a>
				</h1>
			</div>
			<div class="span4 alignR"></div>
		</div>
		</header>

		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a data-target=".nav-collapse" data-toggle="collapse"
						class="btn btn-navbar"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="nav-collapse">
						<jsp:include page="Header/adminHeader.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="well np">
					<div id="myCarousel" class="carousel slide homCar"></div>
					<div class="well well-small">
						<h3 align="center">View Product Sale Statistic Analysis</h3>
						<hr class="soften" />
						<div class="row-fluid" align="center">
							<div id="newProductCar" class="carousel slide">
								<div class="carousel-inner">
									<div class="item active" align="center">
										<div align="center">
											<script type="text/javascript">
												window.onload = function() {
													var chart = new CanvasJS.Chart(
															"chartContainer",
															{
																title : {
																	text : "Graph"
																},
																data : [ 
																         {
																			type : "column",
																			dataPoints : [{y : 10,label : "Maharashtrian"},
																			              {y : 5,label : "Rajasthani"},
																			              {y : 7,label : "Panjabi"},
																			              {y : 1,label : "Gujarathi"},
																			              {y : 12,label : "Leaker"},]
																         } ]
															});
													chart.render();
												}
											</script>
											<script src="jquery.canvasjs.min.js"></script>

											<script src="canvasjs.min.js"></script>
											<div id="chartContainer" style="height: 400px; width: 500px;"></div>
											<!-- <a href="adminHome.jsp"><img src="Images/back.png"
												height=30px align="left"></a><br> -->
										</div>
										<br /> <br /> <br />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="copyright">
				<div class="container">
					<p class="pull-right"></p>
					<span>Copyright &copy; RooMeet: The Rooms and Room-Mate Finder </span>
				</div>
			</div>
			<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
			<script src="assets/js/jquery.js"></script>
			<script src="assets/js/bootstrap.min.js"></script>
			<script src="assets/js/jquery.easing-1.3.min.js"></script>
			<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
			<script src="assets/js/shop.js"></script>
</body>
</html>