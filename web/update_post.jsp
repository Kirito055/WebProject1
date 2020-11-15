
<%@include file="library/header.jsp"%>

<section class="login py-5 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">
                <div class="border border">

                    <h3 class="bg-gray p-4">Update Post</h3>
                    <form action="${pageContext.request.contextPath}/NewsServlet?action=update&user=id" method="post">
                        <fieldset class="p-4">
                            <input type="text" name="name" value="news name" class="border p-3 w-100 my-2">
                            <input type="text" name="desc" value="news desc" class="border p-3 w-100 my-2">
                            <input type="date" name="date" value="news date" class="border p-3 w-100 my-2">
                            <input type="text" name="image" placeholder="image link" class="border p-3 w-100 my-2">

                            <select name="type" class="border p-3 w-100 my-2">
                                <option value="news">news</option>
                                <option value="post">post</option>
                                <option value="event">event</option>
                            </select>

                            <!--прописать сюда jstl c:if если user_id==leader_id -->
                            <div class="loggedin-forgot d-inline-flex my-3">
                                <input type="checkbox" id="club" name="club" class="mt-1">
                                <label for="club" class="px-2"> on club name</label>
                            </div>

                            <button type="submit"
                                    class="d-block py-3 px-4 bg-primary text-white border-0 rounded font-weight-bold">
                                Update Now
                            </button>
                        </fieldset>
                    </form>
                </div>

            </div>
        </div>
    </div>
</section>

<%@include file="library/footer.jsp"%>
