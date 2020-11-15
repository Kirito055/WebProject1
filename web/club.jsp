<%@ page import="models.User" %>
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
<c:set var="user" value="${sessionScope.user}" />
        <c:forEach var="club" items="${clubs}">

            <div class="club-card">
                <img src="<c:out value="${club.logo}"/>" alt="">
                <div class="club-card-text">
                    <h3><c:out value="${club.name}"/></h3>
                    <p>
                        <c:out value="${club.description}"/>
                    </p>
                    <c:if test="${user.role=='admin'}">
                    <div class="d-flex justify-content-around">

                        <a id="remove"  href="${pageContext.request.contextPath}/clubs?action=delete&id=${club.id}"  class="btn btn-outline-danger">
                            remove
                        </a>
                        <a id="update"  href="${pageContext.request.contextPath}/clubs?action=edit&id=<c:out value="${club.id}"/>" class="btn btn-outline-success">
                            update
                        </a>
                    </div>
                    </c:if>
                </div>

            </div>
        </c:forEach>

    </div>
</c:if>

<%@include file="library/footer.jsp" %> <%--There we include footer--%>