
<%
    if (procesar){
        try{
            int hc = Integer.parseInt(request.getParameter("hospital_cod"));
            int dn = Integer.parseInt(request.getParameter("doctor_no"));
            String ap = request.getParameter("apellido");
            String es = request.getParameter("especialidad");
            int sa = Integer.parseInt(request.getParameter("salario"));

            res = doctores.Alta(hc, dn, ap, es, sa);
        } catch (NumberFormatException nfe){
            nfe.printStackTrace();
        }
    }
%>
<table align="center" border="2">
    <form name="form" action="index.jsp" method="post">
    <tr>
        <td colspan="2" bgcolor="<%=(procesar)?((res==1)?"#00FF00":"#FF0000"):"#CCCCCC"%>">
            <b>Nuevo Doctor:<%=(procesar)?((res==1)?" (Insertado)":" (No Insertado)"):""%></b>
            <input hidden="yes" type="text" name="s" value="<%=s%>"/>
            <input hidden="yes" type="text" name="procesar" value="1"/>
        </td>
    </tr>
    <tr>
        <td>
            Hospital_Cod:
        </td>
        <td>
            <input type="text" name="hospital_cod"/>
        </td>
    </tr>
    <tr>
        <td>
            Doctor_No:
        </td>
        <td>
            <input type="text" name="doctor_no"/>
        </td>
    </tr>
    <tr>
        <td>
            Apellido:
        </td>
        <td>
            <input type="text" name="apellido"/>
        </td>
    </tr>
    <tr>
        <td>
            Especialidad:
        </td>
        <td>
            <input type="text" name="especialidad"/>
        </td>
    </tr>
    <tr>
        <td>
            Salario:
        </td>
        <td>
            <input type="text" name="salario"/>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="right" bgcolor="#CCCCCC">
            <input type="submit" value="Enviar"/>
        </td>
    </tr>
    </form>
</table>