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


<form:form method="post" modelAttribute="user">

    <div>
        <label>Login:
            <form:input path="login"/>
        </label>
        <form:errors path="login" element="div"/>
    </div>
    <div>
        <label>Imię:
            <form:input path="firstName"/>
        </label>
        <form:errors path="firstName" element="div"/>
    </div>

    <div>
        <label>Nazwisko:
            <form:input path="lastName"/>
        </label>
        <form:errors path="lastName" element="div"/>
    </div>

    <div>
        <label>e-mail:
            <form:input path="email"/>
        </label>
        <form:errors path="email" element="div"/>
    </div>

    <div>
        <label>Hasło:
            <form:input path="password"/>
        </label>
        <form:errors path="password" element="div"/>
    </div>

    <input type="submit" value="Save">
</form:form>

</body>
</html>
