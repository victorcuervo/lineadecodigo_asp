<%@ Language=VBScript %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Crear un fichero de tecto en ASP</title>
</head>
<body>

<h1>Crear un fichero de tecto en ASP</h1>

<%

  Set fso = Server.CreateObject("Scripting.FileSystemObject")

  Set TextStream = fso.CreateTextFile("c:\temp\victor.txt")

  TextStream.WriteLine("Línea con un salto de carro")
  TextStream.Write("Línea normal y corriente")

  TextStream.close

  Set fso = Nothing
  Set TextStream = Nothing

%>
 
</p>

<hr/>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/crear-un-fichero-de-texto-con-asp/">http://lineadecodigo.com/asp/crear-un-fichero-de-texto-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>
   