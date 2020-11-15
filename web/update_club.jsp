<%@include file="library/header.jsp"%>
<script>
    $( document ).ready(function() {
        $('#upd').click(function () {
            var post = {};
            post.id = $('#id').val();
            post.title = $('#title').val();
            post.image = $('#image').val();
            post.userId = $('#userId').val();
            post.clubId = $('#clubId').val();
            post.date = $('#date').val();
            post.description = $('#description').val();
            var clubJSON = JSON.stringify(club);
            $.ajax({
                url: 'http://localhost:8080/rest/posts/',
                method: "put",
                contentType: "application/json",
                data: clubJSON,
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

                <div class="border border">

                    <h3 class="bg-gray p-4">Updating Post</h3>
                    <c:set var="post" value="${requestScope.posts}"/>


                    <input id="id" type="hidden" name="postId" value="<c:out value="${post.id}"/>">

                    <input id="title" type="text" name="title" placeholder="title" class="border p-3 w-100 my-2" value="${post.title}">
                    <input id="description" type="text" name="description" placeholder="leader_id" class="border p-3 w-100 my-2" value="<c:out value="${post.description}"/>">
                    <input id="date" type="text" name="date" placeholder="date" class="border p-3 w-100 my-2" value="<c:out value="${post.date}"/>">
                    <input id="image" type="text" name="image" placeholder="image" class="border p-3 w-100 my-2" value="<c:out value="${post.image}"/>">

                    <input id="userId" type="text" name="userId" placeholder="userId" class="border p-3 w-100 my-2" value="<c:out value="${post.userId}"/>">

                    <input id="clubId" type="text" name="clubId" placeholder="clubId" class="border p-3 w-100 my-2" value="<c:out value="${post.clubId}"/>">

                    <input id="type" type="text" name="type" placeholder="type" class="border p-3 w-100 my-2" value="<c:out value="${post.type}"/>">


                    <button type="button" id="upd" class="d-block py-1 px-3 bg-primary text-white border-0 rounded font-weight-bold mt-3">Update</button>


                </div>

            </div>
        </div>
    </div>
</section>


<%@include file="library/footer.jsp"%>
