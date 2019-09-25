<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Beer Engineer - rejestracja </title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>

<%@ include file="fragments/header.jspf"%>


<form:form method="post" modelAttribute="user">

    <div class="container">
        <div class="card">

    <div>
        <label>Login:
            <form:input path="username"/>
        </label>
        <form:errors path="username" element="div"/>
    </div>
    <div>
        <label>Imię:
            <form:input path="first_name"/>
        </label>
        <form:errors path="first_name" element="div"/>
    </div>

    <div>
        <label>Nazwisko:
            <form:input path="last_name"/>
        </label>
        <form:errors path="last_name" element="div"/>
    </div>

    <div>
        <label>e-mail:
            <form:input path="email"/>
        </label>
        <form:errors path="email" element="div"/>
    </div>

    <div>
        <label>Hasło:
            <form:password path="password"/>
        </label>
        <form:errors path="password" element="div"/>
    </div>

    <input type="submit" value="Stwórz konto">
</form:form>

        </div>
    </div>
<%@include file="fragments/footer.jspf"%>
</body>
</html>
