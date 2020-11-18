<%@ page import="models.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="library/header.jsp" %>


<div class="club-list">
    <c:if test="${user.role=='admin'}">
        <article>
            <a class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
               type="button" href="${pageContext.request.contextPath}/add_club.jsp">
                Add Club
            </a>
        </article>
    </c:if>
    <c:if test="${clubs!=null}">

        <c:set var="user" value="${sessionScope.user}"/>
        <c:forEach var="club" items="${clubs}">

            <div class="club-card">
                <img src="<c:out value="${club.logo}"/>" alt="">
                <div class="club-card-text">
                    <h3><c:out value="${club.name}"/></h3>
                    <p>
                        <c:out value="${club.description}"/>
                    </p>

                    <c:if test="${user.role=='admin'}">
                        <div class="d-flex justify-content-around flex-wrap">

                            <a id="remove" href="${pageContext.request.contextPath}/clubs?action=delete&id=${club.id}"
                               class="btn btn-outline-danger m-1">
                                remove
                            </a>
                            <a href="${pageContext.request.contextPath}/clubs?action=edit&id=<c:out value="${club.id}"/>"
                               class="btn btn-outline-success m-1">
                                update
                            </a>
                        </div>
                    </c:if>
                    <c:if test="${club.leader_id == user.id}">
                        <a href="${pageContext.request.contextPath}/clubs?action=edit&id=<c:out value="${club.id}"/>"
                           class="btn btn-outline-success">
                            update
                        </a>
                    </c:if>
                </div>

            </div>
        </c:forEach>

    </c:if>
</div>

<%@include file="library/footer.jsp" %> <%--There we include footer--%>