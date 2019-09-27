<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Twoja lista</title>

    <script>
        function recommend
        (id, name) {
            if (confirm("Czy chcesz dodać piwo " + name + " do swich rekomendacji?")) {
                window.location.href = "/app/dash/" + id;
            }
        }
    </script>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>

<%@ include file="fragments/header.jspf"%>

<div class="container">
        <div><br>
        <h4 align="center">Piwka dla Ciebie</h4>
        <br></div>
  <div class="row">
      <div class="col-md-12">

          <c:forEach items="${beers}" var="beer">
              <div class="card mb-3" style="max-width: 540px;">
                  <div class="row no-gutters">

                      <div class="col-md-4">
                          <img src="/resources/images/beer${beer.id}.jpg" class="card-img" alt="...">
                      </div>
                      <div class="col-md-8">
                          <div class="card-body">
                              <h5 class="card-title">${beer.name}, ${beer.brand}</h5>
                              <p class="card-text">${beer.description}</p>
                              <p class="card-text"><small class="text-muted">${beer.official_type}</small></p>
                              <p class="card-text"><small class="text-muted">To piwo jest polecane przez ${beer.recommending.size()} Beer-Warriorów</small></p>
                              <sec:authorize access="isAnonymous()">
                              <p class="card-text"><small class="text-muted">Zostań <a href="/register">Beer-Warriorem</a>, by dodać rekomendację </small></p>
                              </sec:authorize>
                              <sec:authorize access="isAuthenticated()">
                                  <a href="#" class="header-btn btn-group btn-group-lg" onclick="recommend(${beer.id}, '${beer.name}')">
                                      <button type="button" class="btn btn-warning header-btn">Rekomenduję!</button>
                                  </a>
                              </sec:authorize>
                          </div>
                      </div>
                  </div>
              </div>
          </c:forEach>
      </div>
  </div>
</div>
<%@include file="fragments/footer.jspf"%>
</body>
</html>
