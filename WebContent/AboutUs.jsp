
<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
					<div class="pull-left socialNw">
					</div>
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
						<jsp:include page="Header/mainHeader.jsp"></jsp:include>						
						</div>
					</div>
				</div>
			</div>		
			
<%
	if(request.getParameter("delete")!=null)
	{
	out.println("<script>alert('Product remove from Cart...!')</script>");	
	}
%>
			
			<div class="row">
				<div class="span12">
					<div class="well well-small">
						<div class="row-fluid">
							<div class="span5">
								<div id="myCarousel">
									<div class="carousel-inner">
										<div class="item active">
											<a href="#"><br> <img src="assets/img/logo.png" alt=""
												style="width: 90%; height:90%"></a>
										</div>
									</div>
								</div>
							</div>
							
							<!-- <h4>Bidding Time</h4> 
							<div class="span7">
								<h2>Welcome To RooMeet </h2>
								<!-- <h3>Feel Free to Contact Us </h3> -->
								<hr class="soft" />
																	
									<!-- <div class="control-group">
										<label class="control-label"><span><b>Hotel Name : </b> </span></label>
										<label class="control-label"><span><b>Hotel Valencia</b> </span></label>
									</div> -->
									
									<!-- <div class="control-group">
										<label class="control-label"><span><b>Address :</b> </span></label>
										<label class="control-label"><span>Hotel Valencia, ABC Junction, UK (United Kingdom) </span></label>
									</div>
									
									<div class="control-group">
										<label class="control-label"><span><b>Contact No. :</b> </span></label>
										<label class="control-label"><span>+91 8888888888</span></label>
									</div> -->
									
								<!-- </div>
							</div>
				
							<hr class="softn clr" />
							
								</div>
							</div>
						</div>
					</div>

	<div class="copyright">
		<div class="container">
			<p class="pull-right"></p>
			<span>Copyright &copy; RooMeet: The Rooms and Room-Mate Finder
			</span>
			<p class="pull-right"><a href="https://www.google.com/maps/"><img style="width: 20%" src="Images/map.jpg"></a></p>
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
-->

<!DOCTYPE html>
<html lang="en">

<head>
    <title>About Us</title>
    <meta charset="UTF-8">
    <meta name="description" content="x">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <!-- <link href="img/favicon.ico" rel="shortcut icon" /> -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/themify-icons.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
</head>

