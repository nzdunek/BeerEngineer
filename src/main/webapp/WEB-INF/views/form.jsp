<%--
  Created by IntelliJ IDEA.
  User: noela
  Date: 25.09.2019
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
</head>
<body>


<form method="post" onsubmit="checkBoxValidation()">
    <div class="row">
        <div class="col-auto config-lvl-1">
            <input type="checkbox" data-toggle="collapse" data-target="#jasne"> JASNE </input>
             <div id="jasne" class="collapse div1 config-lvl-2 row">
                 <div class="col-auto">
                     <input type="checkbox" data-toggle="collapse" data-target="#j_klasyczne"> KLASYCZNE </label>
                     <div id="j_klasyczne" class="collapse div1 config-lvl-3 row">
                         <div class="col-auto">
                             <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_k_goryczkowe'> goryczkowe
                         </div>
                         <div class="col-auto">
                             <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_k_lekkie'> lekkie
                         </div>
                     </div>
                 </div>

                 <div class="col-auto">
                     <input type="checkbox" data-toggle="collapse" data-target="#j_gorzkie">
                     <div id="j_gorzkie" class="collapse div1 config-lvl-3 row">
                         <div class="col-auto">
                             <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_g_słodowe'> słodowe </input>-
                         </div>
                         <div class="col-auto">
                             <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_g_chmielowe'> chmielowe </input>-
                         </div>
                     </div>

                 </div>
                 <div class="col-auto">>
                     <input type="checkbox" data-toggle="collapse" data-target="#j_zboza">
                     <div id="j_zboza" class="collapse div1 config-lvl-3 row">
                         <div class="col-auto">
                             <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_orzezw'> orzeźwiające </input>-
                         </div>
                         <div class="col-auto">
                             <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_kremowe'> kremowe </input>-
                         </div>
                         <div class="col-auto">
                             <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_wymagające'> wymagające </input>-
                         </div>
                     </div>

                 </div>
                 <div class="col-auto">>
                     <input type="checkbox" data-toggle="collapse" data-target="#j_smaki">


                 </div>
             </div>



            <input type="checkbox" data-toggle="collapse" data-target="#ciemne"> CIEMNE </input>
            <div id="ciemne" class="collapse div1 config-lvl-2 row">
                <div class="col-auto">
                    <input type="checkbox" data-toggle="collapse" data-target="#c_palone">


                </div>
                <div class="col-auto">
                    <input type="checkbox" data-toggle="collapse" data-target="#c_słodkie">


                </div>
                <div class="col-auto">>
                    <input type="checkbox" data-toggle="collapse" data-target="#c_dodatki">


                </div>
            </div>
        </div>

    </div>
<input type="submit" value="submit">
</form>

