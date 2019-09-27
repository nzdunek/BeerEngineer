<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <head>
        <title>Beer Engineer - kontakt </title>
        <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
        <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
        <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>


<%@ include file="fragments/header.jspf" %>


<form:form method="post" modelAttribute="userMessage">
<div><br><br></div>
<div class="container">
    <div class="card">
        <div><br></div>
        <h4 align="center">Masz pytanie? Sugestię? Wątpliwość?</h4>
        <h4 align="center">Wyślij do nas wiadomość!</h4>
        <div><br></div>


        <div class="row justify-content-center">
            <div class="col-md-4">
                <form:input path="email" placeholder="e-mail"/>
                <form:errors path="email" element="div" style="color: #ff511d; font-size:15px"/>
            </div>
        </div>
        <div><br></div>

        <div class="row justify-content-center">
            <div>
                <form:textarea class="form-control" rows="4" cols="50" path="message" placeholder="wiadomość"/>
                <form:errors path="message" element="div" style="color: #ff511d; font-size:15px"/>
            </div>
        </div>
        <div><br></div>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Wyślij!</button>
        </form:form>

    </div>
</div>
<%@include file="fragments/footer.jspf" %>

</body>
</html>
