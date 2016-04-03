<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Borrar registros de la Base de Datos</title>
</head>
<body>
<h1>Borrar registros de la Base de Datos</h1>

<%

Set db = Server.CreateObject("ADODB.Connection")
Dim DB_CONNECTIONSTRING
DB_CONNECTIONSTRING = "DSN=test"
db.open DB_CONNECTIONSTRING

Set sqlText = Server.CreateObject("ADODB.Command")
sqlText.CommandText = "DELETE FROM test2 WHERE valor='borrar'"
sqlText.ActiveConnection = db
sqlText.Execute

Set sqlText = Nothing
db.close
Set db = Nothing

%>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/2009/02/22/borrar-registros-de-una-base-de-datos-con-ado/">http://lineadecodigo.com/2009/02/22/borrar-registros-de-una-base-de-datos-con-ado/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>