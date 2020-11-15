<%@include file="library/header.jsp"%>

<div class="userbox">
<c:forEach var="users" items="${users}" >
    <div class="box">
        <div class="row d-flex justify-content-between">
            <div>
                <h4><c:out value="${users.first_name}"/> <c:out value="${users.last_name}"/></h4>
                <strong>Faculty</strong>
                <p> student group</p>
                <p><c:out value="${users.email}"/></p>
            </div>
            <div class="prof-img" style="background-image: url(<c:out value="${users.avatar}"/>);">
            </div>
        </div>
    </div>
    <div class="box">
        <h4>In club:</h4>
        <p class="text-center">not entered in any club</p>
    </div>
</c:forEach>

    <div class="box">
        <h4>Description</h4>
        <p class="text-center">good student</p>
        <p class="text-center">very good student</p>
    </div>

</div>
<%@include file="library/footer.jsp"%>