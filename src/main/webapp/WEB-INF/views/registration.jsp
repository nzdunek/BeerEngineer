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

<%@ include file="fragments/header.jspf" %>


<form:form method="post" modelAttribute="user">
<div><br><br></div>
<div class="container">
    <div class="card">
        <div><br></div>
        <h4 align="center">Zarejestruj się</h4>
        <div><br></div>


        <div class="row justify-content-around">
            <div class="col-md-4">
                <form:input path="first_name" placeholder="imię"/>
                <form:errors path="first_name" element="div" style="color: #ff511d; font-size:15px"/>
            </div>

            <div class="col-md-4">
                <form:input path="last_name" placeholder="nazwisko"/>
                <form:errors path="last_name" element="div" style="color: #ff511d; font-size:15px"/>
            </div>
        </div>
        <div><br></div>

        <div class="row justify-content-around">
            <div class="col-md-4">
                <form:input path="username" placeholder="login"/>
                <form:errors path="username" element="div" style="color: #ff511d; font-size:15px"/>
            </div>
            <div class="col-md-4">
                <form:input path="email" placeholder="e-mail"/>
                <form:errors path="email" element="div" style="color: #ff511d; font-size:15px"/>
            </div>
        </div>
        <div><br></div>

        <div class="row justify-content-around">
            <div>
                <form:password path="password" placeholder="hasło"/>
                <form:errors path="password" element="div" style="color: #ff511d; font-size:15px"/>
            </div>
        </div>
        <div><br></div>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Zostań Beer-Warriorem!</button>
        </form:form>

    </div>
</div>
<%@include file="fragments/footer.jspf" %>
</body>
</html>
