<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Fechas y monedas multi-pais</title>
</head>

<body>

  <h1>Fechas y Monedas multi-pais</h1>
  <h2>Valores por defecto (<%=Session.LCID%>)</h2>
  
  <p> 
   <% 
    response.write("<p>")
    response.write("Fecha: " & date() & "<br />")
    response.write("Moneda: " & FormatCurrency(50000))
    response.write("</p>")
    Session.LCID=1034
   %>
  </p>

  <h2>Para Espa&ntilde;a (<%=Session.LCID%>)</h2>
  <p> 
   <%
    response.write("<p>")
    response.write("Fecha: " & date() & "<br />")
    response.write("Moneda: " & FormatCurrency(50000))
    response.write("</p>")
    Session.LCID=2057
   %>
   </p>

   <h2>Para Reino Unido (<%=Session.LCID%>)</h2>
   <p> 
   <%
    response.write("<p>")
    response.write("Fecha: " & date() & "<br />")
    response.write("Moneda: " & FormatCurrency(50000))
    response.write("</p>")
    Session.LCID=1033
   %>
   </p>

   <h2>Para EEUU (<%=Session.LCID%>)</h2>
   <p> 
   <%
    response.write("<p>")
    response.write("Fecha: " & date() & "<br />")
    response.write("Moneda: " & FormatCurrency(50000))
    response.write("</p>")
    Session.LCID=1036
   %>
   </p>

   <h2>Para Francia (<%=Session.LCID%>)</h2>
   <p> 
   <%
    response.write("<p>")
    response.write("Fecha: " & date() & "<br />")
    response.write("Moneda: " & FormatCurrency(50000))
    response.write("</p>")
   %>
   </p>
  
<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/fechas-y-monedas-multi-pais-con-asp/">http://lineadecodigo.com/asp/fechas-y-monedas-multi-pais-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>