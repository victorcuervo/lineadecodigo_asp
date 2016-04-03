
<%

 Dim sDirectorio
 sDirectorio = "c:\\temp\\victor"
 
 Set fso = Server.CreateObject("Scripting.FileSystemObject")
 
 if (fso.FolderExists(sDirectorio)) then
  fso.DeleteFolder sDirectorio,true
  Response.Write "Borrado el directorio" & sDirectorio    
 else
  Response.Write "No existe el directorio" & sDirectorio
 end if

%>