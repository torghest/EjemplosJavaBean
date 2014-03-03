
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="doctores" scope="session" class="BeanDoctores.JavaBeanDoctores"/>
<!DOCTYPE html>
<%
    String s = request.getParameter("s");
    if (s == null){
        s = "4";
    }
    String s2 = "Consultar";
    if (s.equals("1")){
        s2 = "Alta";
    } else if (s.equals("2")){
        s2 = "Baja";
    } else if (s.equals("3")){
        s2 = "Modificar";
    }
    
    String p = request.getParameter("procesar");
    boolean procesar = false;
    if (p != null){
        procesar = p.equals("1");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=s2%></title>
    </head>
    <body>
        <table align="center" border="2">
            <tr>
                <td bgcolor="#CCCCCC" style="vertical-align: top">
                    <%@include file="menu.html" %>
                </td>
                <td>
<%
    int res = 0;
    switch (Integer.parseInt(s)){
        case 1:
%>
            <%@include file="Alta.jsp" %>
<%
            break;
        case 2:
%>
            <%@include file="Baja.jsp" %>
<%
            break;
        case 3:
%>
            <%@include file="Modificar.jsp" %>
<%
            break;
        default:
%>
            <%@include file="Consultar.jsp" %>
<%
            break;
    }
%>
                </td>
            </tr>
        </table>
    </body>
</html>