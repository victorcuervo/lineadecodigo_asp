<html>
 <head>
   <title>N&uacute;mero de visitas de un usuario</title>
 </head>

<body bgcolor="#FFFFFF" text="#000000">

<%

   visitas = Request.Cookies("visitas")
   Response.Write ("Has visitado nuestra web " & visitas)

   if visitas = 1 then
     Response.Write (" vez")
   else
     Response.Write(" veces")
   end if

%>

</body>
</html>