<%@include file="library/header.jsp" %>

<section class="login py-5 border-top-1">
    <script>
        $( document ).ready(function() {
            $('#upd').click(function () {

                var user = {};
                user.id = $('#id').val();
                user.firstName = $('#firstname').val();
                user.lastName = $('#lastname').val();
                user.group_id= $('#groupid').val();
                user.email = $('#email').val();
                user.password = $('#password').val();
                user.avatar = $('#avatar').val();
                user.grade = $('#grade').val();
                var userJson = JSON.stringify(user);
                $.ajax({
                    url: 'http://localhost:8080/rest/users/',
                    method: "put",
                    contentType: "application/json",
                    data: userJson,
                    success: function (result) {
                        alert(result)
                    }
                })
            })
        });
    </script>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">

                <div class="border border p-4">

                    <h3 class="bg-gray p-4 text-center">Update profile</h3>

                    <label for="avatar">Image:</label>
                    <input id="avatar" type="text" value="${user.avatar}" class="border p-3 w-100 my-2">

                    <label for="password">Password:</label>
                    <input id="password" type="password" value="${user.password}" class="border p-3 w-100 my-2">
                    <input id="firstname" type="text" value="${user.firstName}"  hidden >
                    <input id="lastname" type="text" value="${user.lastName}" hidden >
                    <input id="email" type="text" value="${user.email}"   hidden>
                    <input id="id" type="text" value="${user.id}"  hidden >
                    <input id="grade" type="text" value="${user.grade}" hidden >
                    <input id="groupid" type="text" value="${user.group_id}" hidden >

                    <button type="button" id="upd"
                            class="d-block py-1 px-3 mx-auto bg-primary text-white border-0 rounded font-weight-bold mt-3">
                        Update
                    </button>

                </div>

            </div>
        </div>
    </div>
</section>

<%@include file="library/footer.jsp" %>
