<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Timeout de Sesion</title>
</head>

<body>
<h1>Timeout de Sesión</h1>
<%

  'Mostramos el TimeOut
  Response.Write("TimeOut actual: " 
    + CStr(Session.Timeout) + "<br>")

  'Modificamos el TimeOut a 10 minutos
  Session.Timeout = 10

  'Mostramos el TimeOut
  Response.Write("Nuevo TimeOut: " 
    + CStr(Session.Timeout) + "<br>")

%>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/gestionando-el-timeout-de-sesion-en-asp/">http://lineadecodigo.com/asp/gestionando-el-timeout-de-sesion-en-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>


</body>
</html>