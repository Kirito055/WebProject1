<%@include file="library/header.jsp"%>
<script>
    $( document ).ready(function() {
        $('#upd').click(function () {
            var club = {};
            club.id = $('#id').val();
            club.name = $('#name').val();
            club.leaderId = $('#leader_id').val();
            club.logo = $('#logo').val();
            club.description = $('#desc').val();
            var clubJSON = JSON.stringify(club);
            $.ajax({
                url: 'http://localhost:8080/rest/clubs/',
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

                    <h3 class="bg-gray p-4">Updating Club</h3>
                    <c:set var="club" value="${requestScope.clubs}"/>


                    <input id="id" type="hidden" name="clubId" value="<c:out value="${club.id}"/>">

                    <input id="name" type="text" name="clubName" placeholder="clubName" class="border p-3 w-100 my-2" value="${club.name}">
                    <input id="leader_id" type="text" name="leader_id" placeholder="leader_id" class="border p-3 w-100 my-2" value="<c:out value="${club.leader_id}"/>">
                    <input id="logo" type="text" name="logo" placeholder="logo" class="border p-3 w-100 my-2" value="<c:out value="${club.logo}"/>">
                    <input id="desc" type="text" name="description" placeholder="description" class="border p-3 w-100 my-2" value="<c:out value="${club.description}"/>">


                    <button type="button" id="upd" class="d-block py-1 px-3 bg-primary text-white border-0 rounded font-weight-bold mt-3">Update</button>


                </div>

            </div>
        </div>
    </div>
</section>


<%@include file="library/footer.jsp"%>
