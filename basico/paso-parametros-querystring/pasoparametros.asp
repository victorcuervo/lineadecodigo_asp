<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Paso de parametros en ASP</title>
</head>

<body>


<h1>Paso de parametros en ASP</h1>

<%

  p1 = Request.QueryString("p1")
  p2 = Request.QueryString("p2")

  Response.Write("El valor del parametro 1 es: " + p1 + "<br>")
  Response.Write("El valor del parametro 2 es: " + p2)

%>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/2009/01/14/paso-de-parametros-con-asp/"><http://lineadecodigo.com/2009/01/14/paso-de-parametros-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>


</body>
</html>