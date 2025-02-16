<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title><jsp:include page="projectTitle.jsp"></jsp:include></title>
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
</head>
<body>
<%
	if(request.getParameter("Done")!=null)
	{
	out.println("<script>alert('Registration Sucessful...Please Login Here ...!')</script>");	
	}
%>
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
            </div>
        </div>
	</header>
		
	<div class="container-reg">
    <h3 align="center"><b>Owner Registration</b></h3>
    <form action="CustomerRegistration" method="post">
        <div class="form-group-reg">
            <label for="name">Name:</label>
            <input type="text" placeholder="Your Name" class="form-control-reg" name="name" required>
       
            <label for="address">Address:</label>
            <input type="text" placeholder="Your Address" class="form-control-reg" name="address" required>
       
            <label for="email">Email ID:</label>
            <input type="email" placeholder="Your Email ID" class="form-control-reg" name="email" required>
        
            <label for="mobile">Mobile No:</label>
            <input type="text" placeholder="Your Mobile No" class="form-control-reg" maxlength="10" name="mobile" required>
        
            <label for="password">Password:</label>
            <input type="password" placeholder="************" class="form-control-reg" name="password" required>
        
            <label for="userType">User Type:</label>
            <select name="userType" class="form-control-reg" required>
                <option value="">Select User Type</option>
                <option value="student">Student</option>
                <option value="owner">Owner</option>
            </select>
        </div>
        <button type="submit" class="btn-reg"><b>Registration</b></button>
    </form>
</div>
			
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