<% 
 Response.ContentType = "text/xml"
 Response.Write("<?xml version='1.0' encoding='utf-8'?>")
 Response.Write("<datos>")
 Response.Write("<nombre edad='25'>Victor</nombre>")
 Response.Write("<lugarNacimiento>Avila</lugarNacimiento>")
 Response.Write("</datos>")
%>