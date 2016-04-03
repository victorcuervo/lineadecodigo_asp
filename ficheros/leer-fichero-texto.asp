<%@ Language=VBScript %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lectura de un fichero de texto en ASP</title>
</head>
<body>

<p>Volcado del fichero <strong>texto.txt </strong>...</p>
<p>

<%

	Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
	Set objFile = objFSO.OpenTextFile(Server.MapPath("texto.txt"),1)
 
	If Not objFile.AtEndOfStream Then
		texto = CStr(objFile.ReadAll)
	End If
 
	Response.Write(texto)
	objFile.Close

%>
 
</p>

<hr/>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/leer-un-fichero-de-texto-en-asp/">http://lineadecodigo.com/asp/leer-un-fichero-de-texto-en-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>
   