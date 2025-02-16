<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.conn.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home</title>
    <meta charset="UTF-8">
    <meta name="description" content="x">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/themify-icons.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/style.css" /> 
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="stylesheet" href="css/animate.css">
</head>
<body>
<%
	if(request.getParameter("update")!=null)
	{
	out.println("<script>alert('Your Request Send Sucessful....!')</script>");	
	}
	if(request.getParameter("add")!=null)
	{
		out.print("<script>alert('Product Add To Cart Done')</script>");
	}
%>
    <!-- Header section -->
    <header class="header-section shadow-none clearfix bg-transparent">
        <div class="container">
            <div class="align-items-center row">
                <div class="col-6 col-lg-3 col-md-3 col-sm-6 text-xs-center">
                    <a href="CustomerHome.jsp" class="site-logo">
                        <img src="assets/img/logo.png" alt="">
                    </a>
                </div>

                <!-- This Code Hidde On extera large and large Screen Start  -->
                <div class="col-4 col-sm-5 col-md-8 col-lg-3 text-right text-xs-center align-self-center d-xl-none d-lg-none">
                    <a href="../renter-login/login.html" class="btn font-weight-bold pl-4 pr-4 secondary-bg-color-first site-btn">LOGIN</a>
                </div>

                <nav class="navbar-nav main-menu d-xl-none d-lg-none">
                    <ul class="menu-list">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="pricing-renter.html">Services</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </nav>

                <div class="col-2 col-sm-1 col-md-1 col-lg-7 text-center">
                    <div class="responsive-bar"><i class="fa fa-bars"></i></div>
                    <!-- This Code Show On extera large and large Screen Start  -->
                    <nav class="navbar-nav main-menu d-md-none d-sm-none d-xs-none d-lg-block">
                        <ul class="menu-list">
                            <li class=""><a href="CustomerHome.jsp"><b>Home </b></a></li>
							<li class=""><a href="Profile.jsp"><b>Profile </b></a></li>
							<li class=""><a href="RoomAvailability.jsp"><b>Flat Availability</b></a></li>
							<li class=""><a href="MyBookings.jsp"><b>My bookings </b></a></li>
							<li class=""><a href="Logout">Logout</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
	</header>

    <section class="features-landlord-banner">
        <div class="container pb-5 pt-5">
            <div class="align-items-center row">
                <div class="col-lg-5 col-xl-5 col-md-6 left-content mt-md-0 mt-sm-4 mt-xs-4 order-md-0 order-sm-1 order-xs-1">
                    <div class="item active" align="center">
									<h3><b>Welcome to the RooMeet: <br>The Rooms and Room-Mate Finder</b> 
									<hr/>
									Mr./Ms. <%=session.getAttribute("name").toString()%></h3>
								</div>
		                </div>
		                <div class="animate__animated animate__bounce col-md-6 ml-lg-auto ml-xl-auto">
                    <div class="banner-img">
                        <img src="assets/img/rent.jpg" class="img-fluid">
                    </div>
                </div>
            </div>
        </div> 
    </section>

