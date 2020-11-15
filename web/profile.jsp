<%@include file="library/header.jsp"%>
<c:set var="user" value="${requestScope.user}"/>
<c:set var="group" value="${requestScope.group}"/>
<c:set var="clubs" value="${requestScope.clubs}"/>

<div class="userbox">

    <div class="box">
        <div class="row d-flex justify-content-between">
            <div>
                <h4>${user.firstName}${" "}${user.lastName}</h4>
                <strong>Faculty: ${group.faculty}</strong>
                <p>Group: ${group.name}</p>
                <p>Email: ${user.email}</p>
            </div>
            <div class="prof-img" style="background-image: url(${user.avatar});">
            </div>
        </div>
    </div>


    <div class="box">
        <h4>In club:</h4>
        <c:if test="${clubs.size()==0}">
            <p class="text-center">Not entered in any club</p>
        </c:if>
        <c:if test="${clubs.size()>0}">
        <c:forEach items="${clubs}" var="club">
            <p class="text-center">${club.name}</p>
        </c:forEach>
        </c:if>
    </div>

</div>
<%@include file="library/footer.jsp"%>