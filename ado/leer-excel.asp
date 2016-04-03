<%@ Language=VBScript %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leer de una hoja de datos Excel</title>
</head>
<body>

<h1>Leer de una hoja de datos Excel</h1>

<%

  'Las variables del archivo adovbs.inc
  Const adOpenStatic = 3
  Const adLockPessimistic = 2  

  'Nos conectamos a la hoja de datos del Excel
  Set db = Server.CreateObject("ADODB.Connection")
  Dim DB_CONNECTIONSTRING
  DB_CONNECTIONSTRING = "Driver={Microsoft Excel Driver (*.xls)};Dbq="
     & Server.MapPath("Libro1.xls") & ";"
  db.open DB_CONNECTIONSTRING

  'Recordset correspondiente a un rango de datos
  set rs = Server.CreateObject("ADODB.Recordset")
  SQLStr = "SELECT * FROM alumnos" 
  rs.open SQLStr,DB_CONNECTIONSTRING, adOpenStatic
   ,adLockPessimistic, adCmdText

  'Número de columnas de la tabla
  columnas = rs.Fields.Count
  Response.Write("<table width='20%' border='1'><tr>") 

  'Mostramos el tiulo de la tabla.
   For I = 0 To columnas - 1
    Response.Write "<td align='center'><b>"
      & rs.Fields.Item(I).Name & "</b></td>"
   Next
   Response.Write("</tr>")

   'Nos ponemos en el primer registro
   rs.MoveFirst

'Mostramos los datos
   Do While Not rs.EOF
      Response.Write("<tr>")
      For I = 0 To columnas - 1
         Response.Write ("<td>" & rs.Fields.Item(I).Value & "</td>")
      Next

      Response.Write "</tr>"
      rs.MoveNext
   Loop

   Response.Write("</table>")

   'Eliminamos el recordset
   rs.Close
   Set rs = Nothing
   'Eliminamos la bd
   db.Close
   Set db = Nothing

%>



<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/leer-de-un-excel-con-asp/">http://lineadecodigo.com/asp/leer-de-un-excel-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>


</body>
</html>