<section class="prodView">

				
				<div class="well well-small-prod">
					<div class="row-fluid" align="center">
						<div id="newProductCar" class="carousel slide">
							<div class="carousel-inner">
								<div class="item active" align="center">
								<form action="CustViewProducts.jsp" method="POST">
									<table>
										<tr>
											<td><input type="text" name="search" required="required"></td>
											<td><input type="submit" value="Search"></td>
										</tr>
									</table>
								</form>
								</div>
							</div>
						</div>
					</div>
					
					<hr class="soften" />
					<div class="row-fluid" align="center">
						<div id="newProductCar" class="carousel slide">
							<div class="carousel-inner">
								<div class="item active" align="center">
									<ul class="thumbnails">

										<%
											String sql="select * from product_details where status='Not_Sell'";
											if(request.getParameter("search")!=null)
											{
												String search=request.getParameter("search");
												System.out.print("Search is "+search);												
												sql="select * from product_details where city='"+search+"' AND status='Not_Sell'";
											}
											
											String email = session.getAttribute("email").toString();
											System.out.print("Email " + email);
	
											Connection con = ConnectionProvider.getConnection();
											PreparedStatement ps = con.prepareStatement(sql);
											ResultSet rs = ps.executeQuery();
											int count=0;
											while (rs.next()) {
												count=count+1;
												String file_name = rs.getString("file_name");
												String id = rs.getString("id");
												String category = rs.getString("category");
												String p_name = rs.getString("p_name");
												String base_price = rs.getString("base_price");
												
										%>
										<li class="span3-prod">
											<div class="thumbnail-prod">
												<div class="caption-prod cntr">
												<form action="AddToCart">
													<h4><%=rs.getString("category")%></h4>
													<img src="products/<%=file_name%>" alt="bootstrap-ring">
													<p><%=rs.getString("p_name")%></p>
													<p><b>Available</b></p>

													<%-- <p>
														<img alt="" src="products/r.jpg" style="width: 20%"><strong>&nbsp;<%=rs.getString("base_price")%></strong>
														<input type="number" style="width:29px;height:19px;" name="quantity" required>
													</p> --%>
													<hr />
													<h4>
														<input type="hidden" name="id" value="<%=id%>">
														<input type="hidden" name="req_type" value="W">
														<!-- <input type="submit" class="shopBtn" value="View Details"> -->
														<a href="ViewDetails.jsp?id=<%=id%>"><b class="shopBtn"><u>View Details</u></b></a>
													</h4>
													
													</form>
													<!-- <br class="clr"> -->
												</div>
											</div>
										</li>
										<%
											int rsl=count%4;
										System.out.println("RSL "+rsl);
											if(rsl==0)
											{
												%>
												</ul>
												<hr/>
												<%
											}
										
										%>

										<%
											}
										%>
									</ul>
								</div>
							</div>
							<!-- <a class="left carousel-control" href="#newProductCar"
								data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
								href="#newProductCar" data-slide="next">&rsaquo;</a> -->
						</div>
					</div>

			
