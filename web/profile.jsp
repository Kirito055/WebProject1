<%@include file="library/header.jsp"%>

<div class="userbox">

    <div class="box">
        <div class="row d-flex justify-content-between">
            <div>
                <h4>${userOne.firstName}${" "}${userOne.lastName}</h4>
                <strong>${group.faculty}</strong>
                <p>${group.name}</p>
                <p>${userOne.email}</p>
            </div>
            <div class="prof-img" style="background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS5BXA8MA7-EL3Nc8CvrfYdxNxSmLW6jeCkVw&usqp=CAU);">
            </div>
        </div>
    </div>


    <div class="box">
        <h4>In club:</h4>
        <c:if test="${clubs==null}">
            <p class="text-center">not entered in any club</p>
        </c:if>
        <c:if test="${clubs!=null}">
        <c:forEach items="${clubs}" var="club">
            <p class="text-center">${club.name}</p>
        </c:forEach>
        </c:if>
    </div>

</div>
<%@include file="library/footer.jsp"%>