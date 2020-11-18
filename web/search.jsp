<%@include file="library/header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="search">
    <form action="search" method="get" class="d-flex justify-content-around">
        <%--<input type="text" name="name" placeholder="Search by name">--%>
        <input list="users" name="user" onchange="onInput()" id="user" placeholder="Choose User">
        <datalist id="users" >
            <option  value="google.com">Google</option>
        </datalist>

        <div>
            <label for="group">Group:</label>
            <input list="groups" name="group" id="group" placeholder="Choose Group"><br>
            <datalist id="groups">
            </datalist>
            <%--<select name="group" id="group">
                <option value="none">None</option>
                <option value="IT_1911">IT_1911</option>
                <option value="SE-1907">IT_1911</option>
                <option value="SE-1908">IT_1911</option>
                <!--
            тут можно добавить цикл форич
            для вывода всех груп
        -->
            </select>--%>
        </div>
        <div>

            <label for="grade">Grade:</label>
            <select  name="grade" id="grade">
                <option value="0" selected>None</option>
                <option value="1">1</option>
                <option  value="2">2</option>
                <option value="3">3</option>
            </select>
        </div>
        <div>

            <label for="faculty">Faculty:</label>
            <select name="faculty" id="faculty">
                <option value="none" selected>None</option>
            </select>
        </div>


        <button>Search</button>

    </form>
    <div class="search-result">
<c:set value="${requestScope.users}" var="users"/>
    <c:forEach items="${users}" var="user">
        <!--добавить сюда форич для вывода резулььтата-->

            <a class="res-card" href="${pageContext.request.contextPath}/user?action=about&id=${user.id}">
                <div class="image" style="background-image: url(${user.avatar});">
                </div>
                <div class="text">
                    <h4>${user.firstName}${" "}${user.lastName}</h4>
                    <p>Grade: ${user.grade}</p>
                    <span>Birth date: ${user.birthDate}</span>
                    <span></span>
                </div>
            </a>
    </c:forEach>
    </div>
</div>
<script>
    function onInput() {
        var val = document.getElementById("user").value;
        var opts = document.getElementById('users').childNodes;
        for (var i = 0; i < opts.length; i++) {
            if (opts[i].value === val) {
                window.location.replace('/newproject_final_war_exploded/'+opts[i].value);
                break;
            }
        }
    }
</script>
<script>
    $( document ).ready(function() {
        let userPoint ='http://localhost:8080/rest/users'
        let groupPoint ='http://localhost:8080/rest/groups'
        let facultyPoint ='http://localhost:8080/rest/groups/faculty'
        $.ajax({
            url: userPoint,
            contentType: "application/json",
            dataType: 'json',
            success: function(result){
                var l = result.length;
                for( i=0; i<l;i++) {
                    $('#users').append(
                        '<option  name="id" value="'+'user?action=about&id='+result[i].id+'">'+result[i].firstName+' '+result[i].lastName+'</option>'
                    );
                }
            }
        })
        $.ajax({
            url: groupPoint,
            contentType: "application/json",
            dataType: 'json',
            success: function(result){
                var l = result.length;
                for( i=0; i<l;i++) {
                    $('#groups').append(
                        '<option  value="'+result[i].name+'">'+result[i].name+' - '+result[i].faculty+'</option>'
                    );
                }
            }
        })
        $.ajax({
            url: facultyPoint,
            contentType: "application/json",
            dataType: 'json',
            success: function(result){
                var l = result.length;
                for( i=0; i<l;i++) {
                    $('#faculty').append(
                        '<option  value="'+result[i]+'">'+result[i]+'</option>'
                    );
                }
            }
        })
    });
</script>
<%@include file="library/footer.jsp" %>