</section>

    <section class="dashboard-five-btn-bg">
        <div class="container pt-5">

            <div class="row mb-5 pt-4">
                <div class="col-md-12 text-center">
                    <h5 class="font-30 font-weight-bold mb-3">Your Dashboard</h5>
                    <small class="font-17 dark-color-second">Explore RooMeet</small>
                </div> 
            </div>

            <div class="pb-5 features-landlord">
                <div class="row mb-5 justify-content-center">
                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center" >
                                <a href="Rooms.jsp"><img class="mt-3" src="assets/img/room.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Find Rooms</h5>
                                <p class="dark-color-second font-15 mb-2 mt-4">Instantly inquire, chat or apply to listings of interest in just a few clicks.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card active">
                            <div class="card-body pb-5 pt-5 text-center">
                                <a href="FlatMateHome.jsp"><img class="mt-3" src="assets/img/roommate.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Find Room-Mate</h5>
                                <p class="dark-color-second font-15 mb-2 mt-4">Instantly inquire, chat or apply to listings of interest in just a few clicks.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                                <a href="https://www.google.com/maps/"><img class="mt-3" src="assets/img/map.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Find By Location</h5>
                                <p class="dark-color-second font-15 mb-2 mt-4">Instantly inquire, chat or apply to listings of interest in just a few clicks.</p>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                                <a href="MyBookings.jsp"><img class="mt-3" src="assets/img/book.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">My Booking</h5>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                                <a href="Profile.jsp"><img class="mt-3" src="assets/img/pro.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Profile</h5>
                            </div>
                        </div>
                    </div>

                    
    </section>


   <!--   <section class="bg-white features-landlord-btn-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="primary-bg-color-first features-landlord-btn-box">
                        <div class="col-lg-6 col-md-10 col-sm-12 mb-md-0 mb-sm-5 mb-xs-5 pb-md-0 pb-sm-5 pb-xs-4">
                            <h2 class="font-weight-bold mb-4 text-white"> Do you want our service?</h2>
                            <div class="btn-group mb-md-0 mb-sm-5 mb-xs-5 mr-2" role="group" aria-label="Second group">
                                <a href="../sign-up.html" class="btn font-weight-bold pl-4 pr-4 secondary-bg-color-first site-btn">Sign Up</a>
                            </div>
                            <div class="btn-group mb-md-0 mb-sm-5 mb-xs-5" role="group" aria-label="Third group">
                                <a href="pricing-landlord.html" class="bg-white btn font-weight-bold pl-4 pr-4 primary-color-first site-btn">
                                    View pricings <img src="../img/icons/primary-arrow.png" class="ml-2">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->


    <!-- Renting Section Code Start -->
    <section class="renting-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-12 text-center">
                    <h2 class="font-30 font-weight-bold mb-4">Renting Made Easy </h2>   
                    <p class="mb-4 pr-4">Find rentals at fair prices, apply, sign leases and pay for your rent all with Huskarma.</p> 
                </div>
            </div>


            
            <div class="row">
                <div class="col-md-10 m-auto">
                    <div class="renting-easy-video">
                        <img class="video-corner-design-t" src="../img/video-corner-design.png">
                        <video id="video" preload="metadata" poster="../img/Frame3.png">
                            <source src="../img/3mb.mp4" type="video/mp4">
                        </video>
                        <img class="video-corner-design-b" src="../img/video-corner-design.png">
                        <div class="play-button-wrapper" id="name">
                            <div id="circle-play-b">
                                <img src="../img/video-play-button.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Renting Section Code End -->

    <!-- Footer section Start -->
    <footer class="pb-5 pt-5 footer-section primary-bg-color-first" style="background-image: url('../img/footer-bg-desktop.png');background-repeat: no-repeat, repeat;background-position: bottom;">
        <!-- <div class="footer-bg"></div> -->
        <div class="container">
            <div class="pb-5 pt-5 row">

                <div class="col-lg-5 col-md-5 col-sm-12 footer-widget mt-md-0 mt-sm-5 mt-xs-5">
                    <img class="mb-4" src="assets/img/logo.png" alt="">
                    <p>Never over pay for rent! We are the premium location for rentals. Using our patented HusKarma rating system we connect landlords and tenants. We ensure tenants never over pay for rent while making sure the landlords properties are
                        taken care of and that rent is always paid on time.</p>
                    <div class="footer-social">
                        <a href=""><i class="fa fa-instagram mt-2" aria-hidden="true"></i></a>
                        <a href=""><i class="fa fa-dribbble mt-2" aria-hidden="true"></i></a>
                        <a href=""><i class="fa fa-twitter mt-2" aria-hidden="true"></i></a>
                        <a href=""><i class="fa fa-youtube-play mt-2" aria-hidden="true"></i></a>

                    </div>
                </div>

                <div class="col-md-3 col-sm-12 colo-lg-3 footer-widget mt-md-0 mt-sm-5 mt-xs-5">
                    <h5 class="widget-title ml-lg-5 ml-xl-5 pl-lg-5 pl-xl-5 font-21 font-menu font-weight-bold">Quick Links</h5>
                    <ul class="ml-lg-5 ml-xl-5 pl-lg-5 pl-xl-5">
                        <li><a href="about-us.html">About</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="faqs.html">FAQ</a></li>
                        <li><a href="terms.html">Terms</a></li>
                        <li><a href="policy.html">Privacy</a></li>
                        <li><a href="contact-us.html">Contact us</a></li>
                    </ul>
                </div>

                <div class="col-sm-12 col-md-4 col-lg-4 footer-widget pl-lg-5 pl-3 mt-sm-5 mt-xs-5 mt-md-0">
                    <h5 class="font-21 font-menu font-weight-bold widget-title">Get in Touch</h5>

                    <ul class="mb-3">

                        <li class="mb-3">
                            <img src="../img/footer-sms-icon.png" alt="">
                            <a class="d-inline-block ml-2" href="#">info@leasimple.com</a>
                        </li>
                        <li class="mb-3">
                           <img src="../img/footer-location-icon.png" alt="">
                            <a class="d-inline-block ml-2" href="#">Toronto, Canada</a>
                        </li>
                        <li class="d-flex">
                            <a href="#" class="appicon mr-4"><img src="../img/icons/appstore.png" alt=""></a>
                            <a href="#" class="appicon"><img src="../img/icons/playstore.png" alt=""></a>
                        </li>

                    </ul>

                </div>

            </div>
        </div>
    </footer>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <ul class="footer-nav">
                        <span class="font-15 font-weight-normal">
                            Copyright 2021 - All Rights Reserved <a href="#" target="_blank">Huskarma.</a>
                        </span>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Section End -->


    <!--====== Javascripts & Jquery ======-->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/main.js"></script>

</body>

</html>
