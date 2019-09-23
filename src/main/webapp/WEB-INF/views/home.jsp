<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Beer Engineer</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-light header-bar sticky-top">

    <a href="/"><img src="/resources/images/logo.png" class="rounded float-left" alt="logo" height="100px"></a>
    <div class="btn-group btn-group-lg" role="group" aria-label="menu_buttons">
        <button type="button" class="btn btn-warning header-btn openbtn" onclick="openNav()">☰ Katalog</button>
        <button type="button" class="btn btn-warning header-btn">Logowanie</button>
        <button type="button" class="btn btn-warning header-btn">Rejestracja</button>
        <button type="button" class="btn btn-warning header-btn">O nas</button>
    </div>

</nav>
<div/>



<div id="mySidebar" class="sidebar">
    <br><br><br><br>
    <h4>Ciemne</h4>
    <a href="#">Bock</a>
    <a href="#">Porter</a>
    <a href="#">Stout</a>
    <a href="#">Inne</a>
    <h4>Jasne</h4>
    <a href="#">Ale</a>
    <a href="#">Lager</a>
    <a href="#">Pils</a>
    <a href="#">Inne zboża</a>
    <a href="#">Inne smaki</a>
</div>

<script>
    function openNav() {
        document.getElementById("mySidebar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
    }

    function closeNav() {
        document.getElementById("mySidebar").style.width = "0";
        document.getElementById("main").style.marginLeft= "0";
    }
</script>

<div class="container">
    <div class="card">
        <div class="card-body">

            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <h3>Column 1</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
                    </div>
                    <div class="col-sm-4">
                        <h3>Column 2</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
                    </div>
                    <div class="col-sm-4">
                        <h3>Column 3</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
