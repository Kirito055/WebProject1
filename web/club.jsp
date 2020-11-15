<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="library/header.jsp" %>
<%--There we include header--%>
<!--
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
</section>
-->
<c:if test="${clubs!=null}">
    <div class="club-list">

        <c:forEach var="club" items="${clubs}">

            <div class="club-card">
                <img src="<c:out value="${club.logo}"/>" alt="">
                <div class="club-card-text">
                    <h3><c:out value="${club.name}"/></h3>
                    <p>
                        <c:out value="${club.description}"/>
                    </p>
                    <div class="d-flex justify-content-around">

                        <a href="" class="btn btn-outline-danger">
                            remove
                        </a>
                        <a href="" class="btn btn-outline-success">
                            update
                        </a>

                    </div>
                </div>

            </div>
        </c:forEach>

    </div>
</c:if>

<%@include file="library/footer.jsp" %> <%--There we include footer--%>