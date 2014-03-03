<%-- 
    Document   : ForwardProperty
    Created on : 28-feb-2014, 9:36:12
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usu = request.getParameter("usuario");
    String pas = request.getParameter("password");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    if (usu == null){
%>
        <table border="2" align="center">
        <form name="form" action="ForwardProperty.jsp" method="post">
            <tr>
                <td>
                    <b>Usuario: </b>
                </td>
                <td>
                    <input type="text" name="usuario"/>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Password: </b>
                </td>
                <td>
                    <input type="text" name="password"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <input type="submit" value="Verificar"/>
                </td>
            </tr>
        </form>
        </table>
<%
    } else {
%>
        <jsp:useBean id="verificar" scope="session" class="ForwardProperty.ForwardProperty"/>
        <jsp:setProperty name="verificar" property="*"/>
<%
        if (verificar.isRegistrado()){
%>
        <jsp:forward page="Autorizado.jsp"/>
<%
        } else {
%>
        <jsp:forward page="NoAutorizado.jsp"/>
<%
        }
    }
%>
    </body>
</html>
