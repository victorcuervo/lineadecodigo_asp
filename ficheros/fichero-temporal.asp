<%@ Language=VBScript %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fichero Temporal</title>
</head>
<body>

<h1>Fichero Temporal</h1>

<%

 Set fso = Server.CreateObject("Scripting.FileSystemObject")
 Response.Write("El fichero temporal a usar es: " + fso.GetTempName())

%>

 
</p>

<hr/>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/usando-ficheros-temporales-en-asp/">http://lineadecodigo.com/asp/usando-ficheros-temporales-en-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>
   