x<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Variables del Servidor</title>
</head>
<body>

<h1>Variables del servidor</h1>

<h2>Utilizando la variable ALL_HTTP</h2>

<%
	Response.Write ("<b>ALL_HTTP=</b> " &
	Request.ServerVariables("ALL_HTTP") & "<br>") 
%>


<h2>Todas las variables del Servidor</h2>

for each item in Request.ServerVariables
	Response.Write ("<b>" & item & "=</b> "
	 & Request.ServerVariables(Item) & "<br>")
next

%>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/2009/01/08/variables-del-servidor-con-asp/">http://lineadecodigo.com/2009/01/08/variables-del-servidor-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>


</body>
</html>