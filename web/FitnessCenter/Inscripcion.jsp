<%-- 
    Document   : Inscripcion
    Created on : 28-feb-2014, 12:30:56
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String procesar = request.getParameter("procesar");
    if (procesar != null) {
%>
<jsp:useBean id="usuario" scope="session" class="FitnessCenter.Usuario"/>
<jsp:setProperty name="usuario" property="*"/>
<script lang="javascript"> window.alert("Usuario Inscrito"); </script>
<jsp:forward page="Principal.html"/>
<%
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscripcion</title>
    </head>
    <body bgcolor="#DDDDFF">
        <table border="2" align="center" bgcolor="#8888FF">
            <form name="form" action="Inscripcion.jsp" method="post">
            <tr>
                <td colspan="2" bgcolor="#000000" align="center">
                    <font color="#DDDDDD">
                    <h1>Inscripción de Abonado</h1>
                    </font>
                    <input type="hidden" id="procesar" name="procesar" value="0" />
                </td>
            </tr>
            <tr>
                <td><b>Nombre:</b></td>
                <td align="center">
                    <input type="text" name="nombre" value="" />
                </td>
            </tr>
            <tr>
                <td><b>Primer Apellido:</b></td>
                <td align="center">
                    <input type="text" name="apellido1" value="" />
                </td>
            </tr>
            <tr>
                <td><b>Segundo Apellido:</b></td>
                <td align="center">
                    <input type="text" name="apellido2" value="" />
                </td>
            </tr>
            <tr>
                <td><b>Domicilio:</b></td>
                <td align="center">
                    <input type="text" name="domicilio" value="" />
                </td>
            </tr>
            <tr>
                <td><b>Fecha de Nacimiento:</b></td>
                <td align="center">
                    <input type="text" name="fx_nacimiento" value="" />
                </td>
            </tr>
            <tr>
                <td><b>Telefono:</b></td>
                <td align="center">
                    <input type="text" name="telefono" value="" />
                </td>
            </tr>
            <tr>
                <td><b>DNI:</b></td>
                <td align="center">
                    <input type="text" name="dni" value="" />
                </td>
            </tr>
            <tr>
                <td><b>Tipo de Cuota:</b></td>
                <td align="center">
                    <select name="tipoCuota">
                        <option value="1">Cuota Familiar</option>
                        <option value="2">Cuota General</option>
                        <option value="3">Cuota Mañanas</option>
                        <option value="4">Cuota Tercera Edad</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Enviar Inscripcion" onclick="procesar.value='1';submit();"/> 
                </td>
                <td align="center">
                    <a href="Principal.html" style="color: antiquewhite"><b>Volver</b></a>
                </td>
            </tr>
            </form>
        </table>
    </body>
</html>
