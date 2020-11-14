
<%@include file="library/header.jsp" %>

<div class="search">
    <form action="" method="GET" class="d-flex justify-content-around">

        <input type="text" name="name" placeholder="Search by name">

        <div>
            <label for="group">Group:</label>
            <select name="group" id="group">
                <option value="none">None</option>
                <option value="IT_1911">IT_1911</option>
                <option value="SE-1907">IT_1911</option>
                <option value="SE-1908">IT_1911</option>
                <!--
            тут можно добавить цикл форич
            для вывода всех груп
        -->
            </select>
        </div>


        <div>

            <label for="year">Year:</label>
            <select name="year" id="year">
                <option value="none">None</option>
                <option value="2019">2019</option>
                <option value="2020">2020</option>
                <option value="2021">2021</option>
            </select>
        </div>



        <button>Search</button>

    </form>
    <div class="search-result">

        <!--добавить сюда форич для вывода резулььтата-->
        <div class="res-card  ">
            <h4>Name</h4>
            <p>Group/Year</p>
        </div>

    </div>

</div>

<%@include file="library/footer.jsp" %>