
<%@include file="library/header.jsp" %>

<div class="search">
    <form action="" method="GET" class="d-flex justify-content-around">

        <input type="text" name="name" placeholder="Search by name">

        <div>
            <label for="group">Group:</label>
            <select name="group" id="group">
                <option value="none">None</option>
                <option value="IT_1911">IT_1911</option>
                <option value="SE-1907">SE-1907</option>
                <option value="SE-1908">SE-1908</option>
                <!--
            тут можно добавить цикл форич
            для вывода всех груп
        -->

            </select>
        </div>


        <div>

            <label for="year">Year:</label>
            <select name="year" id="year">
                <option value="none">None</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
                <option value="2021">2021</option>
            </select>
        </div>



        <button>Search</button>

    </form>
    <div class="search-result">

        <!--добавить сюда форич для вывода резулььтата-->
        <div class="res-card  ">
            <h4>Name</h4>
            <p>Group/Year</p>
        </div>
        <c:forEach var="user" items="${users}" >
            <form action="${pageContext.request.contextPath}/search" method="post">
                <div id="club-<c:out value="${user.id}"/>">
                    <!-- Single course -->
                    <div >
                        <div class="course-img">
                            <img src="<c:out value="${user.avatar}"/>" alt="Foto" width="350px" />
                        </div>
                        <div >
                            <div >
                                <h4><input class="border p-2 w-100 my-2" type="text" name="name" placeholder="first name" value="<c:out value="${user.firstName}+${user.lastName}"/>"></h4>
                                <input class="border p-2 w-100 my-2" type="text" name="birthDate" placeholder="birthDate" value="<c:out value="${user.birthDate}"/>"><br>
                                <input class="border p-2 w-100 my-2" type="text" name="grade" placeholder="grade" value="<c:out value="${user.grade}"/>"><br>
                                <input class="border p-2 w-100 my-2" type="text" name="group" placeholder="group" value="<c:out value="${user.group}"/>"><br>

                            </div>
                            <div class="course-cap-bottom d-flex justify-content-between">
                                <ul>
                                    <a href="${pageContext.request.contextPath}/user"><li>Edit</li></a>
                                </ul>
                                <a href="${pageContext.request.contextPath}/user"><span>Delete</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </c:forEach>
    </div>

</div>

<%@include file="library/footer.jsp" %>