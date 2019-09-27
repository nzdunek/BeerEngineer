
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Beer-Warrior - panel</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>
<%@ include file="fragments/header.jspf"%>

<div class="container">
    <div><br>
        <h4 align="center">Cześć, <sec:authentication property="principal.user.first_name"></sec:authentication>!</h4><br>
        <h5 align="center">Eksploruj piwny świat!</h5>
        <br></div>
    <div class="container">
        <div class="col-md-12">

            <c:forEach items="${mylist}" var="beer">
                <div class="card mb-366" style="max-width: 540px;">
                    <div class="row no-gutters">

                        <div class="col-md-4">

                            <img src="/resources/images/beer${beer.id}.jpg" class="card-img" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">${beer.name}, ${beer.brand}</h5>
                                <p class="card-text">${beer.description}</p>
                                <p class="card-text"><small class="text-muted">${beer.official_type}</small></p>
                                    <a href="/beer/type/${beer.bigger_type}" class="header-btn btn-group btn-group-lg">
                                        <button type="button" class="btn btn-warning header-btn">Sprawdź podobne!</button>
                                    </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div><br></div>
            </c:forEach>
        </div>
    </div>
</div>

<%@include file="fragments/footer.jspf"%>
</body>
</html>
