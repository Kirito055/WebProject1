<%@include file="library/header.jsp" %>

<section class="login py-5 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">

                <div class="border border p-4">

                    <h3 class="bg-gray p-4 text-center">Update profile</h3>
                    <label for="birthday">Birthday:</label>
                    <input id="birthday" type="date" value="Birthday" class="border p-3 w-100 my-2">

                    <label for="image">Image:</label>
                    <input id="image" type="text" value="image" class="border p-3 w-100 my-2">

                    <label for="password">Password:</label>
                    <input id="password" type="password" value="Password" class="border p-3 w-100 my-2">

                    <button type="button" id="btn"
                            class="d-block py-1 px-3 mx-auto bg-primary text-white border-0 rounded font-weight-bold mt-3">
                        Update
                    </button>

                </div>

            </div>
        </div>
    </div>
</section>

<%@include file="library/footer.jsp" %>
