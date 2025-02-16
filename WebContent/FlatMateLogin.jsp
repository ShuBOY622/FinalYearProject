<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
                        <!-- <li><a href="adminLogin.jsp"><b>Login as Owner</b></a></li>
                        <li><a href="adminLogin.jsp"><b>Login as Admin</b></a></li> -->
                        </ul>
                    </nav>
                </div>
                <div class="container-log">
       			 <div class="dropdown-main">
           			 <button class="login-btn-m">LOGIN</button>
           			 <div class="dropdown-content-m">
               			 <a href="CustomerLogin.jsp">Student</a>
               			 <a href="FlatMateLogin.jsp">FlatMate</a>
               			 <a href="OwnerLogin.jsp">Owners</a>
               			 <a href="adminLogin.jsp">Admin</a>
            		</div>
        		</div>
    		</div>
            </div>
        </div>
	</header>
		
		<div class="row">
			<div class="span12">
				
				<div class="well well-small">
    <h3 align="center"><b>Flat Member Login</b></h3>
    	<hr class="soften" />
    		<div class="row-fluid" align="">
       			<div id="newProductCar" class="carousel slide">
            		<div class="carousel-inner">
                		<div class="item active" align="center">
                    		<form action="FlatMateLogin" method="post">
                        		<!-- <table style="width: 100%">
											<tr>
												<th>Email ID</th>
												<td><input type="text" placeholder="Your Email ID"
													id="email" class="form-control" name="email" required></td>
											</tr>
											<tr>
												<th>Password</th>
												<td><input type="password" placeholder="************"
													id="password" class="form-control" name="password" required></td>
											</tr>
											<tr>
												<th></th>
												<td><button type="submit" class="btn btn-success"><b>Login</b></button></td>
											</tr>
											
										</table>
									</form>			
								</div>
							</div>
						</div>
					</div>
				</div> -->
				
					<table style="width: 100%">
                            <tr>
                                <th>Email ID</th>
                                <td><input type="text" placeholder="Your Email ID" id="email" class="form-control-login" name="email" required></td>
                            </tr>
                            <tr>
                                <th>Password</th>
                                <td><input type="password" placeholder="************" id="password" class="form-control-login" name="password" required></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <button type="submit" class="btn btn-success"><b>Login</b></button>
                                </td>
                            </tr>
                        </table>
                    </form>            
                </div>
            </div>
        </div>
    </div>
