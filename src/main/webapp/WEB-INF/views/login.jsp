<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@ include file="fragments/header.jspf"%>

<div class="container">
    <form class="form-signin" method="post" action="/login">
        <h2 class="form-signin-heading">Please sign in</h2>
        <p>
            <label for="username" class="sr-only">Login</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="login">
        </p>
        <p>
            <label for="password" class="sr-only">Hasło</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="hasło">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </p>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Zaloguj się</button>

        <c:if test="${not empty errorMessge}"><div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessge}</div></c:if>
    </form>
</div>

<%@include file="fragments/footer.jspf"%>
</body>
</html>
