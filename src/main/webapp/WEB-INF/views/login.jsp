<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Beer Engineer - logowanie </title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>

<%@ include file="fragments/header.jspf" %>

<div><br><br></div>

<div class="container">
    <div class="card">
        <div><br>
        <h4 align="center">Zaloguj się</h4>
        <br></div>
        <form method="post" modelAttribute="user">
            <c:if test="${not empty errorMessge}">
                <div align="center" style="color: #ff511d; font-weight: bold;">${errorMessge}</div>
            </c:if>
            <p>
                <label for="username" class="sr-only">Login</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="login">
            </p>
            <p>
                <label for="password" class="sr-only">Hasło</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="hasło">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </p>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Zaloguj mnie!</button>

        </form>

    </div>
</div>

<%@include file="fragments/footer.jspf" %>

</body>
</html>
