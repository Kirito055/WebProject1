<%@include file="header.jsp"%> <%--There we include header--%>
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
                                                <a href="${pageContext.request.contextPath}/"><li>Edit</li></a>
                                            </ul>
                                            <a href="${pageContext.request.contextPath}/"><span>Delete</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="footer.jsp"%> <%--There we include footer--%>