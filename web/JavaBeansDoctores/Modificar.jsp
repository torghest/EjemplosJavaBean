
<%--
<jsp:useBean id="doctores" scope="session" class="BeanDoctores.JavaBeanDoctores"/>
--%>

<%
    if (procesar){
        try{
            int hc = Integer.parseInt(request.getParameter("hospital_cod"));
            int dn = Integer.parseInt(request.getParameter("doctor_no"));
            String ap = request.getParameter("apellido");
            String es = request.getParameter("especialidad");
            int sa = Integer.parseInt(request.getParameter("salario"));

            res = doctores.Actualizar(hc, dn, ap, es, sa);
        } catch (NumberFormatException nfe){
            nfe.printStackTrace();
        }
    }
    String dnsel = request.getParameter("doctor_no");
    if (dnsel == null || dnsel.equals("")){
        dnsel = "";
    } else {
        doctores.cargarDoctor(Integer.parseInt(dnsel));
    }
%>
<table align="center" border="2">
    <form name="form" action="index.jsp" method="post">
    <tr>
        <td colspan="2" bgcolor="<%=(procesar)?((res==1)?"#00FF00":"#FF0000"):"#CCCCCC"%>">
            <b>Modificar Doctor:<%=(procesar)?((res==1)?" (Actualizado)":" (No Actualizado)"):""%></b>
            <input hidden="yes" type="text" name="s" value="<%=s%>"/>
            <input hidden="yes" type="text" id="procesar" name="procesar" value="0"/>
        </td>
    </tr>
    <tr>
        <td>
            Doctor_No:
        </td>
        <td>
            <%=doctores.comboBox(doctores.Consultar(),"doctor_no","doctor_no","doctor_no",dnsel,"submit()") %>
        </td>
    </tr>
<%
    if (!dnsel.equals("")){
%>    
    <tr>
        <td>
            Hospital_no:
        </td>
        <td>
<!--
<%--
            <input type="text" name="hospital_cod" value="<jsp:getProperty name="doctores" property="hospital_cod"/>"/>
--%>
-->
            <%=doctores.comboBox(doctores.Hospitales(), "hospital_cod", "hospital_cod", "nombre", String.valueOf(doctores.getHospital_cod()), null) %>
        </td>
    </tr>
    <tr>
        <td>
            Apellido:
        </td>
        <td>
            <input type="text" name="apellido" value="<jsp:getProperty name="doctores" property="apellido"/>"/>
        </td>
    </tr>
    <tr>
        <td>
            Especialidad:
        </td>
        <td>
            <input type="text" name="especialidad" value="<jsp:getProperty name="doctores" property="especialidad"/>"/>
        </td>
    </tr>
    <tr>
        <td>
            Salario:
        </td>
        <td>
            <input type="text" name="salario" value="<jsp:getProperty name="doctores" property="salario"/>"/>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="right" bgcolor="#CCCCCC">
            <input type="submit" value="Enviar" onClick="procesar.value=1;submit();"/>
        </td>
    </tr>
<%
    }
%>
    </form>
</table>