<body>

    <!-- Header section -->
    <header class="header-section shadow-none clearfix bg-transparent">
        <div class="container">
            <div class="align-items-center row">
                <div class="col-6 col-lg-3 col-md-3 col-sm-6 text-xs-center">
                    <a href="index.jsp" class="site-logo">
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
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="#">Services</a></li>
                        <li><a href="ContactUs1.jsp">Contact Us</a></li>
                        </ul>
                    </nav>
                    <!-- This Code Show On extera large and large Screen End  -->
                </div>

                <!-- This Code Show On extera large and large Screen Start  -->
               <div class="container-log">
       			 <div class="dropdown-main">
           			 <button class="login-btn-m">LOGIN</button>
           			 <div class="dropdown-content-m">
               			 <a href="CustomerLogin.jsp">Student</a>
               			 <a href="adminLogin.jsp">Admin</a>
            		</div>
        		</div>
    		</div>

                <!-- This Code Show On extera large and large Screen End  -->
            </div>

        </div>
    </header>
    <!-- Header section end -->

    <section class="contact-us-banner position-relative">
        <div class="border-0 card rounded-0">
            <img class="card-img" src="assets/img/rent.jpg">
            <div class="align-items-center card-img-overlay d-flex">
                <div class="container">
                    <div class="align-items-center row position-relative z-index-2">
                        <div class="col-md-6 mt-md-0 mt-sm-5 mt-xs-5 order-md-0 order-sm-1 order-xs-1 text-md-left text-sm-center text-xs-center">
                            <h5 class="card-title font-35 font-weight-600">About Us</h5> 
                            <p class="card-text dark-color-second mt-3 pr-lg-5">Created with renters in mind, we're here to help
                                relieve the stress from renting. As a renter, you'll
                                always enjoy these features for free.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="search-results-listing-show">
        <div class="container mt-5 pt-5">
            <div class="row mb-5 mt-3">
                <div class="col-md-6 order-md-0 order-sm-1 order-xs-1 pr-lg-5 pr-md-5">
                    <h5 class="font-22 font-menu font-weight-bold mb-4">Our Story</h5>
                    <p class="dark-color-second font-16 line-height-2 pr-md-2">Consectetur adipiscing elit, sed do eiusmod tempor incididunt
                        ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>
                    <p class="dark-color-second font-16 line-height-2 pr-md-2">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                        <a href="#" class="mt-4 btn dashboard-border-radius-second font-14 pl-4 pr-4 primary-bg-color-first text-white"> Read More <img src="../img/icons/white-arrow.png" class="ml2"></a>
                </div>
                <div class="col-md-6">
                    <div class="about-us-img-box">
                        <div class="card">
                           <div class="card-body">
                               <div class="align-items-center d-flex justify-content-between">
                                   <span class="dark-color-second font-13">Client</span>
                                   <img src="../img/icons/happy-emoji.png">
                               </div>
                               <span class="d-block font-22 font-weight-600 primary-color-first">1500+</span>
                               <span class="d-block dark-color-second font-14">Happy Client</span>
                           </div>
                        </div>
                        <img src="../img/about-box-1.png" width="100%" height="100%">
                    </div>
                </div>
            </div>

            <div class="row mb-5 mt-3">
                <div class="col-md-6">
                    <img src="../img/about-box-2.png" width="100%" height="100%">
                </div>
                
                <div class="col-md-6 order-md-0 order-sm-1 order-xs-1 pr-lg-5 pr-md-5">
                    <h5 class="font-22 font-menu font-weight-bold mb-4">Our Mission</h5>
                    <p class="dark-color-second font-16 line-height-2">Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut et labore et dolore magna aliqua. Ut enim ad minim veniam, quis do nostrud exercitation ullamco laboris nisi ut aliquip.</p>
                    <p class="dark-color-second font-16 line-height-2">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                        <a href="#" class="mt-4 btn dashboard-border-radius-second font-14 pl-4 pr-4 primary-bg-color-first text-white"> Read More <img src="../img/icons/white-arrow.png" class="ml2"></a>
                </div>
               
            </div>
        </div>
    </section>

    <section class="about-us-testimonial">
        <div class="container">
           <div class="row">
               <div class="col-md-10 m-auto">
                    <h5 class="font-25 font-weight-1000 mb-4 text-center">Our Testimonials</h5>
                    <div id="about-us-testimonial-carousel" class="carousel slide mt-5" data-ride="carousel">
                        <div class="carousel-inner pb-5 text-md-left text-sm-center text-xs-center" role="listbox">
        
                            <div class="carousel-item active text-center">
                                    <img src="../img/user-profile.png" class="rounded-circle">
                                    <p class="dark-color-second font-17 line-height-2 mt-4">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'.
                                    </p>
                                    <h5 class="dark-color-second font-21 font-weight-600 mb-2">Michael Mack</h5>
                                    <h6 class="mt-1 dark-color-three">Landlord</h6>
                            </div>
        
                            <div class="carousel-item text-center">
                                <img src="../img/user-profile.png" class="rounded-circle">
                                <p class="dark-color-second font-17 line-height-2 mt-4">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'.
                                </p>
                                <h5 class="dark-color-second font-21 font-weight-600 mb-2">Michael Mack</h5>
                                <h6 class="mt-1 dark-color-three">Landlord</h6>
                            </div>

                            <div class="carousel-item text-center">
                                <img src="../img/user-profile.png" class="rounded-circle">
                                <p class="dark-color-second font-17 line-height-2 mt-4">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'.
                                </p>
                                <h5 class="dark-color-second font-21 font-weight-600 mb-2">Michael Mack</h5>
                                <h6 class="mt-1 dark-color-three">Landlord</h6>
                            </div>
        
                        </div>
        
                        <ol class="carousel-indicators">
                            <li data-target="#about-us-testimonial-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#about-us-testimonial-carousel" data-slide-to="1"></li>
                            <li data-target="#about-us-testimonial-carousel" data-slide-to="2"></li>
                        </ol>
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
                        <p class="pull-right"><a href="https://www.google.com/maps/"><img style="width: 20%" src="Images/map.jpg"></a></p>
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
    <!-- CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gj4fI6jFwn6z7E4Nl3F1JuFxHVyItRLGtn6y2xxnB9sZtUfG3B8Ehq2hSE8/dXjp" crossorigin="anonymous">

<!-- JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"></script>
    

</body>

</html>