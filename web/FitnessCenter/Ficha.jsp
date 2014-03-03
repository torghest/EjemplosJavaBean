<%-- 
    Document   : Ficha
    Created on : 28-feb-2014, 12:31:10
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="usuario" scope="session" class="FitnessCenter.Usuario"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta</title>
    </head>
    <body bgcolor="#DDDDFF">
        <table border="2" align="center" bgcolor="#8888FF">
            <tr>
                <td colspan="2" bgcolor="#000000">
                    <font color="#DDDDDD">
                    <h1>Ficha de Abonado</h1>
                    </font>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Abonado:</b>
                </td>
                <td>
                    <jsp:getProperty name="usuario" property="nombre"/>
                    <jsp:getProperty name="usuario" property="apellido1"/>
                    <jsp:getProperty name="usuario" property="apellido2"/>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Fecha de Nacimiento:</b>
                </td>
                <td>
                    <jsp:getProperty name="usuario" property="fx_nacimiento"/>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Importe Cuota(€):</b>
                </td>
                <td>
                    <jsp:getProperty name="usuario" property="cuota"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <a href="Principal.html" style="color: antiquewhite"><b>Volver</b></a>
                </td>
            </tr>
        </table>

    </body>
</html>
