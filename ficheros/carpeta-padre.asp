<%
dim ruta1, ruta2
 
ruta1 = "c:\windows\system\atl.dll"
ruta2 = "c:\windows\system\cache"
 
Set fso = Server.CreateObject("Scripting.FileSystemObject")
 
Response.Write ruta1 + " -carpeta padre---> " + fso.GetParentFolderName(ruta1) + "<br>"
Response.Write ruta2 + " -carpeta padre---> " + fso.GetParentFolderName(ruta2) + "<br>"
%>