<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Features Renter</title>
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
		
					<h3 align="center"><b>Seller Upload Flat Details</b></h3>
					<hr class="soften" />
					<div class="row-fluid" align="center">
						<div id="newProductCar" class="carousel slide">
							<div class="carousel-inner">
								<div class="item active" align="center">
									<form action="AddProducts" method="post" enctype="multipart/form-data">
										<table style="width: 50%" cellpadding="10" cellspacing="10" border="1px">
											<tr>
												<th align="right">Category :&nbsp;&nbsp;</th>
												<td>
												<select name="category">
													<option value="">----- Select Category -----</option>
													<option value="1BHK">1BHK</option>
													<option value="2BHK">2BHK</option>
													<option value="3BHK">3BHK</option>
													<option value="Banglow">Banglow</option>
												</select>
												</td>
											</tr>
											<tr>
												<th align="right">No. of Beds :&nbsp;&nbsp;</th>
												<td><input type="text" placeholder="Enter No. of Beds" class="form-control" name="p_name" required></td>
											</tr>
											<tr>
												<th align="right">Facilities :&nbsp;&nbsp;</th>
												<td>
													<textarea rows="3" cols="15" name="specification"></textarea>
												</td>
											</tr>
											
											<tr>
												<th align="right">Base Price :&nbsp;&nbsp;</th>
												<td><input type="number" class="form-control" name="base_price" required></td>
											</tr>
											
											<tr>
												<th align="right">Upload By :&nbsp;&nbsp;</th>
												<td><input type="text" class="form-control" name="seller" value="<%=session.getAttribute("fname").toString()%>" required></td>
											</tr>
											<tr>
												<th align="right">Upload By :&nbsp;&nbsp;</th>
												<td><input type="text" class="form-control" name="address" value="<%=session.getAttribute("city").toString()%>" required></td>
											</tr>											
											<tr>
												<th align="right">Image :&nbsp;&nbsp;</th>
												<td><input type="file" class="form-control" name="file_name" required></td>
											</tr>
											
											<tr>
												<td colspan="2" align="center"><button type="submit" class="btn btn-success"><b><u>Upload</u></b></button></td>
											</tr>
										</table>
										</form>			
								</div>
							</div>
						</div>
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