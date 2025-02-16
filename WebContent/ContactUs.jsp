<!--  
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
						<jsp:include page="Header/CustomerHeader.jsp"></jsp:include>						
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
											<a href="#"><br> <img src="Images/AC_Hotel_Valencia.jpg" alt=""
												style="width: 90%; height:90%"></a>
										</div>
									</div>
								</div>
							</div>
							
							<!-- <h4>Bidding Time</h4> 
							<div class="span7">
								<h2>Welcome To FlatBud </h2>
								<h3>Feel Free to Contact Us </h3>
								<hr class="soft" />
																	
									<div class="control-group">
										<label class="control-label"><span><b>Hotel Name : </b> </span></label>
										<label class="control-label"><span><b>FlatBud</b> </span></label>
									</div>
									
									<div class="control-group">
										<label class="control-label"><span><b>Address :</b> </span></label>
										<label class="control-label"><span>GFWC+5MQ, Vijay Nagar, Pune, Maharashtra 425409</span></label>
									</div>
									
									<div class="control-group">
										<label class="control-label"><span><b>Contact No. :</b> </span></label>
										<label class="control-label"><span>+91 8888888888</span></label>
									</div>
									
								</div>
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


<!--  
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
											<a href="#"><br> <img src="Images/AC_Hotel_Valencia.jpg" alt=""
												style="width: 90%; height:90%"></a>
										</div>
									</div>
								</div>
							</div>
							
							<!-- <h4>Bidding Time</h4> 
							<div class="span7">
								<h2>Welcome To Umai Restaurant </h2>
								<h3>Feel Free to Contact Us </h3>
								<hr class="soft" />
																	
									<div class="control-group">
										<label class="control-label"><span><b>Hotel Name : </b> </span></label>
										<label class="control-label"><span><b>Umai Restaurant</b> </span></label>
									</div>
									
									<div class="control-group">
										<label class="control-label"><span><b>Address :</b> </span></label>
										<label class="control-label"><span>GFWC+5MQ, Vijay Nagar, Shahada, Maharashtra 425409</span></label>
									</div>
									
									<div class="control-group">
										<label class="control-label"><span><b>Contact No. :</b> </span></label>
										<label class="control-label"><span>+91 8888888888</span></label>
									</div>
									
								</div>
							</div>
				
							<hr class="softn clr" />
							
								</div>
							</div>
						</div>
					</div>

	<div class="copyright">
		<div class="container">
			<p class="pull-right"></p>
			<span>Copyright &copy; FlatBud: The Flatmate Searching Website
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
    <title>Contact Us</title>
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
    <link rel="stylesheet" href="css/animate.css" />
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
                        <li><a href="pricing-renter.html">Services</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </nav>
                <!-- This Code Hidde On extera large and large Screen End  -->

                <div class="col-2 col-sm-1 col-md-1 col-lg-7 text-center">
                    <div class="responsive-bar"><i class="fa fa-bars"></i></div>
                    <!-- This Code Show On extera large and large Screen Start  -->
                    <nav class="navbar-nav main-menu d-md-none d-sm-none d-xs-none d-lg-block">
                        <ul class="menu-list">
                            <li><a href="index.jsp"><b>Home</b></a></li>
                            <li><a href="pricing-renter.html"><b>Services</b></a></li>
                        <li><a href="ContactUs1.jsp"><b>Contact Us</b></a></li>
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
            <img class="card-img" src="assets/img/contact.jpg">
            <div class="align-items-center card-img-overlay d-flex">
                <div class="container">
                    <div class="align-items-center row position-relative z-index-2">
                        <div class="col-md-6 mt-md-0 mt-sm-5 mt-xs-5 order-md-0 order-sm-1 order-xs-1 text-md-left text-sm-center text-xs-center">
                            <h5 class="card-title font-35 font-weight-600">Contact Us</h5> 
                            <p class="card-text dark-color-second mt-3 pr-lg-5">Created with renters in mind, we're here to help
                                relieve the stress from renting. As a renter, you'll
                                always enjoy these features for free.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="contact-us-form-section mb-5">
        <div class="container">
            <div class="ContactDetails mb-5 mt-5 pb-4 pt-4 row">
                <div class="col-12 col-sm-6 col-md-4 col-lg-4 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="align-items-center row">
                                <div class="col-3 col-md-3">
                                    <img src="../img/icons/contact-us-email-icon-2.png">
                                </div>
                                <div class="pl-0 col-9 col-md-9">
                                    <span class="d-block font-16 font-weight-600">Email Us</span>
                                    <span class="d-block dark-color-second font-15 mt-1">support@huskarma.com</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-4 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="align-items-center row">
                                <div class="col-3 col-md-3">
                                    <img src="../img/icons/contact-us-phone.png">
                                </div>
                                <div class="pl-0 col-9 col-md-9">
                                    <span class="d-block font-16 font-weight-600">Call Us</span>
                                    <span class="d-block dark-color-second font-15 mt-1">+1 (213) 450-987</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-4 col-lg-4 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="align-items-center row">
                                <div class="col-3 col-md-3">
                                    <img src="../img/icons/contact-us-location.png">
                                </div>
                                <div class="pl-0 col-9 col-md-9">
                                    <span class="d-block font-16 font-weight-600">Address</span>
                                    <span class="d-block dark-color-second font-15 mt-1">Toronto, Canada</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-12 text-center">
                        <h5 class="font-30 font-weight-bold mb-2">Get in touch</h5>
                        <small class="font-18 dark-color-second">Lorem ipsum dolor sit amet, consectetur adipiscing elit</small>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-11 col-lg-10 m-auto">
                    <form method="" action="" class="mt-5">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="dark-color-second font-14">First Name*</label>
                                    <input type="text" class="contact-us-input form-control pl-4 bg-transparent" placeholder="Robert M">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="dark-color-second font-14">Last Name*</label>
                                    <input type="text" class="contact-us-input form-control pl-4 bg-transparent" placeholder="Smith">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="dark-color-second font-14">Email*</label>
                                    <input type="email" class="contact-us-input form-control pl-4 bg-transparent" placeholder="youremail@gmail.com">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="dark-color-second font-14">Phone Number*</label>
                                    <input type="email" class="contact-us-input form-control pl-4 bg-transparent" placeholder="(000) 4567-5689">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="dark-color-second font-14">Your Message*</label>
                                    <textarea class="border contact-us-textarea form-control pl-4 pt-4" cols="30" rows="6" placeholder="Question"></textarea>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-5 m-auto">
                                <div class="form-group">
                                    <button class="btn btn-block font-weight-bold mt-4 pb-3 primary-bg-color-first pt-3 text-uppercase text-white font-13">
                                        Send Message <img src="../img/icons/white-arrow.png" class="ml-2">
                                    </button>
                                </div>
                            </div>
                        </div>
                       
                       
                    </form>
                </div>
            </div>
        </div>
    </section>

    <section class="">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30703867.071679905!2d64.40183608457193!3d20.04915895569306!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1622869495775!5m2!1sen!2sin"
            width="100%" height="390" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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