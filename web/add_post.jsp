<%@include file="library/header.jsp" %>

<script>

    $(document).ready(function () {
        $('#add').click(function () {
            var post = {};
            post.title = $('#title').val();
            post.description = $('#desc').val();
            post.image = $('#imglink').val();
            post.userId = $('#user_id').val();
            post.type = $('#type').val();
            var postJSON = JSON.stringify(post);
            $.ajax({
                url: 'http://localhost:8080/rest/posts/',
                method: "POST",
                contentType: "application/json",
                data: postJSON,
                success: function (result) {
                    alert(result)
                },
                error: function (error) {
                    alert("Something went wrong try again later")
                }
            })
        })
    });
</script>

<section class="login py-5 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">

                <div class="border border p-4 ">
                    <c:set var="user" value="${sessionScope.user}"/>
                    <h3 class="bg-gray text-center">Add Post</h3>

                    <input id="title" type="text" name="name" placeholder="news name" class="border p-3 w-100 my-2">
                    <input id="desc" type="text" name="desc" placeholder="news desc" class="border p-3 w-100 my-2">
                    <input id="imglink" type="text" name="image" placeholder="image link" class="border p-3 w-100 my-2">

                    <input id="user_id" type="text" value="<c:out value="${user.id}"/>">
                    <select id="type" name="type" class="border px-3 w-100 my-2">
                        <option value="news">news</option>
                        <option value="post">post</option>
                        <option value="event">event</option>
                    </select>

                    <!--прописать сюда jstl c:if если user_id==leader_id -->
                    <div class="loggedin-forgot d-inline-flex my-3">
                        <input type="checkbox" id="club" name="club" class="mt-1">
                        <label for="club" class="px-2"> on club name</label>
                    </div>

                    <button id="add" type="button"
                            class="d-block py-3 px-4 mx-auto bg-primary text-white border-0 rounded font-weight-bold">
                        Add Now
                    </button>

                </div>

            </div>
        </div>
    </div>
</section>


<%@include file="library/footer.jsp" %>