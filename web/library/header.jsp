<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 20.10.2020
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<meta name="description" content="">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="${pageContext.request.contextPath}site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">


    <!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/search.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/profile.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/gijgo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <title></title>
</head>
<body>
<!--? Preloader Start -->
<!--
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
-->
<c:set var="user" value="${sessionScope.user}"/>
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
                        <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
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
                                    <c:choose>
                                        <c:when test="${user!=null}">
                                            <li><a href="${pageContext.request.contextPath}/log"><i class="ti-user"></i>Log out</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="${pageContext.request.contextPath}/login.jsp"><i class="ti-user"></i>Log in</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom header-sticky">
                <!-- Logo -->
                <%--<div class="logo d-none d-lg-block">
                    <a href="index.html"><img src="assets/img/logo/astanait.png" height="32"  alt=""></a>
                </div>--%>

                <div class="container">
                    <div class="menu-wrapper">
                        <!-- Logo -->
                        <div class="logo logo2 d-block d-lg-none">
                            <a href="${pageContext.request.contextPath}index.jsp"><img
                                    src="${pageContext.request.contextPath}/assets/img/logo/astanait.png" height="32"
                                    alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="${pageContext.request.contextPath}/main.jsp">Home</a></li>
                                    <li><a href="${pageContext.request.contextPath}/news.jsp">News</a></li>
                                    <li><a href="${pageContext.request.contextPath}/event.jsp">Events</a></li>
                                    <li><a href="${pageContext.request.contextPath}/clubs">Clubs</a></li>
                                    <li><a href="${pageContext.request.contextPath}/profile.jsp">Profile</a></li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/search.jsp" class="search-icon"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-search special-tag"></i>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
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