</div>
		

    <footer
      class="pb-5 pt-5 footer-section primary-bg-color-first"
      style="
        background-image: url('img/footer-bg-desktop.png');
        background-repeat: no-repeat, repeat;
        background-position: bottom;
      "
    >
      <!-- <div class="footer-bg"></div> -->
      <div class="container">
        <div class="pb-5 pt-5 row">
          <div
            class="col-lg-5 col-md-5 col-sm-12 footer-widget mt-md-0 mt-sm-5 mt-xs-5"
          >
            <img
              class="mb-4"
              src="img/logos/logo.png"
              alt=""
            />
            <p>
              Never over pay for rent! We are the premium location for rentals.
              Using our patented HusKarma rating system we connect landlords and
              tenants. We ensure tenants never over pay for rent while making
              sure the landlords properties are taken care of and that rent is
              always paid on time.
            </p>
            <div class="footer-social">
              <a href=""
                ><i class="fa fa-instagram mt-2" aria-hidden="true"></i
              ></a>
              <a href=""
                ><i class="fa fa-dribbble mt-2" aria-hidden="true"></i
              ></a>
              <a href=""
                ><i class="fa fa-twitter mt-2" aria-hidden="true"></i
              ></a>
              <a href=""
                ><i class="fa fa-youtube-play mt-2" aria-hidden="true"></i
              ></a>
            </div>
          </div>

          <div
            class="col-md-3 col-sm-12 colo-lg-3 footer-widget mt-md-0 mt-sm-5 mt-xs-5"
          >
            <h5
              class="widget-title ml-lg-5 ml-xl-5 pl-lg-5 pl-xl-5 font-21 font-menu font-weight-bold"
            >
              Quick Links
            </h5>
            <ul class="ml-lg-5 ml-xl-5 pl-lg-5 pl-xl-5">
              <li><a href="about-us.html">About</a></li>
              <li><a href="blog.html">Blog</a></li>
              <li><a href="faqs.html">FAQ</a></li>
              <li><a href="terms.html">Terms</a></li>
              <li><a href="policy.html">Privacy</a></li>
              <li><a href="contact-us.html">Contact us</a></li>
            </ul>
          </div>

          <div
            class="col-sm-12 col-md-4 col-lg-4 footer-widget pl-lg-5 pl-3 mt-sm-5 mt-xs-5 mt-md-0"
          >
            <h5 class="font-21 font-menu font-weight-bold widget-title">
              Get in Touch
            </h5>

            <ul class="mb-3">
              <li class="mb-3">
                <img src="img/footer-sms-icon.png" alt="" />
                <a class="d-inline-block ml-2" href="#">info@leasimple.com</a>
              </li>
              <li class="mb-3">
                <img src="img/footer-location-icon.png" alt="" />
                <a class="d-inline-block ml-2" href="#">Toronto, Canada</a>
              </li>
              <li class="d-flex">
                <a href="#" class="appicon mr-4"
                  ><img src="img/icons/appstore.png" alt=""
                /></a>
                <a href="#" class="appicon"
                  ><img src="../img/icons/playstore.png" alt=""
                /></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
     </div></div></div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <ul class="footer-nav">
              <span class="font-15 font-weight-normal">
                Copyright 2024 - All Rights Reserved
                <a href="#" target="_blank">FlatBud.</a>
              </span>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer Section End -->

    <!--====== Javascripts & Jquery ======-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/jquery-ui.js"></script>

    <script>
      let suggestions = [
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "Channel",
        "CodingLab",
        "CodingNepal",
        "YouTube",
        "YouTuber",
        "YouTube",
        "Tobermory Terrace",
        "Bollywood",
        "Vlogger",
        "Vechiles",
        "Facebook",
        "Freelancer",
        "Facebook",
        "Designer",
        "Developer",
        "Web Designer",
        "Meerut",
        "Lucnknow",
        "Noida",
      ];

      // getting all required elements
      const searchWrapper = document.querySelector(".search-input");
      const inputBox = searchWrapper.querySelector("input");
      const suggBox = searchWrapper.querySelector(".autocom-box");
      const icon = searchWrapper.querySelector(".icon");
      let linkTag = searchWrapper.querySelector("a");
      let webLink;

      // if user press any key and release
      inputBox.onkeyup = (e) => {
        let userData = e.target.value; //user enetered data
        let emptyArray = [];
        if (userData) {
          icon.onclick = () => {
            webLink = "https://www.google.com/search?q=" + userData;
            linkTag.setAttribute("href", webLink);
            console.log(webLink);
            linkTag.click();
          };
          emptyArray = suggestions.filter((data) => {
            //filtering array value and user characters to lowercase and return only those words which are start with user enetered chars
            return data
              .toLocaleLowerCase()
              .startsWith(userData.toLocaleLowerCase());
          });
          emptyArray = emptyArray.map((data) => {
            // passing return data inside li tag
            return (data = "<li>" + data + "</li>");
          });
          searchWrapper.classList.add("active"); //show autocomplete box
          showSuggestions(emptyArray);
          let allList = suggBox.querySelectorAll("li");
          for (let i = 0; i < allList.length; i++) {
            //adding onclick attribute in all li tag
            allList[i].setAttribute("onclick", "select(this)");
          }
        } else {
          searchWrapper.classList.remove("active"); //hide autocomplete box
        }
      };

      function select(element) {
        let selectData = element.textContent;
        inputBox.value = selectData;
        icon.onclick = () => {
          webLink = "https://www.google.com/search?q=" + selectData;
          linkTag.setAttribute("href", webLink);
          linkTag.click();
        };
        searchWrapper.classList.remove("active");
      }

      function showSuggestions(list) {
        let listData;
        if (!list.length) {
          userValue = inputBox.value;
          listData = "<li>" + userValue + "</li>";
        } else {
          listData = list.join("");
        }
        suggBox.innerHTML =
          '<div class="card">' +
          '<div class="bg-transparent card-header p-0"><div class="input-group"><div class="input-group-prepend"><span class="bg-transparent border-0 input-group-text" id="basic-addon1"><img src="../img/icons/current-location-icon.png"></span></div><input type="text" class="current-location-input border-0 font-13 form-control pb-3 pt-3 rounded-circle" placeholder="Current location" aria-label="Current location" aria-describedby="basic-addon1"></div></div>' +
          '<div class="bg-white card-header p-0 pb-3 pt-3"><div class="align-items-center input-group"><div class="bg-white input-group-prepend"><span class="bg-white border-0 input-group-text" id="basic-addon1"><img src="../img/icons/city-location-icon.png"></span></div><strong class="ml-2">Cities</strong></div><ul class="list-style-none pl-5 pr-5 pt-2 text-left"> <li onclick="select(this)">Toronto, ON</li><li onclick="select(this)">Toronto, ON</li> </ul></div>' +
          '<div class="card-body p-0 pt-3"><div class="align-items-center input-group"><div class="bg-white input-group-prepend"><span class="bg-white border-0 input-group-text" id="basic-addon1"><img src="../img/icons/building-location-icon.png"></span></div><strong class="ml-2">Buildings</strong></div><ul class="list-style-none pl-5 text-left">' +
          listData +
          "</ul></div></div>";
      }
    </script>
  </body>

  <script>
    /* ============================================== 
        ======= Home video Section Css Start ========= */
    const video = document.getElementById("video");
    const circlePlayButton = document.getElementById("circle-play-b");
    const Name = document.getElementById("name");
    function togglePlay() {
      if (video.paused || video.ended) {
        video.play();
        $("#video").attr("controls", "foo");
      } else {
        video.pause();
      }
    }

    circlePlayButton.addEventListener("click", togglePlay);
    video.addEventListener("playing", function () {
      circlePlayButton.style.opacity = 0;
      Name.style.opacity = 0;
    });
    video.addEventListener("pause", function () {
      circlePlayButton.style.opacity = 1;
      Name.style.opacity = 1;
    });
    /* ============================================== 
        ======= Home video Section Css End =========== */
  </script>
</html>