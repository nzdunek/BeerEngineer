<%--
  Created by IntelliJ IDEA.
  User: noela
  Date: 23.09.2019
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <form class="form-signin" method="post" action="/login">
        <h2 class="form-signin-heading">Please sign in</h2>
        <p>
            <label for="username" class="sr-only">login</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="login" required="" autofocus="">
        </p>
        <p>
            <label for="password" class="sr-only">Hasło</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="hasło" required="">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </p>
        <input name="_csrf" type="hidden" value="874886b5-a48e-4792-977c-3cc7ce7412ee">
        <button class="btn btn-lg btn-primary btn-block" type="submit">Zaloguj się</button>
    </form>
</div>
</body>
</html>
