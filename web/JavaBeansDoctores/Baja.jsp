
<%
    if (procesar){
        try{
            int dn = Integer.parseInt(request.getParameter("doctor_no"));
            
            res = doctores.Baja(dn);
        } catch (NumberFormatException nfe){
            nfe.printStackTrace();
        }
    }
%>
<table align="center" border="2">
    <form name="form" action="index.jsp" method="post">
    <tr>
        <td colspan="2" bgcolor="<%=(procesar)?((res==1)?"#00FF00":"#FF0000"):"#CCCCCC"%>">
            <b>Dar de baja:<%=(procesar)?((res==1)?" (Baja Realizada)":" (Baja No Realizada)"):""%></b>
            <input hidden="yes" type="text" name="s" value="<%=s%>"/>
            <input hidden="yes" type="text" name="procesar" value="1"/>
        </td>
    </tr>
    <tr>
        <td>
            Doctor_no:
        </td>
        <td>
            <input type="text" name="doctor_no"/>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="right" bgcolor="#CCCCCC">
            <input type="submit" value="Enviar"/>
        </td>
    </tr>
    </form>
</table>