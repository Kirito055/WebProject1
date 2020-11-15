<%@include file="library/header.jsp"%>
<section class="login py-5 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">

                <div class="border border">

                    <h3 class="bg-gray p-4">Add Club</h3>
                    <form onsubmit="addClub()" method="post">
                        <fieldset class="p-4">
                            <input id="clubName" type="text" name="clubName" placeholder="clubName" class="border p-3 w-100 my-2">
                            <input id="leader_id" type="text" name="leader_id" placeholder="leader_id" class="border p-3 w-100 my-2">
                            <input id="logo" type="url" name="logo" placeholder="logo" class="border p-3 w-100 my-2">
                            <input  id="desc" type="text" name="description" placeholder="description" class="border p-3 w-100 my-2">


                            <input type="submit" class="d-block py-1 px-3 bg-primary text-white border-0 rounded font-weight-bold mt-3" name="add" value="add">
                        </fieldset>
                    </form>
                </div>

            </div>
        </div>
    </div>
</section>
<script>
    $(document).ready(function()
    {

        function addClub(){
            $.ajax({
                url: 'http://localhost:8080/rest/clubs/add',
                type: 'post',
                dataType: 'json',
                contentType:'application/json;charset=utf-8',
                data: JSON.stringify(
                    {
                        name: $('#name').val(),
                        leader_id: $('#leader_id').val(),
                        logo: $('#logo').val(),
                        desc: $('#desc').val()
                    }
                ),
                success: function (data, textStatus) {
                    alert("Successfully added");
                },
                error: function (jqXhr, textStatus, errorThrown){
                    alert(textStatus);
                }
            });
        }
    });
</script>
<%@include file="library/footer.jsp"%>
