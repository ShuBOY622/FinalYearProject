<%@page import="com.code.customer.DateTimeDifference"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.code.admin.GlobalFunction"%>
<%@page import="jdk.nashorn.internal.objects.Global"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.conn.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </nav>
                <!-- This Code Hidde On extera large and large Screen End  -->

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
			
	<%
	if(request.getParameter("delete")!=null)
	{
	out.println("<script>alert('Product remove from Cart...!')</script>");	
	}

		String email=session.getAttribute("email").toString();
		String id=request.getParameter("id");
		String sql="select * from product_details where id='"+id+"'";
		Connection con = ConnectionProvider.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		int count=0;
		
		while (rs.next()) 
		{
			count=count+1;
			String file_name = rs.getString("file_name");
			String category = rs.getString("category");
			String p_name = rs.getString("p_name");
			String base_price = rs.getString("base_price");
%>
			
			<%-- <div class="row">
				<div class="span12">
					<div class="well well-small">
						<div class="row-fluid">
							<div class="span5">
								<div id="myCarousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"> <img src="products/<%=file_name %>" alt=""
												style="width: 90%; height:50%"></a>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="span7">
								<h3><%=rs.getString("category") %>&nbsp;&nbsp;(<%=rs.getString("p_name") %>)&nbsp;&nbsp;</h3>
								<hr class="soft" />
								
									<div class="control-group">
										<input type="hidden" name="p_id" value="<%=id%>">
										<label class="control-label"><span><b>Base Price :</b> <%=rs.getString("base_price") %>/-</span></label>
										<div class="controls">
											<label class="control-label"><span><b>No of Beds :</b> <%=p_name %></span></label>
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label"><span><b>Facilities :</b> <%=rs.getString("specification") %></span></label>
										<div class="controls">
											<label class="control-label"><span><b>Upload By :</b> <%=rs.getString("upload_by") %></span></label>
										</div>
										<div class="controls">
											<label class="control-label"><span><b>City :</b> <%=rs.getString("city") %></span></label>
										</div>
									</div>
																		
									<div class="control-group">
										<label class="control-label"><span><b>Status :</b> <%=rs.getString("action") %></span></label>
										<label class="control-label"><span><img alt="" src="products/r.jpg" style="width: 5%"><strong>&nbsp;<%=rs.getString("base_price")%></strong>
										<input type="number" style="width:29px;height:19px;" name="quantity" required></span></label>
									</div>
									
									<div class="control-group">
										<a class="shopBtn" href="SendRequest?id=<%=rs.getString("id")%>"><input type="submit" value="Send Request" class="shopBtn"></a>
									</div>
								</div>
							</div>
				
							<hr class="softn clr" />
							<%} %>
							
								</div>
							</div>
						</div> --%>
						
		<section class="features-landlord-banner">
        <div class="container pb-5 pt-5">
            <div class="align-items-center row">
                <div class="col-lg-5 col-xl-5 col-md-6 left-content mt-md-0 mt-sm-4 mt-xs-4 order-md-0 order-sm-1 order-xs-1">
                    <div class="item active" align="center">
						<h3><b><%=rs.getString("category") %>&nbsp;&nbsp;(<%=rs.getString("p_name") %>)&nbsp;&nbsp;</b></h3>			
						<input type="hidden" name="p_id" value="<%=id%>">
							<label class="control-label"><span><b>Base Price :</b> <%=rs.getString("base_price") %>/-</span></label>
							<div class="controls">
								<label class="control-label"><span><b>No of Beds :</b> <%=p_name %></span></label>
							</div>
							<div class="controls">
								<label class="control-label"><span><b>City :</b> <%=rs.getString("city") %></span></label>
							</div>
							<div class="control-group">
								<label class="control-label"><span><b>Status :</b> <%=rs.getString("action") %></span></label>
								<label class="control-label"><span><img alt="" src="products/r.jpg" style="width: 5%"><strong>&nbsp;<%=rs.getString("base_price")%></strong>
								<input type="number" style="width:39px;height:22px;" name="quantity" required></span></label>
							</div>
									
							<div class="control-group">
								<a class="btn btn-success" href="SendRequest?id=<%=rs.getString("id")%>"><input type="submit" value="Send Request" class="btn btn-success"></a>
							</div>
					</div>
                </div>
                <div class="animate__animated animate__bounce col-md-6 ml-lg-auto ml-xl-auto">
                    <div class="banner-img">
                        <img src="products/<%=file_name %>" class="img-fluid" alt=""
												style="width: 90%; height:50%">
                    </div>
                </div>
                <%} %>
            </div>
        </div> 
    </section>

	<section class="bg-white">
        <div class="container pt-5">
            <div class="row mb-5 pt-4">
                <div class="col-md-12 text-center">
                    <h5 class="font-30 font-weight-bold mb-3">Find Hassle free Rooms</h5>
                    <small class="font-17 dark-color-second">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</small>
                </div>
            </div>

            <div class="pb-5 features-landlord">
                <div class="row mb-5">
                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                                <img class="mt-3" src="../img/icons/features-landlord/map-search.png" alt="">
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Map and list rental search</h5>
                                <p class="dark-color-second font-15 mb-2 mt-4 dark-color-second">Instantly inquire, chat or apply to listings of interest in just a few clicks.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card active">
                            <div class="card-body pb-5 pt-5 text-center">
                                <img class="mt-3" src="../img/icons/features-landlord/check-right.png" alt="">
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Verified landlord</h5>
                                <p class="dark-color-second font-15 mb-2 mt-4 dark-color-second">Instantly inquire, chat or apply to listings of interest in just a few clicks.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                                <img class="mt-3" src="../img/icons/features-landlord/check-right.png" alt="">
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Verified rental listing</h5>
                                <p class="dark-color-second font-15 mb-2 mt-4 dark-color-second">Instantly inquire, chat or apply to listings of interest in just a few clicks.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>
 
    <!-- Footer section Start -->
    <footer class="pb-5 pt-5 footer-section primary-bg-color-first" style="background-image: url('../img/footer-bg-desktop.png');background-repeat: no-repeat, repeat;background-position: bottom;">
        <!-- <div class="footer-bg"></div> -->
        <div class="container">
            <div class="pb-5 pt-5 row">

                <div class="col-lg-5 col-md-5 col-sm-12 footer-widget mt-md-0 mt-sm-5 mt-xs-5">
                    <img class="mb-4" src="../img/logos/Hauskarma-footer-logo.png" alt="">
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
                            Copyright &copy; RooMeet: The Rooms and Room-Mate Finder
                        </span>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/main.js"></script>
</body>
</html>