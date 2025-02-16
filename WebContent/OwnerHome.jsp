<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Features Landlord</title>
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
	if(request.getParameter("login")!=null)
	{
	out.println("<script>alert('Login Sucessful...Welcome to Owner Section ...!')</script>");	
	}

	if(request.getParameter("add")!=null)
	{
	out.println("<script>alert('New Member Added Successful ...!')</script>");	
	}
	
	if(request.getParameter("Updat")!=null)
	{
	out.println("<script>alert('Rooms Updated Succesfull ...!')</script>");	
	}
%>
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
                        <li><a href="OwnerHome.jsp">Home</a></li>
                        <li><a href="UploadProduct.jsp"><b>Upload Flats</b></a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </nav>
                <!-- This Code Hidde On extera large and large Screen End  -->

                <div class="col-2 col-sm-1 col-md-1 col-lg-7 text-center">
                    <div class="responsive-bar"><i class="fa fa-bars"></i></div>
                    <!-- This Code Show On extera large and large Screen Start  -->
                    <nav class="navbar-nav main-menu d-md-none d-sm-none d-xs-none d-lg-block">
                        <ul class="menu-list">
                            <li class=""><a href="OwnerHome.jsp"><b>Home</b></a></li>
							<li class=""><a href="UploadProduct.jsp"><b>Upload Flats</b></a></li>
							<li class=""><a href="viewProducts.jsp"><b>View FLats</b></a></li>
							<li class=""><a href="adminViewTran.jsp"><b>Transactions</b></a></li>
							<li class=""><a href="AvailableMembers.jsp"><b>Available Members</b></a></li>
							<li class=""><a href="CustBookings.jsp"><b>New Requests</b></a></li>
							<li class=""><a href="Logout">Logout</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    
		</header>
    <!-- Header section end -->

    <section class="features-landlord-banner">
        <div class="container pb-5 pt-5">
            <div class="align-items-center row">
                <div class="col-lg-5 col-xl-5 col-md-6 left-content mt-md-0 mt-sm-4 mt-xs-4 order-md-0 order-sm-1 order-xs-1">
                    <h5 class="font-40 font-weight-bold">Welcome <b>Mr./Ms. <%=session.getAttribute("fname").toString()%>&nbsp;
                    <%=session.getAttribute("lname").toString()%></b>....!</h5>
                    <p class="dark-color-second mt-xs-0 card-text mt-4">Created with renters in mind, we're here to help
                        relieve the stress from renting. As a renter, you'll
                        always enjoy these features for free.
                    </p>
                    <a class="btn dashboard-border-radius-second font-12 font-weight-600 pl-4 pr-4 primary-bg-color-first text-white">
                        Browse Pricings <img src="img/icons/white-arrow.png" class="ml-2">
                    </a>
                </div>
                <div class="animate__animated animate__bounce col-md-6 ml-lg-auto ml-xl-auto">
                    <div class="banner-img">
                        <img src="assets/img/home.png" class="img-fluid">
                    </div>
                </div>
            </div>
        </div> 
    </section>


    <section class="dashboard-five-btn-bg">
        <div class="container pt-5">

            <div class="row mb-5 pt-4">
                <div class="col-md-12 text-center">
                    <h5 class="font-30 font-weight-bold mb-3">Owner Dashboard</h5>
                    <small class="font-17 dark-color-second">Explore RooMeet</small>
                </div> 
            </div>

            <div class="pb-5 features-landlord">
                <div class="row mb-5 justify-content-center">
                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                                <a href="UploadProduct.jsp"><img class="mt-3" src="assets/img/uflat.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Add New Flats</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card active">
                            <div class="card-body pb-5 pt-5 text-center">
                                <a href="viewProducts.jsp"><img class="mt-3" src="assets/img/vflats.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">View Available Flats</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                               <a href="adminViewTran.jsp"><img class="mt-3" src="assets/img/pay.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Transactions</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                                <a href="Copyright &copy; RooMeet: The Rooms and Room-Mate Finder"><img class="mt-3" src="assets/img/cust.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">Available Members</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4 mt-4">
                        <div class="card">
                            <div class="card-body pb-5 pt-5 text-center">
                                <a href="CustBookings.jsp"><img class="mt-3" src="assets/img/custreq.png" alt=""></a>
                                <h5 class="dark-black font-16 font-weight-bold mt-4">New Request</h5>
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
    <!-- Footer Section End -->


    <!--====== Javascripts & Jquery ======-->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/main.js"></script>

</body>

</html>

