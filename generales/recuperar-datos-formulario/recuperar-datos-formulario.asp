<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recuperar datos de un formulario</title>
</head>
<body>

<h1>Datos del formulario</h1>

<%
 texto = Request.Form("texto")
 paswd = Request.Form("password")
 Response.Write("El valor del texto es " & texto & "<br>")
 Response.Write("El valor del password es " & passwd & "<br>")
%>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/2009/03/08/recuperar-datos-de-un-formulario-con-asp/">http://lineadecodigo.com/2009/03/08/recuperar-datos-de-un-formulario-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>


</body>
</html>