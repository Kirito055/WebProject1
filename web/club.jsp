<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 20.10.2020
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html ><meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/gijgo.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<!--? Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="https://astanait.edu.kz/wp-content/uploads/2020/05/aitu-logo-3.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- Preloader Start -->
<header>
    <!-- Header Start -->
    <div class="header-area">
        <div class="main-header ">
            <div class="header-top d-none d-lg-block">
                <!-- Left Social -->
                <div class="header-left-social">
                    <ul class="header-social">
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="https://www.facebook.com/sai4ull"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                        <li> <a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                    </ul>
                </div>
                <div class="container">
                    <div class="col-xl-12">
                        <div class="row d-flex justify-content-between align-items-center">
                            <div class="header-info-left">
                                <ul>
                                    <li>info@astanait.edu.kz</li>
                                    <li>+7 (7172)645-710</li>
                                </ul>
                            </div>
                            <div class="header-info-right">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/Login.jsp"><i class="ti-user"></i>Login</a></li>
                                    <li><a href="${pageContext.request.contextPath}/Registrate.jsp"><i class="ti-lock"></i>Register</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom header-sticky">
                <!-- Logo -->
                <div class="logo d-none d-lg-block">
                    <a href="index.html"><img src="https://astanait.edu.kz/wp-content/uploads/2020/05/aitu-logo-3.png" width="100" height="42" alt=""></a>
                </div>
                <div class="container">
                    <div class="menu-wrapper">
                        <!-- Logo -->
                        <div class="logo logo2 d-block d-lg-none">
                            <a href="index.html"><img src="https://astanait.edu.kz/wp-content/uploads/2020/05/aitu-logo-3.png"   width="100" height="42" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="${pageContext.request.contextPath}/main.jsp">Home</a></li>
                                    <li><a href="${pageContext.request.contextPath}/news.jsp">News</a></li>
                                    <li><a href="${pageContext.request.contextPath}/club.jsp">Events</a></li>
                                    <li><a href="${pageContext.request.contextPath}/club.jsp">Clubs</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- Header-btn -->
                        <div class="header-search d-none d-lg-block">
                            <form action="#" class="form-box f-right ">
                                <input type="text" name="Search" placeholder="Search Courses">
                                <div class="search-icon">
                                    <i class="fas fa-search special-tag"></i>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>
