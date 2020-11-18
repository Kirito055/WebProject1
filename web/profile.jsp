<%@include file="library/header.jsp"%>
<c:set var="user" value="${requestScope.user}"/>
<c:set var="group" value="${requestScope.group}"/>
<c:set var="clubs" value="${requestScope.clubs}"/>

<div class="userbox">

    <div class="box">
        <div class="row d-flex justify-content-between">
            <div>
                <h4>${user.firstName}${" "}${user.lastName}</h4>
                <p>Birthday: ${user.birthDate}</p>
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
            <p>Not entered in clubs</p>
        </c:if>
        <c:if test="${clubs.size()>0}">
            <div class="res-box">
                <c:forEach items="${clubs}" var="club">
                    <div class="row-box">
                        <img src="${club.logo}" alt="">
                        <h5>${club.name}</h5>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </div>

</div>
<%@include file="library/footer.jsp"%>