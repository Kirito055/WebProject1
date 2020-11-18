<%@include file="library/header.jsp" %>
<c:set var="user" value="${requestScope.user}"/>
<c:set var="group" value="${requestScope.group}"/>
<c:set var="clubs" value="${requestScope.clubs}"/>

<div class="userbox" style="height: auto">

    <div class="box">
        <div class="row d-flex justify-content-between">
            <div class="col-lg-6 col-12">
                <div class="row">
                    <div class="col-6">
                        <h4>${user.firstName}${" "}${user.lastName}</h4>
                        <p>Birthday: ${user.birthDate}</p>
                    </div>
                    <div class="col-6">
                        <div class="prof-img d-block d-lg-none"
                             style="background-image: url(${user.avatar});">
                        </div>
                    </div>
                </div>

                <strong>Faculty: ${group.faculty}</strong>
                <p>Group: ${group.name}</p>
                <p>Email: ${user.email}</p>

                <!--if it ur profile jstl c:if through session id-->
                <a id="remove"
                   href="${pageContext.request.contextPath}/update_profile.jsp"
                   style="color: white" class="btn  m-1">
                    update
                </a>
            </div>
            <div class="prof-img d-lg-block d-none" style="background-image: url(${user.avatar});">
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
<%@include file="library/footer.jsp" %>