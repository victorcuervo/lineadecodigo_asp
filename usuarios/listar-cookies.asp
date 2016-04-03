<%
  'Mandamos una serie de cookies para probar el ejemplo
  Response.Cookies("musicaPreferida") = "pop"
  Response.Cookies("peliculaPreferida") = "Espartaco"
  Response.Cookies("musicaPreferida").expires = "12/12/2009"  

  Response.Cookies("enlace")("normal") = "blue"
  Response.Cookies("enlace")("visitado") = "red"
  Response.Cookies("enlace")("activo") = "red"
  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Cookies</title>
</head>
<body>
<h1>Listar cookies</h1<

<%
for each item in Request.Cookies
  if Request.Cookies(item).HasKeys then
    'La cookie es una colección
    Response.Write("<p>La cookie <b>" + item 
       + "</b> tiene un conjuno de parejas clave/atributo.")
    for each subitem in Request.Cookies(item)
      Response.Write "<br><strong>" + subitem + "</strong>:"
       + Request.Cookies(item)(subitem)
    next
    Response.Write("</p>")
  else
    'La cookie solamente tiene un valor
    Response.Write "<p><strong>" + item + "</strong>:"
      + Request.Cookies(item) + "</p>"
  end if
next
%>

<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/acceder-a-las-cookies-con-asp/">http://lineadecodigo.com/asp/acceder-a-las-cookies-con-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>

</body>
</html>