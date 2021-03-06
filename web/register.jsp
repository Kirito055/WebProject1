<%--
  Created by IntelliJ IDEA.
  User: 82530
  Date: 17.10.2020
  Time: 14:27
  To change this template use File | Settings | File Templates.
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrate</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                                        <li><a href="${pageContext.request.contextPath}/login.jsp"><i class="ti-user"></i>Login</a></li>
                                        <li><a href="${pageContext.request.contextPath}/register.jsp"><i class="ti-lock"></i>Register</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- Header End -->
    </header>
</head>
<body>

<section class="login py-5 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">
                <div class="border border">
                    <h3 class="bg-gray p-4">Update News</h3>
                    <form action="${pageContext.request.contextPath}/Servlet" method="post">
                        <fieldset class="p-4">
                            <input type="email" name="email" placeholder="Email*" class="border p-3 w-100 my-2">
                            <input type="text" name="username" placeholder="Username*" class="border p-3 w-100 my-2">
                            <input type="password" name="password" placeholder="Password*" class="border p-3 w-100 my-2">

                            <div class="loggedin-forgot d-inline-flex my-3">
                                <input type="checkbox" id="registering" class="mt-1">
                                <label for="registering" class="px-2">By registering, you accept our <a class="text-primary font-weight-bold" href="terms-condition.html">Terms & Conditions</a></label>
                            </div>
                            <button type="submit" class="d-block py-3 px-4 bg-primary text-white border-0 rounded font-weight-bold">Register Now</button>
                        </fieldset>
                    </form>
                </div>

                <div class="border border">

                <h3 class="bg-gray p-4">Add News</h3>
                <form action="${pageContext.request.contextPath}/Servlet" method="post">
                    <fieldset class="p-4">
                        <input type="email" name="email" placeholder="Email*" class="border p-3 w-100 my-2">
                        <input type="text" name="username" placeholder="Username*" class="border p-3 w-100 my-2">
                        <input type="password" name="password" placeholder="Password*" class="border p-3 w-100 my-2">

                        <div class="loggedin-forgot d-inline-flex my-3">
                            <input type="checkbox" id="registering" class="mt-1">
                            <label for="registering" class="px-2">By registering, you accept our <a class="text-primary font-weight-bold" href="terms-condition.html">Terms & Conditions</a></label>
                        </div>
                        <button type="submit" class="d-block py-3 px-4 bg-primary text-white border-0 rounded font-weight-bold">Register Now</button>
                    </fieldset>
                </form>
            </div>

            </div>
        </div>
    </div>
</section>


</body>
</html>
