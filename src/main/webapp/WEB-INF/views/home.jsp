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
    <div class="card">
        <form method="post" action="/beer/results">

    <div class="row">
            <div class="col-auto config-lvl-1">
            <input type='checkbox' data-toggle='collapse' data-target='#jasne'> jasne </input>

               <div id='jasne' class='collapse div1 config-lvl-2'>
                    <div class="col-auto">
                        <input type='checkbox' data-toggle='collapse' data-target='#j_klasyczne'> klasyczne </input>
                            <div id='j_klasyczne' class='collapse div1 config-lvl-3'>
                            <div class="row">
                                <div class="col-auto">
                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_k_goryczkowe'> goryczkowe </input>
                                </div>
                                <div class="col-auto">
                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_k_lekkie'> lekkie </input>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-auto">
                    <input type='checkbox' data-toggle='collapse' data-target='#j_gorzkie'> gorzkie </input>
                            <div id='j_gorzkie' class='collapse div1 config-lvl-3'>
                                <div class="col-auto">
                                    <input type='checkbox' data-toggle='collapse' name="`pickedBeers`" value='j_g_slodowe'> słodowe </input>
                                </div>
                                <div class="col-auto">
                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_g_chmielowe'> chmielowe </input>
                                </div>
                            </div>
                </div>
                  <div class="col-auto">
                        <input type='checkbox' data-toggle='collapse' data-target='#j_zboza'> inne zboża </input>
                              <div id='j_zboza' class='collapse div1 config-lvl-3'>
                                    <div class="col-auto">
                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_orzezwiajace'> orzeźwiające </input>
                                </div>
                                    <div class="col-auto">
                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_kremowe'> kremowe </input>
                                </div>
                                    <div class="col-auto">
                                     <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_wymagajace'> wymagające </input>
                                </div>
                              </div>
                  </div>

               <div class="col-auto">
                    <input type='checkbox' data-toggle='collapse' data-target='#j_smaki'> inne smaki </input>
                            <div id='j_smaki' class='collapse div1 config-lvl-3'>
                                   <div class="col-auto">
                                       <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_s_kwasne'> kwaśne </input>
                                     </div>
                                   <div class="col-auto">
                                        <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_s_slodkie'> słodkie </input>
                                    </div>
                                   <div class="col-auto">
                                       <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_s_trunki"> inne trunki </input>
                                   </div>
                            </div>
               </div>
            </div>

<%--                                                    CIEMNE                                                    --%>

            <input type='checkbox' data-toggle='collapse' data-target='#ciemne'> ciemne </input>

            <div id='ciemne' class='collapse div1 config-lvl-2'>
                <div class="col-auto">
                    <input type='checkbox' data-toggle='collapse' data-target='#c_palone'> palone </input>
                    <div id='c_palone' class='collapse div1 config-lvl-3'>
                        <div class="col-auto">
                            <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_p_slabe'> słabe </input>
                        </div>
                        <div class="col-auto">
                            <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_p_mocne'> mocne </input>
                        </div>
                    </div>
                </div>

                <div class="col-auto">
                    <input type='checkbox' data-toggle='collapse' data-target='#c_slodkie'> słodkie </input>
                    <div id='c_slodkie' class='collapse div1 config-lvl-3'>
                        <div class="col-auto">
                            <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_s_orzez'> orzeźwiające </input>
                        </div>
                        <div class="col-auto">
                            <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_s_delikatne'> delikatne </input>
                        </div>
                    </div>
                </div>

                <div class="col-auto">
                    <input type='checkbox' data-toggle='collapse' data-target='#c_dodatki'> z dodatkami </input>
                    <div id='c_dodatki' class='collapse div1 config-lvl-3'>
                        <div class="col-auto">
                            <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_d_kwasne'> kwaśne owocowe </input>
                        </div>
                        <div class="col-auto">
                            <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_d_slodkie'> słodkie owocowe </input>
                        </div>
                        <div class="col-auto">
                            <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_d_dodatki'> słodkie dodatki </input>
                        </div>
                    </div>
                </div>

            </div>
            </div>
                            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Wybierz mi piwko!</button>
        </form>


               </div>
    </div>
</div>

<%@include file="fragments/footer.jspf" %>

</body>
</html>
