<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<div class="container">
    <div class="card">
    <form method="post" action="/login">
        <h4 class="form-signin-heading">Logowanie</h4>
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
</div>

</body>
</html>
