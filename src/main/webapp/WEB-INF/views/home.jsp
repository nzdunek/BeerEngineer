<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Beer Engineer</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">

</head>
<body>
<%@ include file="fragments/header.jspf" %>


<div></div>
<br><br>
<div class="container">

    <c:if test="${not empty success}">
        <div class="alert alert-warning" role="alert">
            ${success}
        </div>
    </c:if>
    <div class="card" style="width: 800px">
        <div><br><br></div>
        <h4 align="center">Na jakie piwko masz dziś ochotę?</h4>
        <h5 align="center">Wybierz po co najmniej jednej kategorii z każdego z trzech poziomów, a my dobierzemy Ci piwo
            lane na miarę!</h5>
        <form method="get" action="/beer/results">
            <div><br><br></div>
            <div class="row text-center">
                <div class="col-md-12 config-lvl-1">
                    <input type='checkbox' data-toggle='collapse' data-target='#jasne'> PIWA JASNE </input>

                    <div id='jasne' class='collapse div1 config-lvl-2'>
                        <div class="row text-center">
                            <div class="col-md-3">
                                <input type='checkbox' data-toggle='collapse' data-target='#j_klasyczne'>
                                klasyczne </input><br>
                                <div id='j_klasyczne' class='collapse div1 config-lvl-3'><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_k_goryczkowe'> goryczkowe </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_k_lekkie'> lekkie </input>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <input type='checkbox' data-toggle='collapse' data-target='#j_gorzkie'> gorzkie </input> <br>
                                <div id='j_gorzkie' class='collapse div1 config-lvl-3'>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_g_slodowe'> słodowe </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_g_chmielowe'> chmielowe </input>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <input type='checkbox' data-toggle='collapse' data-target='#j_zboza'> inne
                                zboża </input><br>
                                <div id='j_zboza' class='collapse div1 config-lvl-3'>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_z_orzezwiajace'> orzeźwiające </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_z_kremowe'> kremowe </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_z_wymagajace'> wymagające </input>

                                </div>
                            </div>

                            <div class="col-md-3">
                                <input type='checkbox' data-toggle='collapse' data-target='#j_smaki'> inne
                                smaki </input><br>
                                <div id='j_smaki' class='collapse div1 config-lvl-3'>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_s_kwasne'> kwaśne </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_s_slodkie'> słodkie </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='j_s_trunki'> inne trunki </input>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div><br><br></div>

            <%--                                                    CIEMNE                                                    --%>
            <div class="row text-center">
                <div class="col-md-12 config-lvl-1">
                    <input type='checkbox' data-toggle='collapse' data-target='#ciemne'> PIWA CIEMNE </input>

                    <div id='ciemne' class='collapse div1 config-lvl-2'>
                        <div class="row text-center">
                            <div class="col-md-4">
                                <input type='checkbox' data-toggle='collapse' data-target='#c_palone'>
                                palone </input><br>
                                <div id='c_palone' class='collapse div1 config-lvl-3'>
                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='c_p_slabe'>słabe </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='c_p_mocne'>mocne </input>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <input type='checkbox' data-toggle='collapse' data-target='#c_slodkie'>
                                słodkie </input><br>
                                <div id='c_slodkie' class='collapse div1 config-lvl-3'>
                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='c_s_orzez'> orzeźwiające </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='c_s_delikatne'> delikatne </input>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <input type='checkbox' data-toggle='collapse' data-target='#c_dodatki'> z
                                dodatkami </input><br>
                                <div id='c_dodatki' class='collapse div1 config-lvl-3'>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='c_d_slodkie'> owocowe słodkie </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='c_d_kwasne'> owocowe kwaśne </input><br>

                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers"
                                           value='c_d_dodatki'> słodkie dodatki </input>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div><br><br></div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Wybierz mi piwko!</button>
    </div>
    </form>

</div>
</div>

<%@include file="fragments/footer.jspf" %>

</body>
</html>