<%--<%--%>
<%--    String pickedBeers[]= request.getParameterValues("pickedBeers");--%>
<%--    if(pickedBeers != null)--%>
<%--    {--%>
<%--%>--%>
<%--<h4>I likes fruit/s mostly</h4>--%>
<%--<ul>--%>
<%--    <%--%>
<%--        for(int i=0; i<pickedBeers.length; i++)--%>
<%--        {--%>
<%--    %>--%>
<%--    <li><%=pickedBeers[i]%></li>--%>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--</ul>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>


<%--    <div id='jasne' class='collapse div1 config-lvl-2'>--%>
<%--        <div class="col-auto">--%>
<%--            <input type='checkbox' data-toggle='collapse' data-target='#j_klasyczne'> klasyczne </input>--%>
<%--            <div id='j_klasyczne' class='collapse div1 config-lvl-3'>--%>
<%--                <div class="row">--%>
<%--                    <div class="col-auto">--%>
<%--                        <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_k_goryczkowe'> goryczkowe </input>--%>
<%--                    </div>--%>
<%--                    <div class="col-auto">--%>
<%--                        <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_k_lekkie'> lekkie </input>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="col-auto">--%>
<%--            <input type='checkbox' data-toggle='collapse' data-target='#j_gorzkie'> gorzkie </input>--%>
<%--            <div id='j_gorzkie' class='collapse div1 config-lvl-3'>--%>
<%--                <div class="col-auto">--%>
<%--                    <input type='checkbox' data-toggle='collapse' name="`pickedBeers`" value='j_g_slodowe'> słodowe </input>--%>
<%--                </div>--%>
<%--                <div class="col-auto">--%>
<%--                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_g_chmielowe'> chmielowe </input>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="col-auto">--%>
<%--            <input type='checkbox' data-toggle='collapse' data-target='#j_zboza'> inne zboża </input>--%>
<%--            <div id='j_zboza' class='collapse div1 config-lvl-3'>--%>
<%--                <div class="col-auto">--%>
<%--                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_orzezwiajace'> orzeźwiające </input>--%>
<%--                </div>--%>
<%--                <div class="col-auto">--%>
<%--                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_kremowe'> kremowe </input>--%>
<%--                </div>--%>
<%--                <div class="col-auto">--%>
<%--                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_z_wymagajace'> wymagające </input>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="col-auto">--%>
<%--            <input type='checkbox' data-toggle='collapse' data-target='#j_smaki'> inne smaki </input>--%>
<%--            <div id='j_smaki' class='collapse div1 config-lvl-3'>--%>
<%--                <div class="col-auto">--%>
<%--                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_s_kwasne'> kwaśne </input>--%>
<%--                </div>--%>
<%--                <div class="col-auto">--%>
<%--                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_s_slodkie'> słodkie </input>--%>
<%--                </div>--%>
<%--                <div class="col-auto">--%>
<%--                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='j_s_trunki"> inne trunki </input>--%>
<%--                                   </div>--%>
<%--                            </div>--%>
<%--               </div>--%>
<%--            </div>--%>

<%--&lt;%&ndash;                                                    CIEMNE                                                    &ndash;%&gt;--%>

<%--            <input type='checkbox' data-toggle='collapse' data-target='#ciemne'> ciemne </input>--%>

<%--                    <div id='ciemne' class='collapse div1 config-lvl-2'>--%>
<%--                        <div class="col-auto">--%>
<%--                            <input type='checkbox' data-toggle='collapse' data-target='#c_palone'> palone </input>--%>
<%--                            <div id='c_palone' class='collapse div1 config-lvl-3'>--%>
<%--                                <div class="col-auto">--%>
<%--                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_p_slabe'> słabe </input>--%>
<%--                                </div>--%>
<%--                                <div class="col-auto">--%>
<%--                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_p_mocne'> mocne </input>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="col-auto">--%>
<%--                            <input type='checkbox' data-toggle='collapse' data-target='#c_slodkie'> słodkie </input>--%>
<%--                            <div id='c_slodkie' class='collapse div1 config-lvl-3'>--%>
<%--                                <div class="col-auto">--%>
<%--                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_s_orzez'> orzeźwiające </input>--%>
<%--                                </div>--%>
<%--                                <div class="col-auto">--%>
<%--                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_s_delikatne'> delikatne </input>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="col-auto">--%>
<%--                            <input type='checkbox' data-toggle='collapse' data-target='#c_dodatki'> z dodatkami </input>--%>
<%--                            <div id='c_dodatki' class='collapse div1 config-lvl-3'>--%>
<%--                                <div class="col-auto">--%>
<%--                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_d_kwasne'> kwaśne owocowe </input>--%>
<%--                                </div>--%>
<%--                                <div class="col-auto">--%>
<%--                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_d_slodkie'> słodkie owocowe </input>--%>
<%--                                </div>--%>
<%--                                <div class="col-auto">--%>
<%--                                    <input type='checkbox' data-toggle='collapse' name="pickedBeers" value='c_d_dodatki'> słodkie dodatki </input>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <button class="btn btn-lg btn-primary btn-block" type="submit">Wybierz mi piwko!</button>--%>
<%--            </form>--%>

</body>
</html>
