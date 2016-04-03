<%@ Language=VBScript %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Directorios Especiales</title>
</head>
<body>

<h1>Directorios Especiales</h1>

<p>

<%

'Creamos el objeto FileSystemObject
Set fso = Server.CreateObject("Scripting.FileSystemObject")

Response.Write "Carpeta de Windows " 
   & fso.GetSpecialFolder (0) & "<br>"
Response.Write "Carpeta del Sistema " 
   & fso.GetSpecialFolder (1)  & "<br>"
Response.Write "Carpeta Temporal " 
   & fso.GetSpecialFolder (2)  & "<br>"

%>
 
</p>

<hr/>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/directorios-especiales-en-asp/">http://lineadecodigo.com/asp/directorios-especiales-en-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>
   