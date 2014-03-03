<jsp:useBean id="verificar" scope="session" class="ForwardProperty.ForwardProperty"/>
<%-- 
    Document   : Autorizado
    Created on : 28-feb-2014, 10:17:09
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Autorizado</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
    <body bgcolor=#00FF00>
        <div align="center">
            <h1>Usuario Autorizado</h1>
            <hr/>
            <b>Usuario: </b><jsp:getProperty name="verificar" property="usuario"/>
            <br/>
            <b>Password: </b><jsp:getProperty name="verificar" property="password"/>
        </div>
    </body>
</html>