<section class="all-course section-padding30">
    <div class="container">
        <div class="row">
            <div class="col-12">
                        <!-- Nav Card -->
                <div class="tab-content" id="nav-tabContent">
                            <!--  one -->
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                        <!-- Single course -->
                                        <div class="single-course mb-70">
                                            <div class="course-img">
                                                <img src="assets/img/gallery/popular_sub1.png" alt="Foto">
                                            </div>
                                            <div class="course-caption">
                                                <div class="course-cap-top">
                                                    <h4><a href="#">Club name</a></h4>
                                                </div>
                                                <div class="course-cap-bottom d-flex justify-content-between">
                                                    <ul>
                                                        <a href="${pageContext.request.contextPath}/EditServlet"><li><i class="fa fa-edit"></i>Edit</li></a>
                                                    </ul>
                                                    <a href="${pageContext.request.contextPath}/DeleteServlet"><span><i class="fa fa-trash"></i> Delete</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            <!--<div class="col-xl-4 col-lg-4 col-md-6">

                                        <div class="single-course mb-70">
                                            <div class="course-img">
                                                <img src="assets/img/gallery/popular_sub2.png" alt="">
                                            </div>
                                            <div class="course-caption">
                                                <div class="course-cap-top">
                                                    <h4><a href="#">Web Development</a></h4>
                                                </div>
                                                <div class="course-cap-mid d-flex justify-content-between">
                                                    <div class="course-ratting">
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                    </div>
                                                    <ul><li>52 Review</li></ul>
                                                </div>
                                                <div class="course-cap-bottom d-flex justify-content-between">
                                                    <ul>
                                                        <li><i class="ti-user"></i> 562</li>
                                                        <li><i class="ti-heart"></i> 562</li>
                                                    </ul>
                                                    <span>Free</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                        <div class="single-course mb-70">
                                            <div class="course-img">
                                                <img src="assets/img/gallery/popular_sub3.png" alt="">
                                            </div>
                                            <div class="course-caption">
                                                <div class="course-cap-top">
                                                    <h4><a href="#">Digital Marketing</a></h4>
                                                </div>
                                                <div class="course-cap-mid d-flex justify-content-between">
                                                    <div class="course-ratting">
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                    </div>
                                                    <ul><li>52 Review</li></ul>
                                                </div>
                                                <div class="course-cap-bottom d-flex justify-content-between">
                                                    <ul>
                                                        <li><i class="ti-user"></i> 562</li>
                                                        <li><i class="ti-heart"></i> 562</li>
                                                    </ul>
                                                    <span>Free</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                        <div class="single-course mb-70">
                                            <div class="course-img">
                                                <img src="assets/img/gallery/popular_sub2.png" alt="">
                                            </div>
                                            <div class="course-caption">
                                                <div class="course-cap-top">
                                                    <h4><a href="#">Graphic Design</a></h4>
                                                </div>
                                                <div class="course-cap-mid d-flex justify-content-between">
                                                    <div class="course-ratting">
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                        <i class="fas fa-star"></i>
                                                    </div>
                                                    <ul><li>52 Review</li></ul>
                                                </div>
                                                <div class="course-cap-bottom d-flex justify-content-between">
                                                    <ul>
                                                        <li><i class="ti-user"></i> 562</li>
                                                        <li><i class="ti-heart"></i> 562</li>
                                                    </ul>
                                                    <span>Free</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    <!--? Footer Start-->
    <div class="footer-area footer-bg">
        <div class="container">
            <div class="footer-top footer-padding">
                <!-- footer Heading -->
                <div class="footer-heading">
                    <div class="row justify-content-between">
                        <div class="col-xl-6 col-lg-7 col-md-10">
                            <div class="footer-tittle2">
                                <h4>Stay Updated</h4>
                            </div>
                            <!-- Form -->
                            <div class="footer-form mb-50">
                                <div id="mc_embed_signup">
                                    <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative mail_part" novalidate="true">
                                        <input type="email" name="EMAIL" id="newsletter-form-email" placeholder=" Email Address " class="placeholder hide-on-focus" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your email address'">
                                        <div class="form-icon">
                                            <button type="submit" name="submit" id="newsletter-submit" class="email_icon newsletter-submit button-contactForm">
                                                Subscribe Now
                                            </button>
                                        </div>
                                        <div class="mt-10 info"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 col-lg-5">
                            <div class="footer-tittle2">
                                <h4>Let’s Get Social</h4>
                            </div>
                            <!-- Footer Social -->
                            <div class="footer-social">
                                <a href="https://www.facebook.com/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a  href="#"><i class="fab fa-google"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer Menu -->
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>About Us</h4>
                                <ul>
                                    <li><a href="#">Online Learning</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Careers</a></li>
                                    <li><a href="#">Press Center</a></li>
                                    <li><a href="#">Become an Instructor</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Campus</h4>
                                <ul>
                                    <li><a href="#">Our Plans</a></li>
                                    <li><a href="#">Free Trial</a></li>
                                    <li><a href="#">Academic Solutions</a></li>
                                    <li><a href="#">Business Solutions</a></li>
                                    <li><a href="#"> Government Solutions</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Study</h4>
                                <ul>
                                    <li><a href="#">Admissions Policy</a></li>
                                    <li><a href="#">Getting Started</a></li>
                                    <li><a href="#">Online Application</a></li>
                                    <li><a href="#">Visa Information</a></li>
                                    <li><a href="#">Tuition Calculator</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Spport</h4>
                                <ul>
                                    <li><a href="#">Support</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <li><a href="#">System Requirements</a></li>
                                    <li><a href="#">Register Activation Key</a></li>
                                    <li><a href="#">Site feedback</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer Bottom -->
            <div class="footer-bottom">
                <div class="row d-flex align-items-center">
                    <div class="col-lg-12">
                        <div class="footer-copy-right text-center">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright&copy;All Rights Reserved 2020, Astana IT University <br>
                                Design and Developed By Дулет,Дария,Талгат,Акниет,Эльдар
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</footer>
<!-- Scroll Up -->
<div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->

<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="./assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="./assets/js/wow.min.js"></script>
<script src="./assets/js/animated.headline.js"></script>
<script src="./assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="./assets/js/gijgo.min.js"></script>
<!-- Nice-select, sticky -->
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.sticky.js"></script>

<!-- counter , waypoint -->
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>

<!-- contact js -->
<script src="assets/js/contact.js"></script>
<script src="assets/js/jquery.form.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/mail-script.js"></script>
<script src="assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>

</body>
</html>
