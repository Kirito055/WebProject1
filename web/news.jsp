<%@include file="library/header.jsp" %> <%--There we include header--%>
<main>
    <!--? Hero Start -->
    <div class="slider-area ">
        <div class="slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap hero-cap2 text-center">
                            <h2>News</h2>
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

                        <!--прописать сюда jstl c:if если user_id==leader_id or admin-->
                        <c:if test="${user.role=='admin'}">
                            <article>
                                <a class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn my-3"
                                   type="button" href="add_post.jsp">
                                    Add news
                                </a>
                            </article>
                        </c:if>

                        <c:if test="${newsAll!=null}">
                            <c:forEach items="${newsAll}" var="news">
                                <c:if test="${news.type=='news'}">
                                    <article class="blog_item">
                                        <div class="blog_item_img">
                                            <img class="card-img rounded-0" src="<c:out value="${news.image}"/>" alt="">
                                            <a href="#" class="blog_item_date">
                                                <!--
                                                  <h3>Day</h3>
                                                  <p>Mon</p>  3 буквы!!!!
                                                  -->
                                                <p><c:out value="${news.date}"/></p>
                                            </a>
                                        </div>
                                        <div class="blog_details">
                                            <a class="d-inline-block" href="blog_details.html">
                                                <!--News Title-->
                                                <h2 class="blog-head" style="color: #2d2d2d;">
                                                    <c:out value="${news.title}"/>
                                                </h2>
                                            </a>
                                            <!--News text-->
                                            <p>
                                                <c:out value="${news.description}"/>
                                            </p>
                                            <ul class="blog-info-link">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/user?action=about&id=${news.author.id}">
                                                        <i class="fa fa-user"></i>
                                                        <c:if test="${news.author ==null}">
                                                            AITU department
                                                        </c:if>
                                                        <c:out value="${news.author.firstName} ${news.author.lastName}"/>

                                                    </a>
                                                </li>

                                                <!--прописать сюда jstl c:if если user_id==leader_id or admin-->
                                                <c:choose>
                                                    <c:when test="${user.role=='admin'}">
                                                        <div class="d-flex justify-content-around flex-wrap">

                                                            <a id="remove"
                                                               href="${pageContext.request.contextPath}/news?action=delete&id=${news.id}"
                                                               style="color: white" class="btn btn-outline-danger m-1">
                                                                remove
                                                            </a>
                                                            <a id="update"
                                                               href="${pageContext.request.contextPath}/news?action=edit&id=<c:out value="${news.id}"/>"
                                                               style="color: white" class="btn btn-outline-success m-1">
                                                                update
                                                            </a>
                                                        </div>
                                                    </c:when>
                                                    <c:when test="${user.id == news.author.id}">
                                                        <div class="d-flex justify-content-around">

                                                            <a href="${pageContext.request.contextPath}/news?action=delete&id=${news.id}"
                                                               style="color: white" class="btn btn-outline-danger">
                                                                remove
                                                            </a>
                                                            <a href="${pageContext.request.contextPath}/news?action=edit&id=<c:out value="${news.id}"/>"
                                                               style="color: white" class="btn btn-outline-success">
                                                                update
                                                            </a>
                                                        </div>
                                                    </c:when>
                                                </c:choose>
                                            </ul>
                                        </div>
                                    </article>
                                </c:if>
                            </c:forEach>
                        </c:if>

                        <!--кнопки для перехода на другие страницы
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
                        -->
                    </div>
                </div>


                <div class="col-lg-4">
                    <div class="blog_right_sidebar">

                        <!--search for news-->
                        <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Search News'
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

                            <c:forEach var="post" items="${newsAll}" begin="0" end="3">

                                    <div class="media post_item">
                                        <img src="${post.image}" alt="post"
                                             style="height: 10vmax;width: 10vmax; background: center/cover no-repeat">
                                        <div class="media-body">
                                            <a href="blog_details.html">
                                                <h3 style="color: #2d2d2d;">${post.title}</h3>
                                            </a>
                                            <p>${post.date}</p>
                                        </div>
                                    </div>

                            </c:forEach>
                        </aside>

                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
</main>
<%@include file="library/footer.jsp" %> <%--There we include footer--%>
