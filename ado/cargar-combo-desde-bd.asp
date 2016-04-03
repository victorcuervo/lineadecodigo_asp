<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cargar Combo desde una Base de Datos</title>
</head>
<body>

<h1>Cargar un combo desde una Base de Datos</h1>

<%
  ' Nos conectamos a la base de datos
  Set db = Server.CreateObject("ADODB.Connection")
  Dim DB_CONNECTIONSTRING
  DB_CONNECTIONSTRING = "DSN=informatica-juridica.com.example"
  db.open DB_CONNECTIONSTRING
   
  ' Creamos el RecordSet
  Set deportes = Server.CreateObject ("ADODB.RecordSet")
  SQLStr = "SELECT * FROM deportes"
  deportes.open SQLStr, DB_CONNECTIONSTRING,
     adOpenStatic, adLockReadOnly,adCmdText
%>

<SELECT NAME="deportes">

<%
  'Recorreremos el RecordSet
  do while not deportes.EOF
    Response.Write("<OPTION VALUE='" 
         + deportes("deporte") + "'>")
    Response.Write(deportes("deporte") + "</OPTION>")
    'Nos desplazamos por el RecordSet
    deportes.MoveNext
  loop
%>
</SELECT>


<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/2009/02/23/cargar-combos-desde-una-base-de-datos-con-ado/">http://lineadecodigo.com/2009/02/23/cargar-combos-desde-una-base-de-datos-con-ado/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>


</body>
</html>