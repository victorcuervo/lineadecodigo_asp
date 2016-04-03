<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Localización en ASP</title>
</head>

<body>
<h1>Localización en ASP</h1>

<%
select case Session.LCID
 case 1034
  Response.Write("España")
 case 11274
  Response.Write("Argentina")
 case 16394
  Response.Write("Bolivia")
 case 13322
  Response.Write("Chile")
 case 9226
  Response.Write("Colombia")
 case 5130
  Response.Write("Costa Rica")
 case 7178
  Response.Write("Republica Dominicana")
 case 12298
  Response.Write("Ecuador")
 case 4106
  Response.Write("Guatemala")
 case else
  Response.Write("Valor no contemplado")
end select
%>


<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/localizacion-en-asp/">http://lineadecodigo.com/asp/localizacion-en-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>


</body>
</html>