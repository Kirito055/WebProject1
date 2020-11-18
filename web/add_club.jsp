<%@include file="library/header.jsp" %>
<script>

    $(document).ready(function () {
        $('#btn').click(function () {
            var club = {};
            club.name = $('#name').val();
            club.leaderId = $('#leader_id').val();
            club.logo = $('#logo').val();
            club.description = $('#desc').val();
            var clubJSON = JSON.stringify(club);
            $.ajax({
                url: 'http://localhost:8080/rest/clubs/',
                method: "POST",
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

                <div class="border border p-4">

                    <h3 class="bg-gray p-4 text-center">Add Club</h3>

                    <input id="name" type="text" placeholder="Club Name" class="border p-3 w-100 my-2">
                    <input id="leader_id" type="text" placeholder="Leader" class="border p-3 w-100 my-2">
                    <input id="logo" type="url" placeholder="Logo" class="border p-3 w-100 my-2">
                    <input id="desc" type="text" placeholder="Club Description" class="border p-3 w-100 my-2">


                    <button type="button" id="btn"
                            class="d-block py-1 px-3 mx-auto bg-primary text-white border-0 rounded font-weight-bold mt-3">Add
                    </button>

                </div>

            </div>
        </div>
    </div>
</section>

<%@include file="library/footer.jsp" %>
