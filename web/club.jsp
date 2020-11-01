<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp"%> <%--There we include header--%><!--
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
<style>
    .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 5px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
    }
    .button2 {
        background-color: white;
        color: black;
        border: 2px solid #008CBA;
    }

    .button3 {
        background-color: white;
        color: black;
        border: 2px solid #f44336;
    }

</style>

<h2>
    <c:set var="crud" value='${requestScope.crud}' />
    <c:if test="${crud != null}">
        <c:choose>
            <c:when test="${crud.charAt(1) == '1'.charAt(0) && crud.charAt(0) == 'c'.charAt(0) }">
                <c:out value="The New Book Was Successfully Added" />
                <c:out value="You can find it in the list" />
            </c:when>
            <c:when test="${crud.charAt(1) == '1'.charAt(0) && crud.charAt(0) == 'd'.charAt(0)}">
                <c:out value="The Book Was Successfully Deleted" />
            </c:when>
            <c:when test="${crud.charAt(1) == '1'.charAt(0) && crud.charAt(0) == 'u'.charAt(0)}">
                <c:out value="The Book Was Successfully Updated" />
            </c:when>
            <c:otherwise>
                <c:out value="Something is wrong" />
            </c:otherwise>
        </c:choose>
    </c:if>
</h2>
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
                            <input type="hidden"  name="clubId" value="<c:out value="${club.id}"/>">
                            <h4><input class="border p-2 w-100 my-2" type="text" name="clubName" placeholder="club name" value="<c:out value="${club.name}"/>"></h4>
                            <input class="border p-2 w-100 my-2" type="text" name="leader_id" placeholder="Leader ID" value="<c:out value="${club.leader_id}"/>"><br>
                            <input class="border p-2 w-100 my-2" type="url" name="logo" placeholder="logo url" value="<c:out value="${club.logo}"/>"><br>
                            <textarea class="border p-2 w-100 my-2" type="text" name="description" placeholder="description" ><c:out value="${club.description}"/></textarea>

                        </div>
                        <div class="course-cap-bottom d-flex justify-content-between">
                            <ul>
                                <input class="button button2" name="button" type="submit" value="Edit">
                            </ul>
                            <input class="button button3" name="button" type="submit" value="Delete">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </c:forEach>
</div>
<%@include file="footer.jsp"%> <%--There we include footer--%>