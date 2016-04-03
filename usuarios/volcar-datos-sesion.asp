<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Datos de Sesion</title>
</head>

<body>

<%

Session("nombre") = "Victor Cuervo"
Session("web") = "aulambra.com"


dim nombres(4)
nombres(0)="Amaya"
nombres(1)="Nacho"
nombres(2)="Anabel"
nombres(3)="Juancho"
nombres(4)="Javier"

Session("nombres") = nombres

for each x in Session.Contents
  if IsArray(Session(x)) then
    For w = LBound(Session(x)) to UBound(Session(x))
      Response.Write(x + "[" + CStr(w) + "] = " 
        + Session(x)(w) + "<br>")
    Next 
  else
   Response.Write(x & "=" & Session.Contents(x) & "<br>")	   
  end if
next

%>


<br><br>
<hr>
Art&iacute;culo disponible en: <a href="http://lineadecodigo.com/asp/volcar-el-contenido-de-la-sesion-en-asp/">http://lineadecodigo.com/asp/volcar-el-contenido-de-la-sesion-en-asp/</a><br/>
<a href="http://lineadecodigo.com" title="Linea de Codigo">lineadecodigo.com</a>


</body>
</html>