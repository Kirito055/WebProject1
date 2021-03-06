
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
            post.description = $('#desc').val();
            post.type = $('#type').val();
            var postJson = JSON.stringify(post);
            $.ajax({
                url: 'http://localhost:8080/rest/posts/',
                method: "put",
                contentType: "application/json",
                data: postJson,
                success: function (result) {
                    alert(result)
                }
            })
        })
    });
</script>
<section class="login py-5 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">

                <div class="border border p-4">
                    <c:set var="post" value="${requestScope.post}"/>
                    <h3 class="bg-gray p-4 text-center">Update Post</h3>

                    <input id="id" type="hidden" value="<c:out value="${post.id}"/>" placeholder="news name" class="border p-3 w-100 my-2">
                    <input id="title" type="text" value="<c:out value="${post.title}"/>"  placeholder="Title" class="border p-3 w-100 my-2">

                    <input id="desc" type="text" value="<c:out value="${post.description}"/>"
                           placeholder="Content" class="border p-3 w-100 my-2" height="200">
                    <input id="image" type="text" value="${post.image}" placeholder="Image Link" class="border p-3 w-100 my-2">

                    <input id="userId" type="text" value="<c:out value="${post.userId}"/>" hidden>
                    <input id="clubId" type="text" value="<c:out value="${post.clubId}"/>" hidden>

                    <select id="type" name="type" class="border px-3 w-100 my-2">
                        <option value="news">news</option>
                        <option value="event">event</option>
                    </select>

                    <!--прописать сюда jstl c:if если user_id==leader_id -->


                    <button id="upd" type="button"
                            class="d-block py-3 px-4 mx-auto bg-primary text-white border-0 rounded font-weight-bold">
                        Update
                    </button>

                </div>

            </div>
        </div>
    </div>
</section>




<%@include file="library/footer.jsp"%>