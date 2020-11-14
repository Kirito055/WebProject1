<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="library/header.jsp"%> <%--There we include header--%><!--
<section class="all-course section-padding30">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="tab-content" id="nav-tabContent">

                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>-->
<div style="display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        grid-column-gap: 15px;">

    <c:forEach var="club" items="${clubs}" >
        <form action="${pageContext.request.contextPath}/clubs" method="post">
            <div id="club-<c:out value="${club.id}"/>">
                <!-- Single course -->
                <div >
                    <div class="course-img">
                        <img src="<c:out value="${club.logo}"/>" alt="Foto" width="350px" />
                    </div>
                    <div >
                        <div >
                            <h4><input class="border p-2 w-100 my-2" type="text" name="clubName" placeholder="club name" value="<c:out value="${club.name}"/>"></h4>
                            <input class="border p-2 w-100 my-2" type="text" name="leader_id" placeholder="Leader ID" value="<c:out value="${club.leader_id}"/>"><br>
                            <input class="border p-2 w-100 my-2" type="url" name="logo" placeholder="logo url" value="<c:out value="${club.logo}"/>"><br>
                            <textarea class="border p-2 w-100 my-2" type="text" name="description" placeholder="description" ><c:out value="${club.description}"/></textarea>

                        </div>
                        <div class="course-cap-bottom d-flex justify-content-between">
                            <ul>
                                <a href="${pageContext.request.contextPath}/club"><li>Edit</li></a>
                            </ul>
                            <a href="${pageContext.request.contextPath}/club"><span>Delete</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </c:forEach>
</div>
<%@include file="library/footer.jsp"%> <%--There we include footer--%>