<%@include file="library/header.jsp" %> <%--There we include header--%>
<main>
    <!--? Hero Start -->
    <div class="slider-area">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>Events</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">

                        <c:if test="${eventsALL!=null}">
                            <c:forEach items="${eventsALL}" var="event">
                                <c:if test="${event.type=='event'}">
                                    <article class="blog_item">
                                        <div class="blog_item_img">
                                            <img class="card-img rounded-0" src="<c:out value="${event.image}"/>"
                                                 alt="">
                                            <a href="#" class="blog_item_date">
                                                <p><c:out value="${event.date}"/></p>
                                            </a>
                                        </div>
                                        <div class="blog_details">
                                            <a class="d-inline-block" href="blog_details.html">
                                                <!--News Title-->
                                                <h2 class="blog-head" style="color: #2d2d2d;">
                                                    <c:out value="${event.title}"/>
                                                </h2>
                                            </a>
                                            <!--News text-->
                                            <p>
                                                <c:out value="${event.description}"/>
                                            </p>
                                            <ul class="blog-info-link">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-user"></i>
                                                        <c:out value="${event.author.firstName} ${event.author.lastName}"/>

                                                    </a>
                                                </li>

                                                <c:if test="${user.role=='admin'}">
                                                    <div class="d-flex justify-content-around">

                                                        <a id="remove"  href="${pageContext.request.contextPath}/events?action=delete&id=${event.id}"  class="btn btn-outline-danger">
                                                            remove
                                                        </a>
                                                        <a id="update"  href="${pageContext.request.contextPath}/events?action=edit&id=<c:out value="${event.id}"/>" class="btn btn-outline-success">
                                                            update
                                                        </a>
                                                    </div>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </article>
                                </c:if>
                            </c:forEach>
                        </c:if>


                        <!--прописать сюда jstl c:if если user_id==leader_id or admin-->
                        <article>
                            <a class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                               type="button" href="add_post.jsp">
                                Add event
                            </a>
                        </article>

                        <!--кнопки для перехода на другие страницы-->
                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>

                    </div>
                </div>


                <div class="col-lg-4">
                    <div class="blog_right_sidebar">

                        <!--search for news-->
                        <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Search Events'
                                               onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Search Keyword'">
                                        <div class="input-group-append">
                                            <button class="btns" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                        type="submit">Search
                                </button>
                            </form>
                        </aside>


                        <!--List of last 4 news-->
                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title" style="color: #2d2d2d;">Recent Post</h3>
                            <div class="media post_item">
                                <img src="assets/img/post/post_1.png" alt="post">
                                <div class="media-body">
                                    <a href="blog_details.html">
                                        <h3 style="color: #2d2d2d;">From life was you fish...</h3>
                                    </a>
                                    <p>January 12, 2019</p>
                                </div>
                            </div>
                            <div class="media post_item">
                                <img src="assets/img/post/post_2.png" alt="post">
                                <div class="media-body">
                                    <a href="blog_details.html">
                                        <h3 style="color: #2d2d2d;">The Amazing Hubble</h3>
                                    </a>
                                    <p>02 Hours ago</p>
                                </div>
                            </div>
                            <div class="media post_item">
                                <img src="assets/img/post/post_3.png" alt="post">
                                <div class="media-body">
                                    <a href="blog_details.html">
                                        <h3 style="color: #2d2d2d;">Astronomy Or Astrology</h3>
                                    </a>
                                    <p>03 Hours ago</p>
                                </div>
                            </div>
                            <div class="media post_item">
                                <img src="assets/img/post/post_4.png" alt="post">
                                <div class="media-body">
                                    <a href="blog_details.html">
                                        <h3 style="color: #2d2d2d;">Asteroids telescope</h3>
                                    </a>
                                    <p>01 Hours ago</p>
                                </div>
                            </div>
                        </aside>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
</main>
<%@include file="library/footer.jsp" %> <%--There we include footer--%>
