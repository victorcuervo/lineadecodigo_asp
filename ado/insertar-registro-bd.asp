<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertar un registro en una BD con ADO</title>
<!-- #include file = "adovbs.inc" -->
</head>
<body>
<h1>Insertar un registro en una BD con ADO</h1>

<%
  ' 1º) Definimos el texto que queremos insertar
  texto_insertar = "este es el texto que se inserta"

  ' 2º) Creamos un objeto de conexión
  Set db = Server.CreateObject("ADODB.Connection")
  Dim DB_CONNECTIONSTRING
  DB_CONNECTIONSTRING = "Driver={Microsoft Access Driver (*.mdb)}
    ;Dbq=" & Server.MapPath("../db/prueba.mdb") & ";"
  db.open DB_CONNECTIONSTRING

  '3º) Comprobamos si existe el valos a insertar
  set rs_existe = Server.CreateObject("ADODB.Recordset")
  SQLStr = "SELECT valor FROM datos WHERE valor ='"
     + texto_insertar  + "'"
  rs_existe.open SQLStr, DB_CONNECTIONSTRING
     , adOpenStatic, adLockReadOnly, adCmdText

  '4º) Si el registro esta lleno es que existe
  'si esta vacio es que no existe, e insertamos
  if not (rs_existe.EOF) then
   Response.Write ("El valor a insertar ya existe")
  else
   set rs_insert = Server.CreateObject("ADODB.Recordset")
   SQLStr = "INSERT INTO datos VALUES ('" + texto_recibido + "')"
   rs_insert.open SQLStr, DB_CONNECTIONSTRING
      , adOpenStatic, adLockReadOnly,adCmdText
   Response.Write ("Insertado el valor " + texto_recibido)
  end if
%>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/insertar-un-registro-en-una-bd-con-ado/">http://lineadecodigo.com/asp/insertar-un-registro-en-una-bd-con-ado/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>