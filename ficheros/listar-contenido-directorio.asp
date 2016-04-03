<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Contenido de un Directorio con ASP</title>
</head>
<body>

<h1>Listar Contenido de un Directorio con ASP</h1>

<%

Path= "C:\"

Set fso = createobject("Scripting.FileSystemObject")
Set directorio = fso.GetFolder(Path)


For Each fichero IN directorio.Files
   Set file = fso.GetFile(fichero)
   Response.Write (fichero.Name)&"<BR>"
Next

%>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/2009/02/03/listar-contenido-de-un-directorio-con-asp/">http://lineadecodigo.com/2009/02/03/listar-contenido-de-un-directorio-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>



</body>
</html>