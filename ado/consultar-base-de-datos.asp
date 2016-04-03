<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar BD desde ASP</title>
</head>
<body>
<h1>Consultar BD desde ASP</h1>

 <ul>
 
 <%
  
  ' Nos conectamos
  Set db = Server.CreateObject("ADODB.Connection")
  Dim DB_CONNECTIONSTRING
  DB_CONNECTIONSTRING = "Driver={Microsoft Access Driver (*.mdb)};Dbq="
    & Server.MapPath("../db/prueba.mdb") & ";"
  db.open DB_CONNECTIONSTRING

  'Listamos los valores actuales de la base de datos
  set rs_listar = Server.CreateObject("ADODB.Recordset")
  SQLStr = "SELECT valor FROM datos"
  rs_listar.open SQLStr,DB_CONNECTIONSTRING,
    adOpenStatic,adLockReadOnly,adCmdText

  do while not rs_listar.eof
   Response.Write("<li>" + rs_listar("valor"))
   rs_listar.MoveNext 
  loop
   
  rs.close
  db.close 
   
 %>

 </ul>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/acceder-a-una-base-de-datos-con-asp/">http://lineadecodigo.com/asp/acceder-a-una-base-de-datos-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>