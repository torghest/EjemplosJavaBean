<%@page contentType="text/html"%>

<html>
	<head>
		<title>HORA DEL SISTEMA CON JAVABEAN</TITLE>
	</HEAD>

	<BODY BGCOLOR='#AAB42A' text='navy'>
		<jsp:useBean id="objeto" scope="session" class="MisBeans.Bean1"/>
		<center>
			<h1>HORA DEL SISTEMA  <%=objeto.Hora()%></H1>
		</center>
	</body>
</html>
